
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int uint64_t ;
typedef int u64 ;
struct sysinfo {int mem_unit; scalar_t__ totalram; } ;
struct TYPE_12__ {int gds_size; int gws_size; int oa_size; } ;
struct TYPE_13__ {int no_retry; } ;
struct TYPE_11__ {int initialized; TYPE_6__ bdev; int aper_base_kaddr; int gtt_window_lock; } ;
struct TYPE_10__ {int real_vram_size; int visible_vram_size; int mc_vram_size; int stolen_size; int aper_base; } ;
struct amdgpu_device {TYPE_5__ gds; TYPE_4__ mman; TYPE_3__ gmc; int stolen_vga_memory; int dev; TYPE_2__* ddev; } ;
struct TYPE_9__ {TYPE_1__* anon_inode; } ;
struct TYPE_8__ {int i_mapping; } ;


 int AMDGPU_DEFAULT_GTT_SIZE_MB ;
 int AMDGPU_GEM_DOMAIN_VRAM ;
 int AMDGPU_PL_GDS ;
 int AMDGPU_PL_GWS ;
 int AMDGPU_PL_OA ;
 int DRM_ERROR (char*,...) ;
 int DRM_INFO (char*,unsigned int) ;
 int PAGE_SHIFT ;
 int PAGE_SIZE ;
 int TTM_PL_TT ;
 int TTM_PL_VRAM ;
 int amdgpu_bo_create_kernel (struct amdgpu_device*,int ,int ,int ,int *,int *,void**) ;
 int amdgpu_bo_driver ;
 int amdgpu_gtt_size ;
 int amdgpu_ttm_debugfs_init (struct amdgpu_device*) ;
 int amdgpu_ttm_fw_reserve_vram_init (struct amdgpu_device*) ;
 int amdgpu_ttm_set_buffer_funcs_status (struct amdgpu_device*,int) ;
 scalar_t__ amdgpu_vis_vram_limit ;
 int dma_addressing_limited (int ) ;
 int ioremap_wc (int ,int) ;
 int max (int,int ) ;
 int min (int ,int) ;
 int mutex_init (int *) ;
 int si_meminfo (struct sysinfo*) ;
 int ttm_bo_device_init (TYPE_6__*,int *,int ,int ) ;
 int ttm_bo_init_mm (TYPE_6__*,int ,int) ;

int amdgpu_ttm_init(struct amdgpu_device *adev)
{
 uint64_t gtt_size;
 int r;
 u64 vis_vram_limit;
 void *stolen_vga_buf;

 mutex_init(&adev->mman.gtt_window_lock);


 r = ttm_bo_device_init(&adev->mman.bdev,
          &amdgpu_bo_driver,
          adev->ddev->anon_inode->i_mapping,
          dma_addressing_limited(adev->dev));
 if (r) {
  DRM_ERROR("failed initializing buffer object driver(%d).\n", r);
  return r;
 }
 adev->mman.initialized = 1;


 adev->mman.bdev.no_retry = 1;


 r = ttm_bo_init_mm(&adev->mman.bdev, TTM_PL_VRAM,
    adev->gmc.real_vram_size >> PAGE_SHIFT);
 if (r) {
  DRM_ERROR("Failed initializing VRAM heap.\n");
  return r;
 }


 vis_vram_limit = (u64)amdgpu_vis_vram_limit * 1024 * 1024;
 if (amdgpu_vis_vram_limit > 0 &&
     vis_vram_limit <= adev->gmc.visible_vram_size)
  adev->gmc.visible_vram_size = vis_vram_limit;


 amdgpu_ttm_set_buffer_funcs_status(adev, 0);
 r = amdgpu_ttm_fw_reserve_vram_init(adev);
 if (r) {
  return r;
 }





 r = amdgpu_bo_create_kernel(adev, adev->gmc.stolen_size, PAGE_SIZE,
        AMDGPU_GEM_DOMAIN_VRAM,
        &adev->stolen_vga_memory,
        ((void*)0), &stolen_vga_buf);
 if (r)
  return r;
 DRM_INFO("amdgpu: %uM of VRAM memory ready\n",
   (unsigned) (adev->gmc.real_vram_size / (1024 * 1024)));



 if (amdgpu_gtt_size == -1) {
  struct sysinfo si;

  si_meminfo(&si);
  gtt_size = min(max((AMDGPU_DEFAULT_GTT_SIZE_MB << 20),
          adev->gmc.mc_vram_size),
          ((uint64_t)si.totalram * si.mem_unit * 3/4));
 }
 else
  gtt_size = (uint64_t)amdgpu_gtt_size << 20;


 r = ttm_bo_init_mm(&adev->mman.bdev, TTM_PL_TT, gtt_size >> PAGE_SHIFT);
 if (r) {
  DRM_ERROR("Failed initializing GTT heap.\n");
  return r;
 }
 DRM_INFO("amdgpu: %uM of GTT memory ready.\n",
   (unsigned)(gtt_size / (1024 * 1024)));


 r = ttm_bo_init_mm(&adev->mman.bdev, AMDGPU_PL_GDS,
      adev->gds.gds_size);
 if (r) {
  DRM_ERROR("Failed initializing GDS heap.\n");
  return r;
 }

 r = ttm_bo_init_mm(&adev->mman.bdev, AMDGPU_PL_GWS,
      adev->gds.gws_size);
 if (r) {
  DRM_ERROR("Failed initializing gws heap.\n");
  return r;
 }

 r = ttm_bo_init_mm(&adev->mman.bdev, AMDGPU_PL_OA,
      adev->gds.oa_size);
 if (r) {
  DRM_ERROR("Failed initializing oa heap.\n");
  return r;
 }


 r = amdgpu_ttm_debugfs_init(adev);
 if (r) {
  DRM_ERROR("Failed to init debugfs\n");
  return r;
 }
 return 0;
}
