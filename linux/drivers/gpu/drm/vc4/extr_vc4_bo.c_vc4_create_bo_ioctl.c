
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vc4_file {int dummy; } ;
struct vc4_dev {int dummy; } ;
struct TYPE_2__ {int base; } ;
struct vc4_bo {TYPE_1__ base; int madv; } ;
struct drm_vc4_create_bo {int handle; int size; } ;
struct drm_file {struct vc4_file* driver_priv; } ;
struct drm_device {int dummy; } ;


 scalar_t__ IS_ERR (struct vc4_bo*) ;
 int PTR_ERR (struct vc4_bo*) ;
 int VC4_BO_TYPE_V3D ;
 int VC4_MADV_WILLNEED ;
 int drm_gem_handle_create (struct drm_file*,int *,int *) ;
 int drm_gem_object_put_unlocked (int *) ;
 struct vc4_dev* to_vc4_dev (struct drm_device*) ;
 struct vc4_bo* vc4_bo_create (struct drm_device*,int ,int,int ) ;
 int vc4_grab_bin_bo (struct vc4_dev*,struct vc4_file*) ;

int vc4_create_bo_ioctl(struct drm_device *dev, void *data,
   struct drm_file *file_priv)
{
 struct drm_vc4_create_bo *args = data;
 struct vc4_file *vc4file = file_priv->driver_priv;
 struct vc4_dev *vc4 = to_vc4_dev(dev);
 struct vc4_bo *bo = ((void*)0);
 int ret;

 ret = vc4_grab_bin_bo(vc4, vc4file);
 if (ret)
  return ret;





 bo = vc4_bo_create(dev, args->size, 0, VC4_BO_TYPE_V3D);
 if (IS_ERR(bo))
  return PTR_ERR(bo);

 bo->madv = VC4_MADV_WILLNEED;

 ret = drm_gem_handle_create(file_priv, &bo->base.base, &args->handle);
 drm_gem_object_put_unlocked(&bo->base.base);

 return ret;
}
