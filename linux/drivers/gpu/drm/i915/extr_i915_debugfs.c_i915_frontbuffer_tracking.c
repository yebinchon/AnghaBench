
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct seq_file {int private; } ;
struct TYPE_2__ {int flip_bits; int busy_bits; } ;
struct drm_i915_private {TYPE_1__ fb_tracking; } ;


 struct drm_i915_private* node_to_i915 (int ) ;
 int seq_printf (struct seq_file*,char*,int ) ;

__attribute__((used)) static int i915_frontbuffer_tracking(struct seq_file *m, void *unused)
{
 struct drm_i915_private *dev_priv = node_to_i915(m->private);

 seq_printf(m, "FB tracking busy bits: 0x%08x\n",
     dev_priv->fb_tracking.busy_bits);

 seq_printf(m, "FB tracking flip bits: 0x%08x\n",
     dev_priv->fb_tracking.flip_bits);

 return 0;
}
