
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drxd_state {int hi_cfg_ctrl; int chip_adr; int hi_cfg_wakeup_key; } ;


 int HI_CfgCommand (struct drxd_state*) ;
 int HI_RA_RAM_SRV_CFG_ACT_SLV0_ON ;

__attribute__((used)) static int InitHI(struct drxd_state *state)
{
 state->hi_cfg_wakeup_key = (state->chip_adr);

 state->hi_cfg_ctrl = HI_RA_RAM_SRV_CFG_ACT_SLV0_ON;
 return HI_CfgCommand(state);
}
