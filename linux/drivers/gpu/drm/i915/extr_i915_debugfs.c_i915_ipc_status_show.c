
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {struct drm_i915_private* private; } ;
struct drm_i915_private {int ipc_enabled; } ;


 int seq_printf (struct seq_file*,char*,int ) ;
 int yesno (int ) ;

__attribute__((used)) static int i915_ipc_status_show(struct seq_file *m, void *data)
{
 struct drm_i915_private *dev_priv = m->private;

 seq_printf(m, "Isochronous Priority Control: %s\n",
   yesno(dev_priv->ipc_enabled));
 return 0;
}
