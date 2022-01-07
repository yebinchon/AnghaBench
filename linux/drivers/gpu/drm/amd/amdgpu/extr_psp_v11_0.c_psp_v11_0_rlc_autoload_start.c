
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct psp_context {int dummy; } ;


 int psp_rlc_autoload_start (struct psp_context*) ;

__attribute__((used)) static int psp_v11_0_rlc_autoload_start(struct psp_context *psp)
{
 return psp_rlc_autoload_start(psp);
}
