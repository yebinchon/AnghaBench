
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct ttm_buffer_object {int bdev; } ;
struct amdgpu_device {int shadow_list_lock; } ;
struct TYPE_5__ {scalar_t__ import_attach; } ;
struct TYPE_4__ {TYPE_2__ base; int sg; } ;
struct amdgpu_bo {scalar_t__ pin_count; struct amdgpu_bo* metadata; int parent; int shadow_list; TYPE_1__ tbo; } ;


 int amdgpu_bo_kunmap (struct amdgpu_bo*) ;
 int amdgpu_bo_subtract_pin_size (struct amdgpu_bo*) ;
 int amdgpu_bo_unref (int *) ;
 struct amdgpu_device* amdgpu_ttm_adev (int ) ;
 int drm_gem_object_release (TYPE_2__*) ;
 int drm_prime_gem_destroy (TYPE_2__*,int ) ;
 int kfree (struct amdgpu_bo*) ;
 int list_del_init (int *) ;
 int list_empty (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct amdgpu_bo* ttm_to_amdgpu_bo (struct ttm_buffer_object*) ;

__attribute__((used)) static void amdgpu_bo_destroy(struct ttm_buffer_object *tbo)
{
 struct amdgpu_device *adev = amdgpu_ttm_adev(tbo->bdev);
 struct amdgpu_bo *bo = ttm_to_amdgpu_bo(tbo);

 if (bo->pin_count > 0)
  amdgpu_bo_subtract_pin_size(bo);

 amdgpu_bo_kunmap(bo);

 if (bo->tbo.base.import_attach)
  drm_prime_gem_destroy(&bo->tbo.base, bo->tbo.sg);
 drm_gem_object_release(&bo->tbo.base);

 if (!list_empty(&bo->shadow_list)) {
  mutex_lock(&adev->shadow_list_lock);
  list_del_init(&bo->shadow_list);
  mutex_unlock(&adev->shadow_list_lock);
 }
 amdgpu_bo_unref(&bo->parent);

 kfree(bo->metadata);
 kfree(bo);
}
