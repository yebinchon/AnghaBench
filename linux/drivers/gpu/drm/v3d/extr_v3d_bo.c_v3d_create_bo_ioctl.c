
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int base; } ;
struct TYPE_3__ {int start; } ;
struct v3d_bo {TYPE_2__ base; TYPE_1__ node; } ;
struct drm_v3d_create_bo {scalar_t__ flags; int offset; int handle; int size; } ;
struct drm_file {int dummy; } ;
struct drm_device {int dummy; } ;


 int DRM_INFO (char*,scalar_t__) ;
 int EINVAL ;
 scalar_t__ IS_ERR (struct v3d_bo*) ;
 int PAGE_ALIGN (int ) ;
 int PAGE_SHIFT ;
 int PTR_ERR (struct v3d_bo*) ;
 int drm_gem_handle_create (struct drm_file*,int *,int *) ;
 int drm_gem_object_put_unlocked (int *) ;
 struct v3d_bo* v3d_bo_create (struct drm_device*,struct drm_file*,int ) ;

int v3d_create_bo_ioctl(struct drm_device *dev, void *data,
   struct drm_file *file_priv)
{
 struct drm_v3d_create_bo *args = data;
 struct v3d_bo *bo = ((void*)0);
 int ret;

 if (args->flags != 0) {
  DRM_INFO("unknown create_bo flags: %d\n", args->flags);
  return -EINVAL;
 }

 bo = v3d_bo_create(dev, file_priv, PAGE_ALIGN(args->size));
 if (IS_ERR(bo))
  return PTR_ERR(bo);

 args->offset = bo->node.start << PAGE_SHIFT;

 ret = drm_gem_handle_create(file_priv, &bo->base.base, &args->handle);
 drm_gem_object_put_unlocked(&bo->base.base);

 return ret;
}
