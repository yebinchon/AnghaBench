
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pp_hwmgr {int dummy; } ;


 int MC_CG_ARB_FREQ_F0 ;
 int MC_CG_ARB_FREQ_F1 ;
 int smu7_copy_and_switch_arb_sets (struct pp_hwmgr*,int ,int ) ;

__attribute__((used)) static int smu7_initial_switch_from_arbf0_to_f1(struct pp_hwmgr *hwmgr)
{
 return smu7_copy_and_switch_arb_sets(hwmgr,
   MC_CG_ARB_FREQ_F0, MC_CG_ARB_FREQ_F1);
}
