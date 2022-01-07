
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dss_clk {int * clk; } ;


 int clk_put (int *) ;

void msm_dss_put_clk(struct dss_clk *clk_arry, int num_clk)
{
 int i;

 for (i = num_clk - 1; i >= 0; i--) {
  if (clk_arry[i].clk)
   clk_put(clk_arry[i].clk);
  clk_arry[i].clk = ((void*)0);
 }
}
