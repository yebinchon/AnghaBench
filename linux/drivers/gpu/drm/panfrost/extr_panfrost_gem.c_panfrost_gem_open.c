
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u64 ;
struct panfrost_gem_object {int node; int is_heap; int * mmu; scalar_t__ noexec; } ;
struct panfrost_file_priv {int mm_lock; int mm; int mmu; } ;
struct drm_gem_object {size_t size; } ;
struct drm_file {struct panfrost_file_priv* driver_priv; } ;


 size_t PAGE_SHIFT ;
 unsigned long PANFROST_BO_NOEXEC ;
 size_t SZ_2M ;
 int drm_mm_insert_node_generic (int *,int *,size_t,size_t,unsigned long,int ) ;
 int drm_mm_remove_node (int *) ;
 int panfrost_mmu_map (struct panfrost_gem_object*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 struct panfrost_gem_object* to_panfrost_bo (struct drm_gem_object*) ;

__attribute__((used)) static int panfrost_gem_open(struct drm_gem_object *obj, struct drm_file *file_priv)
{
 int ret;
 size_t size = obj->size;
 u64 align;
 struct panfrost_gem_object *bo = to_panfrost_bo(obj);
 unsigned long color = bo->noexec ? PANFROST_BO_NOEXEC : 0;
 struct panfrost_file_priv *priv = file_priv->driver_priv;







 if (!bo->noexec)
  align = size >> PAGE_SHIFT;
 else
  align = size >= SZ_2M ? SZ_2M >> PAGE_SHIFT : 0;

 bo->mmu = &priv->mmu;
 spin_lock(&priv->mm_lock);
 ret = drm_mm_insert_node_generic(&priv->mm, &bo->node,
      size >> PAGE_SHIFT, align, color, 0);
 spin_unlock(&priv->mm_lock);
 if (ret)
  return ret;

 if (!bo->is_heap) {
  ret = panfrost_mmu_map(bo);
  if (ret) {
   spin_lock(&priv->mm_lock);
   drm_mm_remove_node(&bo->node);
   spin_unlock(&priv->mm_lock);
  }
 }
 return ret;
}
