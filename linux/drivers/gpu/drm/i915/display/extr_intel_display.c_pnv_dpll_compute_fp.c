
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct dpll {int n; int m2; } ;



__attribute__((used)) static u32 pnv_dpll_compute_fp(struct dpll *dpll)
{
 return (1 << dpll->n) << 16 | dpll->m2;
}
