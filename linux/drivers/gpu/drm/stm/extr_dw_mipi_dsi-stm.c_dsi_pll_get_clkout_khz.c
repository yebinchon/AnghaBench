
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DIV_ROUND_CLOSEST (int,int) ;

__attribute__((used)) static int dsi_pll_get_clkout_khz(int clkin_khz, int idf, int ndiv, int odf)
{
 int divisor = idf * odf;


 if (!divisor)
  return 0;

 return DIV_ROUND_CLOSEST(clkin_khz * ndiv, divisor);
}
