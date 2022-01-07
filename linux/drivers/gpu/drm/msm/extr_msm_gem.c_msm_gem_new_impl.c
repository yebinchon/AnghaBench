
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct drm_gem_object {int dummy; } ;
struct msm_gem_object {int flags; struct drm_gem_object base; int mm_list; int vmas; int submit_entry; int madv; int lock; } ;
struct msm_drm_private {int inactive_list; } ;
struct drm_device {int struct_mutex; int dev; struct msm_drm_private* dev_private; } ;


 int DRM_DEV_ERROR (int ,char*,int) ;
 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;

 int MSM_BO_CACHE_MASK ;


 int MSM_MADV_WILLNEED ;
 int WARN_ON (int) ;
 struct msm_gem_object* kzalloc (int,int ) ;
 int list_add_tail (int *,int *) ;
 int mutex_init (int *) ;
 int mutex_is_locked (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int msm_gem_new_impl(struct drm_device *dev,
  uint32_t size, uint32_t flags,
  struct drm_gem_object **obj,
  bool struct_mutex_locked)
{
 struct msm_drm_private *priv = dev->dev_private;
 struct msm_gem_object *msm_obj;

 switch (flags & MSM_BO_CACHE_MASK) {
 case 129:
 case 130:
 case 128:
  break;
 default:
  DRM_DEV_ERROR(dev->dev, "invalid cache flag: %x\n",
    (flags & MSM_BO_CACHE_MASK));
  return -EINVAL;
 }

 msm_obj = kzalloc(sizeof(*msm_obj), GFP_KERNEL);
 if (!msm_obj)
  return -ENOMEM;

 mutex_init(&msm_obj->lock);

 msm_obj->flags = flags;
 msm_obj->madv = MSM_MADV_WILLNEED;

 INIT_LIST_HEAD(&msm_obj->submit_entry);
 INIT_LIST_HEAD(&msm_obj->vmas);

 if (struct_mutex_locked) {
  WARN_ON(!mutex_is_locked(&dev->struct_mutex));
  list_add_tail(&msm_obj->mm_list, &priv->inactive_list);
 } else {
  mutex_lock(&dev->struct_mutex);
  list_add_tail(&msm_obj->mm_list, &priv->inactive_list);
  mutex_unlock(&dev->struct_mutex);
 }

 *obj = &msm_obj->base;

 return 0;
}
