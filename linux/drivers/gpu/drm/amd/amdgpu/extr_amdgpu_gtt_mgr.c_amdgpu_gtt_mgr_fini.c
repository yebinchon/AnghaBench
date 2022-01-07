
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ttm_mem_type_manager {struct amdgpu_gtt_mgr* priv; int bdev; } ;
struct amdgpu_gtt_mgr {int lock; int mm; } ;
struct amdgpu_device {int dev; } ;


 struct amdgpu_device* amdgpu_ttm_adev (int ) ;
 int dev_attr_mem_info_gtt_total ;
 int dev_attr_mem_info_gtt_used ;
 int device_remove_file (int ,int *) ;
 int drm_mm_takedown (int *) ;
 int kfree (struct amdgpu_gtt_mgr*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static int amdgpu_gtt_mgr_fini(struct ttm_mem_type_manager *man)
{
 struct amdgpu_device *adev = amdgpu_ttm_adev(man->bdev);
 struct amdgpu_gtt_mgr *mgr = man->priv;
 spin_lock(&mgr->lock);
 drm_mm_takedown(&mgr->mm);
 spin_unlock(&mgr->lock);
 kfree(mgr);
 man->priv = ((void*)0);

 device_remove_file(adev->dev, &dev_attr_mem_info_gtt_total);
 device_remove_file(adev->dev, &dev_attr_mem_info_gtt_used);

 return 0;
}
