
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk_mgr_internal {int dummy; } ;
struct clk_mgr {int dummy; } ;


 struct clk_mgr_internal* TO_CLK_MGR_INTERNAL (struct clk_mgr*) ;
 int rn_vbios_smu_enable_pme_wa (struct clk_mgr_internal*) ;

void rn_enable_pme_wa(struct clk_mgr *clk_mgr_base)
{
 struct clk_mgr_internal *clk_mgr = TO_CLK_MGR_INTERNAL(clk_mgr_base);

 rn_vbios_smu_enable_pme_wa(clk_mgr);
}
