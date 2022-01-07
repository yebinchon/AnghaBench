
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct psp_context {int asd_shared_buf; int asd_shared_mc_addr; int asd_shared_bo; int adev; } ;


 int AMDGPU_GEM_DOMAIN_VRAM ;
 int PAGE_SIZE ;
 int PSP_ASD_SHARED_MEM_SIZE ;
 int amdgpu_bo_create_kernel (int ,int ,int ,int ,int *,int *,int *) ;

__attribute__((used)) static int psp_asd_init(struct psp_context *psp)
{
 int ret;





 ret = amdgpu_bo_create_kernel(psp->adev, PSP_ASD_SHARED_MEM_SIZE,
          PAGE_SIZE, AMDGPU_GEM_DOMAIN_VRAM,
          &psp->asd_shared_bo,
          &psp->asd_shared_mc_addr,
          &psp->asd_shared_buf);

 return ret;
}
