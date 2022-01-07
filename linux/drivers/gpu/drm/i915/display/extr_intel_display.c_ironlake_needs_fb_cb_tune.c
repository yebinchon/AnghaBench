
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dpll {int n; } ;


 int i9xx_dpll_compute_m (struct dpll*) ;

__attribute__((used)) static bool ironlake_needs_fb_cb_tune(struct dpll *dpll, int factor)
{
 return i9xx_dpll_compute_m(dpll) < factor * dpll->n;
}
