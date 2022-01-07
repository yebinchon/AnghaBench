
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct pp_hwmgr {int device; } ;


 int CGS_IND_REG__SMC ;
 int MC_CG_ARB_FREQ_F0 ;
 int cgs_read_ind_register (int ,int ,int ) ;
 int ixSMC_SCRATCH9 ;
 int smu7_copy_and_switch_arb_sets (struct pp_hwmgr*,int,int) ;

__attribute__((used)) static int smu7_force_switch_to_arbf0(struct pp_hwmgr *hwmgr)
{
 uint32_t tmp;

 tmp = (cgs_read_ind_register(hwmgr->device,
   CGS_IND_REG__SMC, ixSMC_SCRATCH9) &
   0x0000ff00) >> 8;

 if (tmp == MC_CG_ARB_FREQ_F0)
  return 0;

 return smu7_copy_and_switch_arb_sets(hwmgr,
   tmp, MC_CG_ARB_FREQ_F0);
}
