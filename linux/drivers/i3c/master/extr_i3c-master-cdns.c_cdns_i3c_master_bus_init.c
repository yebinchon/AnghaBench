
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct i3c_master_controller {int dummy; } ;
struct i3c_device_info {int bcr; int hdr_cap; } ;
struct TYPE_2__ {int i3c; unsigned long i2c; } ;
struct i3c_bus {int mode; TYPE_1__ scl_rate; } ;
struct cdns_i3c_master {scalar_t__ regs; int base; int sysclk; } ;


 scalar_t__ CTRL ;
 int CTRL_HALT_EN ;
 int CTRL_HJ_ACK ;
 int CTRL_HJ_DISEC ;
 int CTRL_MCS_EN ;
 int CTRL_MIXED_FAST_BUS_MODE ;
 int CTRL_MIXED_SLOW_BUS_MODE ;
 int CTRL_PURE_BUS_MODE ;
 scalar_t__ DEV_ID_RR0 (int ) ;
 int DEV_ID_RR0_IS_I3C ;
 int DIV_ROUND_UP (unsigned long,unsigned long) ;
 int EINVAL ;
 int ERANGE ;
 int I3C_BCR_HDR_CAP ;



 unsigned long I3C_BUS_TLOW_OD_MIN_NS ;
 int I3C_CCC_HDR_MODE (int ) ;
 int I3C_HDR_DDR ;
 scalar_t__ PRESCL_CTRL0 ;
 int PRESCL_CTRL0_I2C (int) ;
 int PRESCL_CTRL0_I3C (int) ;
 int PRESCL_CTRL0_MAX ;
 scalar_t__ PRESCL_CTRL1 ;
 int PRESCL_CTRL1_OD_LOW (int) ;
 int cdns_i3c_master_dev_rr_to_info (struct cdns_i3c_master*,int ,struct i3c_device_info*) ;
 int cdns_i3c_master_enable (struct cdns_i3c_master*) ;
 unsigned long clk_get_rate (int ) ;
 struct i3c_bus* i3c_master_get_bus (struct i3c_master_controller*) ;
 int i3c_master_get_free_addr (struct i3c_master_controller*,int ) ;
 int i3c_master_set_info (int *,struct i3c_device_info*) ;
 int prepare_rr0_dev_address (int) ;
 struct cdns_i3c_master* to_cdns_i3c_master (struct i3c_master_controller*) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static int cdns_i3c_master_bus_init(struct i3c_master_controller *m)
{
 struct cdns_i3c_master *master = to_cdns_i3c_master(m);
 unsigned long pres_step, sysclk_rate, max_i2cfreq;
 struct i3c_bus *bus = i3c_master_get_bus(m);
 u32 ctrl, prescl0, prescl1, pres, low;
 struct i3c_device_info info = { };
 int ret, ncycles;

 switch (bus->mode) {
 case 128:
  ctrl = CTRL_PURE_BUS_MODE;
  break;

 case 130:
  ctrl = CTRL_MIXED_FAST_BUS_MODE;
  break;

 case 129:
  ctrl = CTRL_MIXED_SLOW_BUS_MODE;
  break;

 default:
  return -EINVAL;
 }

 sysclk_rate = clk_get_rate(master->sysclk);
 if (!sysclk_rate)
  return -EINVAL;

 pres = DIV_ROUND_UP(sysclk_rate, (bus->scl_rate.i3c * 4)) - 1;
 if (pres > PRESCL_CTRL0_MAX)
  return -ERANGE;

 bus->scl_rate.i3c = sysclk_rate / ((pres + 1) * 4);

 prescl0 = PRESCL_CTRL0_I3C(pres);

 low = ((I3C_BUS_TLOW_OD_MIN_NS * sysclk_rate) / (pres + 1)) - 2;
 prescl1 = PRESCL_CTRL1_OD_LOW(low);

 max_i2cfreq = bus->scl_rate.i2c;

 pres = (sysclk_rate / (max_i2cfreq * 5)) - 1;
 if (pres > PRESCL_CTRL0_MAX)
  return -ERANGE;

 bus->scl_rate.i2c = sysclk_rate / ((pres + 1) * 5);

 prescl0 |= PRESCL_CTRL0_I2C(pres);
 writel(prescl0, master->regs + PRESCL_CTRL0);


 pres_step = 1000000000 / (bus->scl_rate.i3c * 4);
 ncycles = DIV_ROUND_UP(I3C_BUS_TLOW_OD_MIN_NS, pres_step) - 2;
 if (ncycles < 0)
  ncycles = 0;
 prescl1 = PRESCL_CTRL1_OD_LOW(ncycles);
 writel(prescl1, master->regs + PRESCL_CTRL1);


 ret = i3c_master_get_free_addr(m, 0);
 if (ret < 0)
  return ret;

 writel(prepare_rr0_dev_address(ret) | DEV_ID_RR0_IS_I3C,
        master->regs + DEV_ID_RR0(0));

 cdns_i3c_master_dev_rr_to_info(master, 0, &info);
 if (info.bcr & I3C_BCR_HDR_CAP)
  info.hdr_cap = I3C_CCC_HDR_MODE(I3C_HDR_DDR);

 ret = i3c_master_set_info(&master->base, &info);
 if (ret)
  return ret;







 ctrl |= CTRL_HJ_ACK | CTRL_HJ_DISEC | CTRL_HALT_EN | CTRL_MCS_EN;
 writel(ctrl, master->regs + CTRL);

 cdns_i3c_master_enable(master);

 return 0;
}
