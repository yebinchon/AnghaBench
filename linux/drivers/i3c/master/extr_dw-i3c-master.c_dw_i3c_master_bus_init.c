
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct i3c_master_controller {int dummy; } ;
struct i3c_device_info {int dyn_addr; } ;
struct i3c_bus {int mode; } ;
struct dw_i3c_master {scalar_t__ regs; int base; } ;
typedef int info ;


 scalar_t__ DATA_BUFFER_THLD_CTRL ;
 int DATA_BUFFER_THLD_CTRL_RX_BUF ;
 scalar_t__ DEVICE_ADDR ;
 scalar_t__ DEVICE_CTRL ;
 int DEV_ADDR_DYNAMIC (int) ;
 int DEV_ADDR_DYNAMIC_ADDR_VALID ;
 int DEV_CTRL_HOT_JOIN_NACK ;
 int EINVAL ;



 scalar_t__ IBI_MR_REQ_REJECT ;
 int IBI_REQ_REJECT_ALL ;
 scalar_t__ IBI_SIR_REQ_REJECT ;
 int INTR_ALL ;
 int INTR_MASTER_MASK ;
 scalar_t__ INTR_SIGNAL_EN ;
 scalar_t__ INTR_STATUS ;
 scalar_t__ INTR_STATUS_EN ;
 scalar_t__ QUEUE_THLD_CTRL ;
 int QUEUE_THLD_CTRL_RESP_BUF_MASK ;
 int dw_i2c_clk_cfg (struct dw_i3c_master*) ;
 int dw_i3c_clk_cfg (struct dw_i3c_master*) ;
 int dw_i3c_master_enable (struct dw_i3c_master*) ;
 struct i3c_bus* i3c_master_get_bus (struct i3c_master_controller*) ;
 int i3c_master_get_free_addr (struct i3c_master_controller*,int ) ;
 int i3c_master_set_info (int *,struct i3c_device_info*) ;
 int memset (struct i3c_device_info*,int ,int) ;
 int readl (scalar_t__) ;
 struct dw_i3c_master* to_dw_i3c_master (struct i3c_master_controller*) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static int dw_i3c_master_bus_init(struct i3c_master_controller *m)
{
 struct dw_i3c_master *master = to_dw_i3c_master(m);
 struct i3c_bus *bus = i3c_master_get_bus(m);
 struct i3c_device_info info = { };
 u32 thld_ctrl;
 int ret;

 switch (bus->mode) {
 case 130:
 case 129:
  ret = dw_i2c_clk_cfg(master);
  if (ret)
   return ret;

 case 128:
  ret = dw_i3c_clk_cfg(master);
  if (ret)
   return ret;
  break;
 default:
  return -EINVAL;
 }

 thld_ctrl = readl(master->regs + QUEUE_THLD_CTRL);
 thld_ctrl &= ~QUEUE_THLD_CTRL_RESP_BUF_MASK;
 writel(thld_ctrl, master->regs + QUEUE_THLD_CTRL);

 thld_ctrl = readl(master->regs + DATA_BUFFER_THLD_CTRL);
 thld_ctrl &= ~DATA_BUFFER_THLD_CTRL_RX_BUF;
 writel(thld_ctrl, master->regs + DATA_BUFFER_THLD_CTRL);

 writel(INTR_ALL, master->regs + INTR_STATUS);
 writel(INTR_MASTER_MASK, master->regs + INTR_STATUS_EN);
 writel(INTR_MASTER_MASK, master->regs + INTR_SIGNAL_EN);

 ret = i3c_master_get_free_addr(m, 0);
 if (ret < 0)
  return ret;

 writel(DEV_ADDR_DYNAMIC_ADDR_VALID | DEV_ADDR_DYNAMIC(ret),
        master->regs + DEVICE_ADDR);

 memset(&info, 0, sizeof(info));
 info.dyn_addr = ret;

 ret = i3c_master_set_info(&master->base, &info);
 if (ret)
  return ret;

 writel(IBI_REQ_REJECT_ALL, master->regs + IBI_SIR_REQ_REJECT);
 writel(IBI_REQ_REJECT_ALL, master->regs + IBI_MR_REQ_REJECT);


 writel(readl(master->regs + DEVICE_CTRL) | DEV_CTRL_HOT_JOIN_NACK,
        master->regs + DEVICE_CTRL);

 dw_i3c_master_enable(master);

 return 0;
}
