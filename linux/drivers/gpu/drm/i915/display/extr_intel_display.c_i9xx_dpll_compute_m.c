
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct dpll {int m1; scalar_t__ m2; } ;



__attribute__((used)) static u32 i9xx_dpll_compute_m(struct dpll *dpll)
{
 return 5 * (dpll->m1 + 2) + (dpll->m2 + 2);
}
