
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int ras_shared_buf; int ras_shared_mc_addr; int ras_shared_bo; scalar_t__ ras_initialized; } ;
struct psp_context {TYPE_1__ ras; } ;


 int amdgpu_bo_free_kernel (int *,int *,int *) ;
 int psp_ras_unload (struct psp_context*) ;

__attribute__((used)) static int psp_ras_terminate(struct psp_context *psp)
{
 int ret;

 if (!psp->ras.ras_initialized)
  return 0;

 ret = psp_ras_unload(psp);
 if (ret)
  return ret;

 psp->ras.ras_initialized = 0;


 amdgpu_bo_free_kernel(&psp->ras.ras_shared_bo,
   &psp->ras.ras_shared_mc_addr,
   &psp->ras.ras_shared_buf);

 return 0;
}
