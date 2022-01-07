
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int skl_latency; } ;
struct drm_i915_private {TYPE_1__ wm; } ;


 int intel_print_wm_latency (struct drm_i915_private*,char*,int ) ;
 int intel_read_wm_latency (struct drm_i915_private*,int ) ;

__attribute__((used)) static void skl_setup_wm_latency(struct drm_i915_private *dev_priv)
{
 intel_read_wm_latency(dev_priv, dev_priv->wm.skl_latency);
 intel_print_wm_latency(dev_priv, "Gen9 Plane", dev_priv->wm.skl_latency);
}
