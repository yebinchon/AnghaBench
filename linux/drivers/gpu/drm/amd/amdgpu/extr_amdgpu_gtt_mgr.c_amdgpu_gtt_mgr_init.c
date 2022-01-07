
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint64_t ;
struct ttm_mem_type_manager {struct amdgpu_gtt_mgr* priv; int bdev; } ;
struct amdgpu_gtt_mgr {int available; int lock; int mm; } ;
struct TYPE_2__ {int gart_size; } ;
struct amdgpu_device {int dev; TYPE_1__ gmc; } ;


 int AMDGPU_GTT_MAX_TRANSFER_SIZE ;
 int AMDGPU_GTT_NUM_TRANSFER_WINDOWS ;
 int DRM_ERROR (char*) ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int PAGE_SHIFT ;
 struct amdgpu_device* amdgpu_ttm_adev (int ) ;
 int atomic64_set (int *,unsigned long) ;
 int dev_attr_mem_info_gtt_total ;
 int dev_attr_mem_info_gtt_used ;
 int device_create_file (int ,int *) ;
 int drm_mm_init (int *,int,int) ;
 struct amdgpu_gtt_mgr* kzalloc (int,int ) ;
 int spin_lock_init (int *) ;

__attribute__((used)) static int amdgpu_gtt_mgr_init(struct ttm_mem_type_manager *man,
          unsigned long p_size)
{
 struct amdgpu_device *adev = amdgpu_ttm_adev(man->bdev);
 struct amdgpu_gtt_mgr *mgr;
 uint64_t start, size;
 int ret;

 mgr = kzalloc(sizeof(*mgr), GFP_KERNEL);
 if (!mgr)
  return -ENOMEM;

 start = AMDGPU_GTT_MAX_TRANSFER_SIZE * AMDGPU_GTT_NUM_TRANSFER_WINDOWS;
 size = (adev->gmc.gart_size >> PAGE_SHIFT) - start;
 drm_mm_init(&mgr->mm, start, size);
 spin_lock_init(&mgr->lock);
 atomic64_set(&mgr->available, p_size);
 man->priv = mgr;

 ret = device_create_file(adev->dev, &dev_attr_mem_info_gtt_total);
 if (ret) {
  DRM_ERROR("Failed to create device file mem_info_gtt_total\n");
  return ret;
 }
 ret = device_create_file(adev->dev, &dev_attr_mem_info_gtt_used);
 if (ret) {
  DRM_ERROR("Failed to create device file mem_info_gtt_used\n");
  return ret;
 }

 return 0;
}
