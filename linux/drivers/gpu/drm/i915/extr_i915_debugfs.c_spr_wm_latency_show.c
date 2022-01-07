
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct seq_file {struct drm_i915_private* private; } ;
struct TYPE_2__ {int * spr_latency; int * skl_latency; } ;
struct drm_i915_private {TYPE_1__ wm; } ;


 int INTEL_GEN (struct drm_i915_private*) ;
 int wm_latency_show (struct seq_file*,int const*) ;

__attribute__((used)) static int spr_wm_latency_show(struct seq_file *m, void *data)
{
 struct drm_i915_private *dev_priv = m->private;
 const u16 *latencies;

 if (INTEL_GEN(dev_priv) >= 9)
  latencies = dev_priv->wm.skl_latency;
 else
  latencies = dev_priv->wm.spr_latency;

 wm_latency_show(m, latencies);

 return 0;
}
