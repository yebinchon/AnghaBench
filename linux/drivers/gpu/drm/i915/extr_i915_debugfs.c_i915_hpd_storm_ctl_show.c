
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {struct drm_i915_private* private; } ;
struct i915_hotplug {int reenable_work; int hpd_storm_threshold; int hotplug_work; int dig_port_work; } ;
struct drm_i915_private {struct i915_hotplug hotplug; } ;


 int delayed_work_pending (int *) ;
 int flush_delayed_work (int *) ;
 int flush_work (int *) ;
 int intel_synchronize_irq (struct drm_i915_private*) ;
 int seq_printf (struct seq_file*,char*,int ) ;
 int yesno (int ) ;

__attribute__((used)) static int i915_hpd_storm_ctl_show(struct seq_file *m, void *data)
{
 struct drm_i915_private *dev_priv = m->private;
 struct i915_hotplug *hotplug = &dev_priv->hotplug;




 intel_synchronize_irq(dev_priv);
 flush_work(&dev_priv->hotplug.dig_port_work);
 flush_delayed_work(&dev_priv->hotplug.hotplug_work);

 seq_printf(m, "Threshold: %d\n", hotplug->hpd_storm_threshold);
 seq_printf(m, "Detected: %s\n",
     yesno(delayed_work_pending(&hotplug->reenable_work)));

 return 0;
}
