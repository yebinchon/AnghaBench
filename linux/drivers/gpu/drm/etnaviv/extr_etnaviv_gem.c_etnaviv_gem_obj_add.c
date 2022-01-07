
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct etnaviv_gem_object {int gem_node; } ;
struct etnaviv_drm_private {int gem_lock; int gem_list; } ;
struct drm_gem_object {int dummy; } ;
struct drm_device {struct etnaviv_drm_private* dev_private; } ;


 int list_add_tail (int *,int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct etnaviv_gem_object* to_etnaviv_bo (struct drm_gem_object*) ;

void etnaviv_gem_obj_add(struct drm_device *dev, struct drm_gem_object *obj)
{
 struct etnaviv_drm_private *priv = dev->dev_private;
 struct etnaviv_gem_object *etnaviv_obj = to_etnaviv_bo(obj);

 mutex_lock(&priv->gem_lock);
 list_add_tail(&etnaviv_obj->gem_node, &priv->gem_list);
 mutex_unlock(&priv->gem_lock);
}
