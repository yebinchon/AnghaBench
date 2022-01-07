
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct du_clk_params {unsigned long diff; unsigned long rate; int escr; struct clk* clk; } ;
struct clk {int dummy; } ;


 int DIV_ROUND_CLOSEST (unsigned long,unsigned long) ;
 unsigned long abs (unsigned long) ;
 int clamp (int ,unsigned long,unsigned long) ;
 unsigned long clk_round_rate (struct clk*,unsigned long) ;

__attribute__((used)) static void rcar_du_escr_divider(struct clk *clk, unsigned long target,
     u32 escr, struct du_clk_params *params)
{
 unsigned long rate;
 unsigned long diff;
 u32 div;





 if (params->diff == 0)
  return;





 rate = clk_round_rate(clk, target);
 div = clamp(DIV_ROUND_CLOSEST(rate, target), 1UL, 64UL) - 1;
 diff = abs(rate / (div + 1) - target);





 if (diff < params->diff) {
  params->clk = clk;
  params->rate = rate;
  params->diff = diff;
  params->escr = escr | div;
 }
}
