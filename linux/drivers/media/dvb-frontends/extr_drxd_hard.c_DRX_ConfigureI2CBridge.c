
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drxd_state {int hi_cfg_ctrl; } ;


 int HI_CfgCommand (struct drxd_state*) ;
 int HI_RA_RAM_SRV_CFG_ACT_BRD_OFF ;
 int HI_RA_RAM_SRV_CFG_ACT_BRD_ON ;
 int HI_RA_RAM_SRV_CFG_ACT_BRD__M ;

__attribute__((used)) static int DRX_ConfigureI2CBridge(struct drxd_state *state, int bEnableBridge)
{
 state->hi_cfg_ctrl &= (~HI_RA_RAM_SRV_CFG_ACT_BRD__M);
 if (bEnableBridge)
  state->hi_cfg_ctrl |= HI_RA_RAM_SRV_CFG_ACT_BRD_ON;
 else
  state->hi_cfg_ctrl |= HI_RA_RAM_SRV_CFG_ACT_BRD_OFF;

 return HI_CfgCommand(state);
}
