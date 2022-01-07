
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct msm_gem_object {int pages; int vram_node; } ;
struct TYPE_4__ {int lock; } ;
struct msm_drm_private {TYPE_2__ vram; } ;
struct drm_gem_object {TYPE_1__* dev; } ;
struct TYPE_3__ {struct msm_drm_private* dev_private; } ;


 int drm_mm_remove_node (int ) ;
 int kvfree (int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 struct msm_gem_object* to_msm_bo (struct drm_gem_object*) ;

__attribute__((used)) static void put_pages_vram(struct drm_gem_object *obj)
{
 struct msm_gem_object *msm_obj = to_msm_bo(obj);
 struct msm_drm_private *priv = obj->dev->dev_private;

 spin_lock(&priv->vram.lock);
 drm_mm_remove_node(msm_obj->vram_node);
 spin_unlock(&priv->vram.lock);

 kvfree(msm_obj->pages);
}
