
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int initialized; int ops; int sysctl_header; int metrics_idr; } ;
struct drm_i915_private {TYPE_1__ perf; } ;


 int destroy_config ;
 int idr_destroy (int *) ;
 int idr_for_each (int *,int ,struct drm_i915_private*) ;
 int memset (int *,int ,int) ;
 int unregister_sysctl_table (int ) ;

void i915_perf_fini(struct drm_i915_private *dev_priv)
{
 if (!dev_priv->perf.initialized)
  return;

 idr_for_each(&dev_priv->perf.metrics_idr, destroy_config, dev_priv);
 idr_destroy(&dev_priv->perf.metrics_idr);

 unregister_sysctl_table(dev_priv->perf.sysctl_header);

 memset(&dev_priv->perf.ops, 0, sizeof(dev_priv->perf.ops));

 dev_priv->perf.initialized = 0;
}
