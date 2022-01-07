
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct seq_file {int private; } ;
struct drm_printer {int dummy; } ;
struct drm_i915_private {int dummy; } ;
struct TYPE_2__ {int sseu; } ;


 TYPE_1__* RUNTIME_INFO (struct drm_i915_private*) ;
 struct drm_printer drm_seq_file_printer (struct seq_file*) ;
 int intel_device_info_dump_topology (int *,struct drm_printer*) ;
 struct drm_i915_private* node_to_i915 (int ) ;

__attribute__((used)) static int i915_rcs_topology(struct seq_file *m, void *unused)
{
 struct drm_i915_private *dev_priv = node_to_i915(m->private);
 struct drm_printer p = drm_seq_file_printer(m);

 intel_device_info_dump_topology(&RUNTIME_INFO(dev_priv)->sseu, &p);

 return 0;
}
