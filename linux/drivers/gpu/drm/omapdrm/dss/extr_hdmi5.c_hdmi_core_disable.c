
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct omap_hdmi {int lock; } ;


 int DSSDBG (char*) ;
 int hdmi_power_off_core (struct omap_hdmi*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static void hdmi_core_disable(struct omap_hdmi *hdmi)
{
 DSSDBG("Enter omapdss_hdmi_core_disable\n");

 mutex_lock(&hdmi->lock);

 hdmi_power_off_core(hdmi);

 mutex_unlock(&hdmi->lock);
}
