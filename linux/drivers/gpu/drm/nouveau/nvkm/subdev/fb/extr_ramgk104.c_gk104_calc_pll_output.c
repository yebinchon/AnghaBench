
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;



__attribute__((used)) static int
gk104_calc_pll_output(int fN, int M, int N, int P, int clk)
{
 return ((clk * N) + (((u16)(fN + 4096) * clk) >> 13)) / (M * P);
}
