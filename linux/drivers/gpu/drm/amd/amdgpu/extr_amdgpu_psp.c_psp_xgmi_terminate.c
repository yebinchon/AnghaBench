
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int xgmi_shared_buf; int xgmi_shared_mc_addr; int xgmi_shared_bo; scalar_t__ initialized; } ;
struct psp_context {TYPE_1__ xgmi_context; } ;


 int amdgpu_bo_free_kernel (int *,int *,int *) ;
 int psp_xgmi_unload (struct psp_context*) ;

__attribute__((used)) static int psp_xgmi_terminate(struct psp_context *psp)
{
 int ret;

 if (!psp->xgmi_context.initialized)
  return 0;

 ret = psp_xgmi_unload(psp);
 if (ret)
  return ret;

 psp->xgmi_context.initialized = 0;


 amdgpu_bo_free_kernel(&psp->xgmi_context.xgmi_shared_bo,
   &psp->xgmi_context.xgmi_shared_mc_addr,
   &psp->xgmi_context.xgmi_shared_buf);

 return 0;
}
