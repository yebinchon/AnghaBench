
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct i2c_device_addr {int dummy; } ;
struct drxj_data {int hi_cfg_timing_div; int hi_cfg_bridge_delay; int hi_cfg_transmit; int hi_cfg_ctrl; int hi_cfg_wake_up_key; } ;
struct drx_demod_instance {struct i2c_device_addr* my_i2c_dev_addr; scalar_t__ my_common_attr; scalar_t__ my_ext_attr; } ;
struct drx_common_attr {int sys_clock_freq; int osc_clock_freq; } ;


 int DRXJ_WAKE_UP_KEY ;
 int HI_I2C_BRIDGE_DELAY ;
 int HI_I2C_DELAY ;
 int SIO_HI_RA_RAM_PAR_2_CFG_DIV__M ;
 int SIO_HI_RA_RAM_PAR_3_CFG_DBL_SCL__B ;
 int SIO_HI_RA_RAM_PAR_3_CFG_DBL_SDA__M ;
 int SIO_HI_RA_RAM_PAR_5_CFG_SLV0_SLAVE ;
 int SIO_HI_RA_RAM_PAR_6__PRE ;
 int drxj_dap_write_reg16 (struct i2c_device_addr*,int,int,int ) ;
 int hi_cfg_command (struct drx_demod_instance const*) ;
 int pr_err (char*,int) ;

__attribute__((used)) static int init_hi(const struct drx_demod_instance *demod)
{
 struct drxj_data *ext_attr = (struct drxj_data *) (((void*)0));
 struct drx_common_attr *common_attr = (struct drx_common_attr *) (((void*)0));
 struct i2c_device_addr *dev_addr = (struct i2c_device_addr *)(((void*)0));
 int rc;

 ext_attr = (struct drxj_data *) demod->my_ext_attr;
 common_attr = (struct drx_common_attr *) demod->my_common_attr;
 dev_addr = demod->my_i2c_dev_addr;


 rc = drxj_dap_write_reg16(dev_addr, 0x4301D7, 0x801, 0);
 if (rc != 0) {
  pr_err("error %d\n", rc);
  goto rw_error;
 }



 ext_attr->hi_cfg_timing_div =
     (u16) ((common_attr->sys_clock_freq / 1000) * HI_I2C_DELAY) / 1000;

 if ((ext_attr->hi_cfg_timing_div) > SIO_HI_RA_RAM_PAR_2_CFG_DIV__M)
  ext_attr->hi_cfg_timing_div = SIO_HI_RA_RAM_PAR_2_CFG_DIV__M;



 ext_attr->hi_cfg_bridge_delay =
     (u16) ((common_attr->osc_clock_freq / 1000) * HI_I2C_BRIDGE_DELAY) /
     1000;

 if ((ext_attr->hi_cfg_bridge_delay) > SIO_HI_RA_RAM_PAR_3_CFG_DBL_SDA__M)
  ext_attr->hi_cfg_bridge_delay = SIO_HI_RA_RAM_PAR_3_CFG_DBL_SDA__M;

 ext_attr->hi_cfg_bridge_delay += ((ext_attr->hi_cfg_bridge_delay) <<
          SIO_HI_RA_RAM_PAR_3_CFG_DBL_SCL__B);



 ext_attr->hi_cfg_wake_up_key = DRXJ_WAKE_UP_KEY;

 ext_attr->hi_cfg_ctrl = (SIO_HI_RA_RAM_PAR_5_CFG_SLV0_SLAVE);

 ext_attr->hi_cfg_transmit = SIO_HI_RA_RAM_PAR_6__PRE;

 rc = hi_cfg_command(demod);
 if (rc != 0) {
  pr_err("error %d\n", rc);
  goto rw_error;
 }

 return 0;

rw_error:
 return rc;
}
