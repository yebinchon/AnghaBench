
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * dp_wq; } ;
struct drm_i915_private {int * wq; TYPE_1__ hotplug; } ;


 int DRM_ERROR (char*) ;
 int ENOMEM ;
 void* alloc_ordered_workqueue (char*,int ) ;
 int destroy_workqueue (int *) ;

__attribute__((used)) static int i915_workqueues_init(struct drm_i915_private *dev_priv)
{
 dev_priv->wq = alloc_ordered_workqueue("i915", 0);
 if (dev_priv->wq == ((void*)0))
  goto out_err;

 dev_priv->hotplug.dp_wq = alloc_ordered_workqueue("i915-dp", 0);
 if (dev_priv->hotplug.dp_wq == ((void*)0))
  goto out_free_wq;

 return 0;

out_free_wq:
 destroy_workqueue(dev_priv->wq);
out_err:
 DRM_ERROR("Failed to allocate workqueues.\n");

 return -ENOMEM;
}
