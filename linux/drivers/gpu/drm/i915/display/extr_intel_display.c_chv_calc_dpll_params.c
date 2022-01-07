
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dpll {int m; int m1; int m2; int p; int p1; int p2; int n; int dot; int vco; } ;


 int DIV_ROUND_CLOSEST (int ,int) ;
 int DIV_ROUND_CLOSEST_ULL (int ,int) ;
 scalar_t__ WARN_ON (int) ;
 int mul_u32_u32 (int,int) ;

int chv_calc_dpll_params(int refclk, struct dpll *clock)
{
 clock->m = clock->m1 * clock->m2;
 clock->p = clock->p1 * clock->p2;
 if (WARN_ON(clock->n == 0 || clock->p == 0))
  return 0;
 clock->vco = DIV_ROUND_CLOSEST_ULL(mul_u32_u32(refclk, clock->m),
        clock->n << 22);
 clock->dot = DIV_ROUND_CLOSEST(clock->vco, clock->p);

 return clock->dot / 5;
}
