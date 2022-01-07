
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct lima_device {int dummy; } ;
struct lima_bo {int gem; } ;
struct drm_file {int dummy; } ;
struct drm_device {int dummy; } ;


 scalar_t__ IS_ERR (struct lima_bo*) ;
 int PTR_ERR (struct lima_bo*) ;
 int drm_gem_handle_create (struct drm_file*,int *,int *) ;
 int drm_gem_object_put_unlocked (int *) ;
 struct lima_bo* lima_bo_create (struct lima_device*,int ,int ,int *) ;
 struct lima_device* to_lima_dev (struct drm_device*) ;

int lima_gem_create_handle(struct drm_device *dev, struct drm_file *file,
      u32 size, u32 flags, u32 *handle)
{
 int err;
 struct lima_bo *bo;
 struct lima_device *ldev = to_lima_dev(dev);

 bo = lima_bo_create(ldev, size, flags, ((void*)0));
 if (IS_ERR(bo))
  return PTR_ERR(bo);

 err = drm_gem_handle_create(file, &bo->gem, handle);


 drm_gem_object_put_unlocked(&bo->gem);

 return err;
}
