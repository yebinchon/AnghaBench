
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct drxd_state {int dummy; } ;


 int B_FE_AG_REG_AG_MODE_HIP_MODE_J_DYNAMIC ;
 int B_FE_AG_REG_AG_MODE_HIP_MODE_J_STATIC ;
 int B_FE_AG_REG_AG_MODE_HIP_MODE_J__M ;
 int B_FE_AG_REG_AG_MODE_HIP__A ;
 int B_FE_AG_REG_AG_MODE_LOP_MODE_C_DYNAMIC ;
 int B_FE_AG_REG_AG_MODE_LOP_MODE_C_STATIC ;
 int B_FE_AG_REG_AG_MODE_LOP_MODE_C__M ;
 int B_FE_AG_REG_AG_MODE_LOP__A ;
 int B_FE_AG_REG_AG_PGA_MODE_PFN_PCN_AFY_REN ;
 int B_FE_AG_REG_AG_PGA_MODE_PFY_PCY_AFY_REN ;
 int B_FE_AG_REG_AG_PGA_MODE__A ;
 int Read16 (struct drxd_state*,int ,int *,int) ;
 int Write16 (struct drxd_state*,int ,int ,int) ;

__attribute__((used)) static int SetCfgPga(struct drxd_state *state, int pgaSwitch)
{
 int status;
 u16 AgModeLop = 0;
 u16 AgModeHip = 0;
 do {
  if (pgaSwitch) {


   status = Read16(state, B_FE_AG_REG_AG_MODE_LOP__A, &AgModeLop, 0x0000);
   if (status < 0)
    break;
   AgModeLop &= (~(B_FE_AG_REG_AG_MODE_LOP_MODE_C__M));
   AgModeLop |= B_FE_AG_REG_AG_MODE_LOP_MODE_C_DYNAMIC;
   status = Write16(state, B_FE_AG_REG_AG_MODE_LOP__A, AgModeLop, 0x0000);
   if (status < 0)
    break;


   status = Read16(state, B_FE_AG_REG_AG_MODE_HIP__A, &AgModeHip, 0x0000);
   if (status < 0)
    break;
   AgModeHip &= (~(B_FE_AG_REG_AG_MODE_HIP_MODE_J__M));
   AgModeHip |= B_FE_AG_REG_AG_MODE_HIP_MODE_J_DYNAMIC;
   status = Write16(state, B_FE_AG_REG_AG_MODE_HIP__A, AgModeHip, 0x0000);
   if (status < 0)
    break;



   status = Write16(state, B_FE_AG_REG_AG_PGA_MODE__A, B_FE_AG_REG_AG_PGA_MODE_PFY_PCY_AFY_REN, 0x0000);
   if (status < 0)
    break;
  } else {



   status = Read16(state, B_FE_AG_REG_AG_MODE_LOP__A, &AgModeLop, 0x0000);
   if (status < 0)
    break;
   AgModeLop &= (~(B_FE_AG_REG_AG_MODE_LOP_MODE_C__M));
   AgModeLop |= B_FE_AG_REG_AG_MODE_LOP_MODE_C_STATIC;
   status = Write16(state, B_FE_AG_REG_AG_MODE_LOP__A, AgModeLop, 0x0000);
   if (status < 0)
    break;


   status = Read16(state, B_FE_AG_REG_AG_MODE_HIP__A, &AgModeHip, 0x0000);
   if (status < 0)
    break;
   AgModeHip &= (~(B_FE_AG_REG_AG_MODE_HIP_MODE_J__M));
   AgModeHip |= B_FE_AG_REG_AG_MODE_HIP_MODE_J_STATIC;
   status = Write16(state, B_FE_AG_REG_AG_MODE_HIP__A, AgModeHip, 0x0000);
   if (status < 0)
    break;



   status = Write16(state, B_FE_AG_REG_AG_PGA_MODE__A, B_FE_AG_REG_AG_PGA_MODE_PFN_PCN_AFY_REN, 0x0000);
   if (status < 0)
    break;
  }
 } while (0);
 return status;
}
