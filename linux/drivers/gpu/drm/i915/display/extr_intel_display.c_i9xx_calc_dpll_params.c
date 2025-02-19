
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dpll {int m; int p; int p1; int p2; scalar_t__ n; int vco; int dot; } ;


 void* DIV_ROUND_CLOSEST (int,scalar_t__) ;
 scalar_t__ WARN_ON (int) ;
 int i9xx_dpll_compute_m (struct dpll*) ;

__attribute__((used)) static int i9xx_calc_dpll_params(int refclk, struct dpll *clock)
{
 clock->m = i9xx_dpll_compute_m(clock);
 clock->p = clock->p1 * clock->p2;
 if (WARN_ON(clock->n + 2 == 0 || clock->p == 0))
  return 0;
 clock->vco = DIV_ROUND_CLOSEST(refclk * clock->m, clock->n + 2);
 clock->dot = DIV_ROUND_CLOSEST(clock->vco, clock->p);

 return clock->dot;
}
