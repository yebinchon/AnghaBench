
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk_states {int dprefclk_khz; } ;
struct clk_state_registers_and_bypass {int dprefclk; int member_0; } ;
struct clk_mgr {int dummy; } ;
struct clk_log_info {int member_0; } ;


 int rn_dump_clk_registers (struct clk_state_registers_and_bypass*,struct clk_mgr*,struct clk_log_info*) ;

void rn_get_clk_states(struct clk_mgr *clk_mgr_base, struct clk_states *s)
{
 struct clk_state_registers_and_bypass sb = { 0 };
 struct clk_log_info log_info = { 0 };

 rn_dump_clk_registers(&sb, clk_mgr_base, &log_info);

 s->dprefclk_khz = sb.dprefclk;
}
