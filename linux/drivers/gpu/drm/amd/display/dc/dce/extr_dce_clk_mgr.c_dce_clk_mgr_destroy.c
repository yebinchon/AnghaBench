
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dce_clk_mgr {int dummy; } ;
struct clk_mgr {int dummy; } ;


 struct dce_clk_mgr* TO_DCE_CLK_MGR (struct clk_mgr*) ;
 int kfree (struct dce_clk_mgr*) ;

void dce_clk_mgr_destroy(struct clk_mgr **clk_mgr)
{
 struct dce_clk_mgr *clk_mgr_dce = TO_DCE_CLK_MGR(*clk_mgr);

 kfree(clk_mgr_dce);
 *clk_mgr = ((void*)0);
}
