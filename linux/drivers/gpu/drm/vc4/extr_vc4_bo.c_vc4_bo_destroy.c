
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct vc4_dev {int bo_lock; } ;
struct drm_gem_object {int dev; } ;
struct TYPE_3__ {struct drm_gem_object base; } ;
struct vc4_bo {TYPE_2__* validated_shader; TYPE_1__ base; } ;
struct TYPE_4__ {struct TYPE_4__* texture_samples; struct TYPE_4__* uniform_addr_offsets; } ;


 int drm_gem_cma_free_object (struct drm_gem_object*) ;
 int kfree (TYPE_2__*) ;
 int lockdep_assert_held (int *) ;
 struct vc4_dev* to_vc4_dev (int ) ;
 int vc4_bo_set_label (struct drm_gem_object*,int) ;

__attribute__((used)) static void vc4_bo_destroy(struct vc4_bo *bo)
{
 struct drm_gem_object *obj = &bo->base.base;
 struct vc4_dev *vc4 = to_vc4_dev(obj->dev);

 lockdep_assert_held(&vc4->bo_lock);

 vc4_bo_set_label(obj, -1);

 if (bo->validated_shader) {
  kfree(bo->validated_shader->uniform_addr_offsets);
  kfree(bo->validated_shader->texture_samples);
  kfree(bo->validated_shader);
  bo->validated_shader = ((void*)0);
 }

 drm_gem_cma_free_object(obj);
}
