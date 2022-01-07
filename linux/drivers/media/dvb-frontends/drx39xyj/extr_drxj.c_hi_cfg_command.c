
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct drxj_hi_cmd {int param6; int param5; int param4; int param3; int param2; int param1; int cmd; } ;
struct drxj_data {int hi_cfg_ctrl; int hi_cfg_transmit; int hi_cfg_wake_up_key; int hi_cfg_bridge_delay; int hi_cfg_timing_div; } ;
struct drx_demod_instance {int my_i2c_dev_addr; scalar_t__ my_ext_attr; } ;


 int SIO_HI_RA_RAM_CMD_CONFIG ;
 int SIO_HI_RA_RAM_PAR_1_PAR1_SEC_KEY ;
 int SIO_HI_RA_RAM_PAR_5_CFG_SLEEP_ZZZ ;
 int hi_command (int ,struct drxj_hi_cmd*,int *) ;
 int pr_err (char*,int) ;

__attribute__((used)) static int hi_cfg_command(const struct drx_demod_instance *demod)
{
 struct drxj_data *ext_attr = (struct drxj_data *) (((void*)0));
 struct drxj_hi_cmd hi_cmd;
 u16 result = 0;
 int rc;

 ext_attr = (struct drxj_data *) demod->my_ext_attr;

 hi_cmd.cmd = SIO_HI_RA_RAM_CMD_CONFIG;
 hi_cmd.param1 = SIO_HI_RA_RAM_PAR_1_PAR1_SEC_KEY;
 hi_cmd.param2 = ext_attr->hi_cfg_timing_div;
 hi_cmd.param3 = ext_attr->hi_cfg_bridge_delay;
 hi_cmd.param4 = ext_attr->hi_cfg_wake_up_key;
 hi_cmd.param5 = ext_attr->hi_cfg_ctrl;
 hi_cmd.param6 = ext_attr->hi_cfg_transmit;

 rc = hi_command(demod->my_i2c_dev_addr, &hi_cmd, &result);
 if (rc != 0) {
  pr_err("error %d\n", rc);
  goto rw_error;
 }


 ext_attr->hi_cfg_ctrl &= (~(SIO_HI_RA_RAM_PAR_5_CFG_SLEEP_ZZZ));

 return 0;

rw_error:
 return rc;
}
