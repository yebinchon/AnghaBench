
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dc_clocks {int dummy; } ;
struct TYPE_2__ {int p_state_change_support; int prev_p_state_change_support; } ;
struct clk_mgr {TYPE_1__ clks; } ;


 int memset (TYPE_1__*,int ,int) ;

void dcn2_init_clocks(struct clk_mgr *clk_mgr)
{
 memset(&(clk_mgr->clks), 0, sizeof(struct dc_clocks));

 clk_mgr->clks.p_state_change_support = 1;
 clk_mgr->clks.prev_p_state_change_support = 1;
}
