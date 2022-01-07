
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ttm_mem_type_manager {struct amdgpu_vram_mgr* priv; int bdev; } ;
struct amdgpu_vram_mgr {int lock; int mm; } ;
struct amdgpu_device {int dev; } ;


 int DRM_ERROR (char*) ;
 int ENOMEM ;
 int GFP_KERNEL ;
 struct amdgpu_device* amdgpu_ttm_adev (int ) ;
 int dev_attr_mem_info_vis_vram_total ;
 int dev_attr_mem_info_vis_vram_used ;
 int dev_attr_mem_info_vram_total ;
 int dev_attr_mem_info_vram_used ;
 int device_create_file (int ,int *) ;
 int drm_mm_init (int *,int ,unsigned long) ;
 struct amdgpu_vram_mgr* kzalloc (int,int ) ;
 int spin_lock_init (int *) ;

__attribute__((used)) static int amdgpu_vram_mgr_init(struct ttm_mem_type_manager *man,
    unsigned long p_size)
{
 struct amdgpu_device *adev = amdgpu_ttm_adev(man->bdev);
 struct amdgpu_vram_mgr *mgr;
 int ret;

 mgr = kzalloc(sizeof(*mgr), GFP_KERNEL);
 if (!mgr)
  return -ENOMEM;

 drm_mm_init(&mgr->mm, 0, p_size);
 spin_lock_init(&mgr->lock);
 man->priv = mgr;


 ret = device_create_file(adev->dev, &dev_attr_mem_info_vram_total);
 if (ret) {
  DRM_ERROR("Failed to create device file mem_info_vram_total\n");
  return ret;
 }
 ret = device_create_file(adev->dev, &dev_attr_mem_info_vis_vram_total);
 if (ret) {
  DRM_ERROR("Failed to create device file mem_info_vis_vram_total\n");
  return ret;
 }
 ret = device_create_file(adev->dev, &dev_attr_mem_info_vram_used);
 if (ret) {
  DRM_ERROR("Failed to create device file mem_info_vram_used\n");
  return ret;
 }
 ret = device_create_file(adev->dev, &dev_attr_mem_info_vis_vram_used);
 if (ret) {
  DRM_ERROR("Failed to create device file mem_info_vis_vram_used\n");
  return ret;
 }

 return 0;
}
