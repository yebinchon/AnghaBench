
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_crtc_state {int port_clock; } ;
struct bxt_clk_div {int clock; int vco; int p1; int p2; } ;


 int ARRAY_SIZE (struct bxt_clk_div*) ;
 struct bxt_clk_div* bxt_dp_clk_val ;

__attribute__((used)) static void bxt_ddi_dp_pll_dividers(struct intel_crtc_state *crtc_state,
        struct bxt_clk_div *clk_div)
{
 int clock = crtc_state->port_clock;
 int i;

 *clk_div = bxt_dp_clk_val[0];
 for (i = 0; i < ARRAY_SIZE(bxt_dp_clk_val); ++i) {
  if (bxt_dp_clk_val[i].clock == clock) {
   *clk_div = bxt_dp_clk_val[i];
   break;
  }
 }

 clk_div->vco = clock * 10 / 2 * clk_div->p1 * clk_div->p2;
}
