
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct dpll {int n; int m1; int m2; } ;



__attribute__((used)) static u32 i9xx_dpll_compute_fp(struct dpll *dpll)
{
 return dpll->n << 16 | dpll->m1 << 8 | dpll->m2;
}
