
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pp_smu_funcs_nv {int pp_smu; int (* set_pme_wa_enable ) (int *) ;} ;
struct clk_mgr_internal {TYPE_1__* pp_smu; } ;
struct clk_mgr {int dummy; } ;
struct TYPE_2__ {struct pp_smu_funcs_nv nv_funcs; } ;


 struct clk_mgr_internal* TO_CLK_MGR_INTERNAL (struct clk_mgr*) ;
 int stub1 (int *) ;

void dcn2_enable_pme_wa(struct clk_mgr *clk_mgr_base)
{
 struct clk_mgr_internal *clk_mgr = TO_CLK_MGR_INTERNAL(clk_mgr_base);
 struct pp_smu_funcs_nv *pp_smu = ((void*)0);

 if (clk_mgr->pp_smu) {
  pp_smu = &clk_mgr->pp_smu->nv_funcs;

  if (pp_smu->set_pme_wa_enable)
   pp_smu->set_pme_wa_enable(&pp_smu->pp_smu);
 }
}
