
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct omap_hdmi {int lock; } ;


 int DSSDBG (char*) ;
 int DSSERR (char*) ;
 int hdmi_power_on_core (struct omap_hdmi*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int hdmi_core_enable(struct omap_hdmi *hdmi)
{
 int r = 0;

 DSSDBG("ENTER omapdss_hdmi_core_enable\n");

 mutex_lock(&hdmi->lock);

 r = hdmi_power_on_core(hdmi);
 if (r) {
  DSSERR("failed to power on device\n");
  goto err0;
 }

 mutex_unlock(&hdmi->lock);
 return 0;

err0:
 mutex_unlock(&hdmi->lock);
 return r;
}
