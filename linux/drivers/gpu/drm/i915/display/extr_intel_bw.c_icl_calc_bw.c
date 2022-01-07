
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DIV_ROUND_CLOSEST (int,int) ;

__attribute__((used)) static int icl_calc_bw(int dclk, int num, int den)
{

 return DIV_ROUND_CLOSEST(num * dclk * 100, den * 6);
}
