
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drxd_state {int app_env_default; scalar_t__ operation_mode; int app_env_diversity; scalar_t__ type_A; int m_InitCE; } ;
typedef enum app_env { ____Placeholder_app_env } app_env ;


 int APPENV_MOBILE ;
 int APPENV_PORTABLE ;
 int APPENV_STATIC ;
 int B_CE_REG_COMM_EXEC__A ;
 int CE_REG_TAPSET__A ;
 scalar_t__ OM_DVBT_Diversity_End ;
 scalar_t__ OM_DVBT_Diversity_Front ;
 int Write16 (struct drxd_state*,int ,int,int ) ;
 int WriteTable (struct drxd_state*,int ) ;

__attribute__((used)) static int InitCE(struct drxd_state *state)
{
 int status;
 enum app_env AppEnv = state->app_env_default;

 do {
  status = WriteTable(state, state->m_InitCE);
  if (status < 0)
   break;

  if (state->operation_mode == OM_DVBT_Diversity_Front ||
      state->operation_mode == OM_DVBT_Diversity_End) {
   AppEnv = state->app_env_diversity;
  }
  if (AppEnv == APPENV_STATIC) {
   status = Write16(state, CE_REG_TAPSET__A, 0x0000, 0);
   if (status < 0)
    break;
  } else if (AppEnv == APPENV_PORTABLE) {
   status = Write16(state, CE_REG_TAPSET__A, 0x0001, 0);
   if (status < 0)
    break;
  } else if (AppEnv == APPENV_MOBILE && state->type_A) {
   status = Write16(state, CE_REG_TAPSET__A, 0x0002, 0);
   if (status < 0)
    break;
  } else if (AppEnv == APPENV_MOBILE && !state->type_A) {
   status = Write16(state, CE_REG_TAPSET__A, 0x0006, 0);
   if (status < 0)
    break;
  }


  status = Write16(state, B_CE_REG_COMM_EXEC__A, 0x0001, 0);
  if (status < 0)
   break;
 } while (0);
 return status;
}
