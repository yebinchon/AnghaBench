
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int max (int,int) ;

__attribute__((used)) static int dsi_compute_interleave_hs(int blank, bool ddr_alwon, int enter_hs,
  int exit_hs, int exiths_clk, int ddr_pre, int ddr_post)
{
 int transition;







 if (ddr_alwon) {
  transition = enter_hs + exit_hs + max(enter_hs, 2) + 1;
 } else {
  int trans1, trans2;
  trans1 = ddr_pre + enter_hs + exit_hs + max(enter_hs, 2) + 1;
  trans2 = ddr_pre + enter_hs + exiths_clk + ddr_post + ddr_pre +
    enter_hs + 1;
  transition = max(trans1, trans2);
 }

 return blank > transition ? blank - transition : 0;
}
