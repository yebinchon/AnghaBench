
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drxd_state {int m_InitFE_2; int m_FeAgRegAgPwd; int m_FeAgRegAgAgcSio; scalar_t__ PGA; scalar_t__ type_A; int m_InitFE_1; } ;


 int B_FE_AG_REG_AG_PGA_MODE_PFN_PCN_AFY_REN ;
 int B_FE_AG_REG_AG_PGA_MODE__A ;
 int FE_AG_REG_AG_AGC_SIO__A ;
 int FE_AG_REG_AG_PGA_MODE_PFN_PCN_AFY_REN ;
 int FE_AG_REG_AG_PGA_MODE__A ;
 int FE_AG_REG_AG_PWD__A ;
 int SetCfgPga (struct drxd_state*,int ) ;
 int Write16 (struct drxd_state*,int ,int ,int) ;
 int WriteTable (struct drxd_state*,int ) ;

__attribute__((used)) static int InitFE(struct drxd_state *state)
{
 int status;

 do {
  status = WriteTable(state, state->m_InitFE_1);
  if (status < 0)
   break;

  if (state->type_A) {
   status = Write16(state, FE_AG_REG_AG_PGA_MODE__A,
      FE_AG_REG_AG_PGA_MODE_PFN_PCN_AFY_REN,
      0);
  } else {
   if (state->PGA)
    status = SetCfgPga(state, 0);
   else
    status =
        Write16(state, B_FE_AG_REG_AG_PGA_MODE__A,
         B_FE_AG_REG_AG_PGA_MODE_PFN_PCN_AFY_REN,
         0);
  }

  if (status < 0)
   break;
  status = Write16(state, FE_AG_REG_AG_AGC_SIO__A, state->m_FeAgRegAgAgcSio, 0x0000);
  if (status < 0)
   break;
  status = Write16(state, FE_AG_REG_AG_PWD__A, state->m_FeAgRegAgPwd, 0x0000);
  if (status < 0)
   break;

  status = WriteTable(state, state->m_InitFE_2);
  if (status < 0)
   break;

 } while (0);

 return status;
}
