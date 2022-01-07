
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct msm_gem_object {int lock; } ;
struct drm_gem_object {int vma_node; struct drm_device* dev; } ;
struct drm_device {int dev; } ;


 int DRM_DEV_ERROR (int ,char*) ;
 int WARN_ON (int) ;
 int drm_gem_create_mmap_offset (struct drm_gem_object*) ;
 int drm_vma_node_offset_addr (int *) ;
 int mutex_is_locked (int *) ;
 struct msm_gem_object* to_msm_bo (struct drm_gem_object*) ;

__attribute__((used)) static uint64_t mmap_offset(struct drm_gem_object *obj)
{
 struct drm_device *dev = obj->dev;
 struct msm_gem_object *msm_obj = to_msm_bo(obj);
 int ret;

 WARN_ON(!mutex_is_locked(&msm_obj->lock));


 ret = drm_gem_create_mmap_offset(obj);

 if (ret) {
  DRM_DEV_ERROR(dev->dev, "could not allocate mmap offset\n");
  return 0;
 }

 return drm_vma_node_offset_addr(&obj->vma_node);
}
