
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct psp_context {int * funcs; } ;


 int psp_v10_0_funcs ;

void psp_v10_0_set_psp_funcs(struct psp_context *psp)
{
 psp->funcs = &psp_v10_0_funcs;
}
