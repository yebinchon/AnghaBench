
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drxd_state {int hi_cfg_timing_div; int hi_cfg_bridge_delay; int hi_cfg_wakeup_key; int hi_cfg_ctrl; int mutex; } ;


 int HI_Command (struct drxd_state*,int,int *) ;
 int HI_RA_RAM_SRV_CFG_ACT_PWD_EXE ;
 int HI_RA_RAM_SRV_CFG_ACT__A ;
 int HI_RA_RAM_SRV_CFG_BDL__A ;
 int HI_RA_RAM_SRV_CFG_DIV__A ;
 int HI_RA_RAM_SRV_CFG_KEY__A ;
 int HI_RA_RAM_SRV_CFG_WUP__A ;
 int HI_RA_RAM_SRV_CMD_CONFIG ;
 int HI_RA_RAM_SRV_CMD__A ;
 int HI_RA_RAM_SRV_RST_KEY_ACT ;
 int Write16 (struct drxd_state*,int ,int,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int HI_CfgCommand(struct drxd_state *state)
{
 int status = 0;

 mutex_lock(&state->mutex);
 Write16(state, HI_RA_RAM_SRV_CFG_KEY__A, HI_RA_RAM_SRV_RST_KEY_ACT, 0);
 Write16(state, HI_RA_RAM_SRV_CFG_DIV__A, state->hi_cfg_timing_div, 0);
 Write16(state, HI_RA_RAM_SRV_CFG_BDL__A, state->hi_cfg_bridge_delay, 0);
 Write16(state, HI_RA_RAM_SRV_CFG_WUP__A, state->hi_cfg_wakeup_key, 0);
 Write16(state, HI_RA_RAM_SRV_CFG_ACT__A, state->hi_cfg_ctrl, 0);

 Write16(state, HI_RA_RAM_SRV_CFG_KEY__A, HI_RA_RAM_SRV_RST_KEY_ACT, 0);

 if ((state->hi_cfg_ctrl & HI_RA_RAM_SRV_CFG_ACT_PWD_EXE) ==
     HI_RA_RAM_SRV_CFG_ACT_PWD_EXE)
  status = Write16(state, HI_RA_RAM_SRV_CMD__A,
     HI_RA_RAM_SRV_CMD_CONFIG, 0);
 else
  status = HI_Command(state, HI_RA_RAM_SRV_CMD_CONFIG, ((void*)0));
 mutex_unlock(&state->mutex);
 return status;
}
