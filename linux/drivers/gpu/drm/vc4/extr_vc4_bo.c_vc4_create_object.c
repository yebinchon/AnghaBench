
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct vc4_dev {int bo_lock; TYPE_1__* bo_labels; } ;
struct drm_gem_object {int dummy; } ;
struct TYPE_4__ {struct drm_gem_object base; } ;
struct vc4_bo {size_t label; TYPE_2__ base; int madv_lock; int usecnt; int madv; } ;
struct drm_device {int dummy; } ;
struct TYPE_3__ {size_t size_allocated; int num_allocated; } ;


 int ENOMEM ;
 struct drm_gem_object* ERR_PTR (int ) ;
 int GFP_KERNEL ;
 size_t VC4_BO_TYPE_KERNEL ;
 int VC4_MADV_WILLNEED ;
 struct vc4_bo* kzalloc (int,int ) ;
 int mutex_init (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int refcount_set (int *,int ) ;
 struct vc4_dev* to_vc4_dev (struct drm_device*) ;

struct drm_gem_object *vc4_create_object(struct drm_device *dev, size_t size)
{
 struct vc4_dev *vc4 = to_vc4_dev(dev);
 struct vc4_bo *bo;

 bo = kzalloc(sizeof(*bo), GFP_KERNEL);
 if (!bo)
  return ERR_PTR(-ENOMEM);

 bo->madv = VC4_MADV_WILLNEED;
 refcount_set(&bo->usecnt, 0);
 mutex_init(&bo->madv_lock);
 mutex_lock(&vc4->bo_lock);
 bo->label = VC4_BO_TYPE_KERNEL;
 vc4->bo_labels[VC4_BO_TYPE_KERNEL].num_allocated++;
 vc4->bo_labels[VC4_BO_TYPE_KERNEL].size_allocated += size;
 mutex_unlock(&vc4->bo_lock);

 return &bo->base.base;
}
