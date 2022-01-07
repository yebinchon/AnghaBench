
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {struct omap_hdmi* private; } ;
struct omap_hdmi {int lock; int core; int phy; int pll; int wp; } ;


 int hdmi5_core_dump (int *,struct seq_file*) ;
 int hdmi_phy_dump (int *,struct seq_file*) ;
 int hdmi_pll_dump (int *,struct seq_file*) ;
 scalar_t__ hdmi_runtime_get (struct omap_hdmi*) ;
 int hdmi_runtime_put (struct omap_hdmi*) ;
 int hdmi_wp_dump (int *,struct seq_file*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int hdmi_dump_regs(struct seq_file *s, void *p)
{
 struct omap_hdmi *hdmi = s->private;

 mutex_lock(&hdmi->lock);

 if (hdmi_runtime_get(hdmi)) {
  mutex_unlock(&hdmi->lock);
  return 0;
 }

 hdmi_wp_dump(&hdmi->wp, s);
 hdmi_pll_dump(&hdmi->pll, s);
 hdmi_phy_dump(&hdmi->phy, s);
 hdmi5_core_dump(&hdmi->core, s);

 hdmi_runtime_put(hdmi);
 mutex_unlock(&hdmi->lock);
 return 0;
}
