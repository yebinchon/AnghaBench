
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dc_clocks {int dummy; } ;
struct clk_mgr {int clks; } ;


 int memset (int *,int ,int) ;

void rv1_init_clocks(struct clk_mgr *clk_mgr)
{
 memset(&(clk_mgr->clks), 0, sizeof(struct dc_clocks));
}
