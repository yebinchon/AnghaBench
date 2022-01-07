
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int shrink_count; int free_count; int free_list; } ;
struct drm_i915_private {TYPE_1__ mm; } ;


 int GEM_BUG_ON (int) ;
 int WARN_ON (int ) ;
 int atomic_read (int *) ;
 int i915_gem_drain_freed_objects (struct drm_i915_private*) ;
 int i915_gemfs_fini (struct drm_i915_private*) ;
 int llist_empty (int *) ;

void i915_gem_cleanup_early(struct drm_i915_private *dev_priv)
{
 i915_gem_drain_freed_objects(dev_priv);
 GEM_BUG_ON(!llist_empty(&dev_priv->mm.free_list));
 GEM_BUG_ON(atomic_read(&dev_priv->mm.free_count));
 WARN_ON(dev_priv->mm.shrink_count);

 i915_gemfs_fini(dev_priv);
}
