
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int initialized; int bdev; int * aper_base_kaddr; } ;
struct amdgpu_device {TYPE_1__ mman; } ;


 int AMDGPU_PL_GDS ;
 int AMDGPU_PL_GWS ;
 int AMDGPU_PL_OA ;
 int DRM_INFO (char*) ;
 int TTM_PL_TT ;
 int TTM_PL_VRAM ;
 int amdgpu_ttm_debugfs_fini (struct amdgpu_device*) ;
 int amdgpu_ttm_fw_reserve_vram_fini (struct amdgpu_device*) ;
 int iounmap (int *) ;
 int ttm_bo_clean_mm (int *,int ) ;
 int ttm_bo_device_release (int *) ;

void amdgpu_ttm_fini(struct amdgpu_device *adev)
{
 if (!adev->mman.initialized)
  return;

 amdgpu_ttm_debugfs_fini(adev);
 amdgpu_ttm_fw_reserve_vram_fini(adev);
 if (adev->mman.aper_base_kaddr)
  iounmap(adev->mman.aper_base_kaddr);
 adev->mman.aper_base_kaddr = ((void*)0);

 ttm_bo_clean_mm(&adev->mman.bdev, TTM_PL_VRAM);
 ttm_bo_clean_mm(&adev->mman.bdev, TTM_PL_TT);
 ttm_bo_clean_mm(&adev->mman.bdev, AMDGPU_PL_GDS);
 ttm_bo_clean_mm(&adev->mman.bdev, AMDGPU_PL_GWS);
 ttm_bo_clean_mm(&adev->mman.bdev, AMDGPU_PL_OA);
 ttm_bo_device_release(&adev->mman.bdev);
 adev->mman.initialized = 0;
 DRM_INFO("amdgpu: ttm finalized\n");
}
