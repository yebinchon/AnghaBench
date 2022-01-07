
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct psp_context {int tmr_mc_addr; int tmr_bo; int adev; scalar_t__ fw_pri_buf; scalar_t__ toc_bin_size; scalar_t__ toc_start_addr; } ;


 int AMDGPU_GEM_DOMAIN_VRAM ;
 int DRM_ERROR (char*) ;
 int PSP_TMR_SIZE ;
 int amdgpu_bo_create_kernel (int ,int,int,int ,int *,int *,void**) ;
 scalar_t__ amdgpu_sriov_vf (int ) ;
 int psp_load_toc (struct psp_context*,int*) ;

__attribute__((used)) static int psp_tmr_init(struct psp_context *psp)
{
 int ret;
 int tmr_size;
 void *tmr_buf;
 void **pptr;
 tmr_size = PSP_TMR_SIZE;



 if (psp->toc_start_addr &&
     psp->toc_bin_size &&
     psp->fw_pri_buf) {
  ret = psp_load_toc(psp, &tmr_size);
  if (ret) {
   DRM_ERROR("Failed to load toc\n");
   return ret;
  }
 }

 pptr = amdgpu_sriov_vf(psp->adev) ? &tmr_buf : ((void*)0);
 ret = amdgpu_bo_create_kernel(psp->adev, tmr_size, PSP_TMR_SIZE,
          AMDGPU_GEM_DOMAIN_VRAM,
          &psp->tmr_bo, &psp->tmr_mc_addr, pptr);

 return ret;
}
