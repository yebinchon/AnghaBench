
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct msm_gem_object {int mm_list; int * gpu; } ;
struct msm_drm_private {int inactive_list; } ;
struct drm_gem_object {struct drm_device* dev; } ;
struct drm_device {int struct_mutex; struct msm_drm_private* dev_private; } ;


 int WARN_ON (int) ;
 int list_add_tail (int *,int *) ;
 int list_del_init (int *) ;
 int mutex_is_locked (int *) ;
 struct msm_gem_object* to_msm_bo (struct drm_gem_object*) ;

void msm_gem_move_to_inactive(struct drm_gem_object *obj)
{
 struct drm_device *dev = obj->dev;
 struct msm_drm_private *priv = dev->dev_private;
 struct msm_gem_object *msm_obj = to_msm_bo(obj);

 WARN_ON(!mutex_is_locked(&dev->struct_mutex));

 msm_obj->gpu = ((void*)0);
 list_del_init(&msm_obj->mm_list);
 list_add_tail(&msm_obj->mm_list, &priv->inactive_list);
}
