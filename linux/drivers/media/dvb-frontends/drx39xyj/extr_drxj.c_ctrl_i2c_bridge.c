
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct drxj_hi_cmd {int param2; int param1; int cmd; } ;
struct drx_demod_instance {int my_i2c_dev_addr; } ;


 int EINVAL ;
 int SIO_HI_RA_RAM_CMD_BRDCTRL ;
 int SIO_HI_RA_RAM_PAR_1_PAR1_SEC_KEY ;
 int SIO_HI_RA_RAM_PAR_2_BRD_CFG_CLOSED ;
 int SIO_HI_RA_RAM_PAR_2_BRD_CFG_OPEN ;
 int hi_command (int ,struct drxj_hi_cmd*,int *) ;

__attribute__((used)) static int
ctrl_i2c_bridge(struct drx_demod_instance *demod, bool *bridge_closed)
{
 struct drxj_hi_cmd hi_cmd;
 u16 result = 0;


 if (bridge_closed == ((void*)0))
  return -EINVAL;

 hi_cmd.cmd = SIO_HI_RA_RAM_CMD_BRDCTRL;
 hi_cmd.param1 = SIO_HI_RA_RAM_PAR_1_PAR1_SEC_KEY;
 if (*bridge_closed)
  hi_cmd.param2 = SIO_HI_RA_RAM_PAR_2_BRD_CFG_CLOSED;
 else
  hi_cmd.param2 = SIO_HI_RA_RAM_PAR_2_BRD_CFG_OPEN;

 return hi_command(demod->my_i2c_dev_addr, &hi_cmd, &result);
}
