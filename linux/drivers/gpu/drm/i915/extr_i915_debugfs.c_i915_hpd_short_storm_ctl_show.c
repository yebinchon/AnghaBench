
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct seq_file {struct drm_i915_private* private; } ;
struct TYPE_2__ {int hpd_short_storm_enabled; } ;
struct drm_i915_private {TYPE_1__ hotplug; } ;


 int seq_printf (struct seq_file*,char*,int ) ;
 int yesno (int ) ;

__attribute__((used)) static int i915_hpd_short_storm_ctl_show(struct seq_file *m, void *data)
{
 struct drm_i915_private *dev_priv = m->private;

 seq_printf(m, "Enabled: %s\n",
     yesno(dev_priv->hotplug.hpd_short_storm_enabled));

 return 0;
}
