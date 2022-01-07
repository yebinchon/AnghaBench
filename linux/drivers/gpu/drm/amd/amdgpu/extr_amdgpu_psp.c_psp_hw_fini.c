
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {int initialized; } ;
struct psp_context {void* fw_pri_buf; void* fence_buf; void* asd_shared_buf; int * cmd; int cmd_buf_mem; int cmd_buf_mc_addr; int cmd_buf_bo; int asd_shared_mc_addr; int asd_shared_bo; int fence_buf_mc_addr; int fence_buf_bo; int fw_pri_mc_addr; int fw_pri_bo; int tmr_mc_addr; int tmr_bo; TYPE_5__* adev; TYPE_3__ xgmi_context; } ;
struct TYPE_6__ {int num_physical_nodes; } ;
struct TYPE_7__ {TYPE_1__ xgmi; } ;
struct amdgpu_device {TYPE_2__ gmc; struct psp_context psp; } ;
struct TYPE_9__ {scalar_t__ ta_fw; } ;
struct TYPE_10__ {TYPE_4__ psp; } ;


 int PSP_RING_TYPE__KM ;
 int amdgpu_bo_free_kernel (int *,int *,void**) ;
 scalar_t__ amdgpu_sriov_vf (TYPE_5__*) ;
 int kfree (int *) ;
 int psp_ras_terminate (struct psp_context*) ;
 int psp_ring_destroy (struct psp_context*,int ) ;
 int psp_xgmi_terminate (struct psp_context*) ;

__attribute__((used)) static int psp_hw_fini(void *handle)
{
 struct amdgpu_device *adev = (struct amdgpu_device *)handle;
 struct psp_context *psp = &adev->psp;
 void *tmr_buf;
 void **pptr;

 if (adev->gmc.xgmi.num_physical_nodes > 1 &&
     psp->xgmi_context.initialized == 1)
                psp_xgmi_terminate(psp);

 if (psp->adev->psp.ta_fw)
  psp_ras_terminate(psp);

 psp_ring_destroy(psp, PSP_RING_TYPE__KM);

 pptr = amdgpu_sriov_vf(psp->adev) ? &tmr_buf : ((void*)0);
 amdgpu_bo_free_kernel(&psp->tmr_bo, &psp->tmr_mc_addr, pptr);
 amdgpu_bo_free_kernel(&psp->fw_pri_bo,
         &psp->fw_pri_mc_addr, &psp->fw_pri_buf);
 amdgpu_bo_free_kernel(&psp->fence_buf_bo,
         &psp->fence_buf_mc_addr, &psp->fence_buf);
 amdgpu_bo_free_kernel(&psp->asd_shared_bo, &psp->asd_shared_mc_addr,
         &psp->asd_shared_buf);
 amdgpu_bo_free_kernel(&psp->cmd_buf_bo, &psp->cmd_buf_mc_addr,
         (void **)&psp->cmd_buf_mem);

 kfree(psp->cmd);
 psp->cmd = ((void*)0);

 return 0;
}
