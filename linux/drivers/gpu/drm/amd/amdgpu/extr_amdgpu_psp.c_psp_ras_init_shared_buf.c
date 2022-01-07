
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int ras_shared_buf; int ras_shared_mc_addr; int ras_shared_bo; } ;
struct psp_context {TYPE_1__ ras; int adev; } ;


 int AMDGPU_GEM_DOMAIN_VRAM ;
 int PAGE_SIZE ;
 int PSP_RAS_SHARED_MEM_SIZE ;
 int amdgpu_bo_create_kernel (int ,int ,int ,int ,int *,int *,int *) ;

__attribute__((used)) static int psp_ras_init_shared_buf(struct psp_context *psp)
{
 int ret;





 ret = amdgpu_bo_create_kernel(psp->adev, PSP_RAS_SHARED_MEM_SIZE,
   PAGE_SIZE, AMDGPU_GEM_DOMAIN_VRAM,
   &psp->ras.ras_shared_bo,
   &psp->ras.ras_shared_mc_addr,
   &psp->ras.ras_shared_buf);

 return ret;
}
