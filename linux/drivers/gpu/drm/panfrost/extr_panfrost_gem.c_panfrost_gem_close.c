
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct panfrost_gem_object {int node; scalar_t__ is_mapped; } ;
struct panfrost_file_priv {int mm_lock; } ;
struct drm_gem_object {int dummy; } ;
struct drm_file {struct panfrost_file_priv* driver_priv; } ;


 scalar_t__ drm_mm_node_allocated (int *) ;
 int drm_mm_remove_node (int *) ;
 int panfrost_mmu_unmap (struct panfrost_gem_object*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 struct panfrost_gem_object* to_panfrost_bo (struct drm_gem_object*) ;

__attribute__((used)) static void panfrost_gem_close(struct drm_gem_object *obj, struct drm_file *file_priv)
{
 struct panfrost_gem_object *bo = to_panfrost_bo(obj);
 struct panfrost_file_priv *priv = file_priv->driver_priv;

 if (bo->is_mapped)
  panfrost_mmu_unmap(bo);

 spin_lock(&priv->mm_lock);
 if (drm_mm_node_allocated(&bo->node))
  drm_mm_remove_node(&bo->node);
 spin_unlock(&priv->mm_lock);
}
