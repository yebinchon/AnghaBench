
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct psp_gfx_cmd_resp {int dummy; } ;
struct psp_context {void* fw_pri_buf; void* fence_buf; int cmd_buf_mem; int cmd_buf_mc_addr; int cmd_buf_bo; int fence_buf_mc_addr; int fence_buf_bo; int fw_pri_mc_addr; int fw_pri_bo; struct amdgpu_device* adev; int cmd; } ;
struct amdgpu_device {scalar_t__ in_gpu_reset; struct psp_context psp; } ;


 int AMDGPU_GEM_DOMAIN_GTT ;
 int AMDGPU_GEM_DOMAIN_VRAM ;
 int DRM_ERROR (char*) ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int PAGE_SIZE ;
 int PSP_1_MEG ;
 int PSP_CMD_BUFFER_SIZE ;
 int PSP_FENCE_BUFFER_SIZE ;
 int PSP_RING_TYPE__KM ;
 int amdgpu_bo_create_kernel (struct amdgpu_device*,int ,int ,int ,int *,int *,void**) ;
 scalar_t__ amdgpu_sriov_vf (struct amdgpu_device*) ;
 int kzalloc (int,int ) ;
 int memset (void*,int ,int ) ;
 int psp_hw_start (struct psp_context*) ;
 int psp_np_fw_load (struct psp_context*) ;
 int psp_ring_init (struct psp_context*,int ) ;
 int psp_ring_stop (struct psp_context*,int ) ;

__attribute__((used)) static int psp_load_fw(struct amdgpu_device *adev)
{
 int ret;
 struct psp_context *psp = &adev->psp;

 if (amdgpu_sriov_vf(adev) && adev->in_gpu_reset) {
  psp_ring_stop(psp, PSP_RING_TYPE__KM);
  goto skip_memalloc;
 }

 psp->cmd = kzalloc(sizeof(struct psp_gfx_cmd_resp), GFP_KERNEL);
 if (!psp->cmd)
  return -ENOMEM;


 if (!amdgpu_sriov_vf(psp->adev)) {
  ret = amdgpu_bo_create_kernel(adev, PSP_1_MEG, PSP_1_MEG,
           AMDGPU_GEM_DOMAIN_GTT,
           &psp->fw_pri_bo,
           &psp->fw_pri_mc_addr,
           &psp->fw_pri_buf);
  if (ret)
   goto failed;
 }

 ret = amdgpu_bo_create_kernel(adev, PSP_FENCE_BUFFER_SIZE, PAGE_SIZE,
     AMDGPU_GEM_DOMAIN_VRAM,
     &psp->fence_buf_bo,
     &psp->fence_buf_mc_addr,
     &psp->fence_buf);
 if (ret)
  goto failed;

 ret = amdgpu_bo_create_kernel(adev, PSP_CMD_BUFFER_SIZE, PAGE_SIZE,
          AMDGPU_GEM_DOMAIN_VRAM,
          &psp->cmd_buf_bo, &psp->cmd_buf_mc_addr,
          (void **)&psp->cmd_buf_mem);
 if (ret)
  goto failed;

 memset(psp->fence_buf, 0, PSP_FENCE_BUFFER_SIZE);

 ret = psp_ring_init(psp, PSP_RING_TYPE__KM);
 if (ret) {
  DRM_ERROR("PSP ring init failed!\n");
  goto failed;
 }

skip_memalloc:
 ret = psp_hw_start(psp);
 if (ret)
  goto failed;

 ret = psp_np_fw_load(psp);
 if (ret)
  goto failed;

 return 0;

failed:





 return ret;
}
