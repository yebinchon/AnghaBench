
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct msm_gem_object {int freed; } ;
struct msm_drm_private {int free_work; int wq; int free_list; } ;
struct drm_gem_object {struct drm_device* dev; } ;
struct drm_device {struct msm_drm_private* dev_private; } ;


 scalar_t__ llist_add (int *,int *) ;
 int queue_work (int ,int *) ;
 struct msm_gem_object* to_msm_bo (struct drm_gem_object*) ;

void msm_gem_free_object(struct drm_gem_object *obj)
{
 struct msm_gem_object *msm_obj = to_msm_bo(obj);
 struct drm_device *dev = obj->dev;
 struct msm_drm_private *priv = dev->dev_private;

 if (llist_add(&msm_obj->freed, &priv->free_list))
  queue_work(priv->wq, &priv->free_work);
}
