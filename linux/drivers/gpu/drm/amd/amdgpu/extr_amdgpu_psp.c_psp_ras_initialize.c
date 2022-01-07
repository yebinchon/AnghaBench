
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int ras_initialized; } ;
struct psp_context {TYPE_1__ ras; } ;


 int psp_ras_init_shared_buf (struct psp_context*) ;
 int psp_ras_load (struct psp_context*) ;

__attribute__((used)) static int psp_ras_initialize(struct psp_context *psp)
{
 int ret;

 if (!psp->ras.ras_initialized) {
  ret = psp_ras_init_shared_buf(psp);
  if (ret)
   return ret;
 }

 ret = psp_ras_load(psp);
 if (ret)
  return ret;

 return 0;
}
