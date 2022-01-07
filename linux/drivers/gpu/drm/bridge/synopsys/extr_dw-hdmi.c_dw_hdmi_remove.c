
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dw_hdmi {int bridge; } ;


 int __dw_hdmi_remove (struct dw_hdmi*) ;
 int drm_bridge_remove (int *) ;

void dw_hdmi_remove(struct dw_hdmi *hdmi)
{
 drm_bridge_remove(&hdmi->bridge);

 __dw_hdmi_remove(hdmi);
}
