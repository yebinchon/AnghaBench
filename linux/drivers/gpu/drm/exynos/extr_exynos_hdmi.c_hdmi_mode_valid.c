
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hdmi_context {int dev; } ;
struct drm_display_mode {int flags; int clock; int vrefresh; int vdisplay; int hdisplay; } ;
struct drm_connector {int dummy; } ;


 int DRM_DEV_DEBUG_KMS (int ,char*,int ,int ,int ,int,int) ;
 int DRM_MODE_FLAG_INTERLACE ;
 int MODE_BAD ;
 int MODE_OK ;
 struct hdmi_context* connector_to_hdmi (struct drm_connector*) ;
 int hdmi_find_phy_conf (struct hdmi_context*,int) ;

__attribute__((used)) static int hdmi_mode_valid(struct drm_connector *connector,
   struct drm_display_mode *mode)
{
 struct hdmi_context *hdata = connector_to_hdmi(connector);
 int ret;

 DRM_DEV_DEBUG_KMS(hdata->dev,
     "xres=%d, yres=%d, refresh=%d, intl=%d clock=%d\n",
     mode->hdisplay, mode->vdisplay, mode->vrefresh,
     (mode->flags & DRM_MODE_FLAG_INTERLACE) ? 1 :
     0, mode->clock * 1000);

 ret = hdmi_find_phy_conf(hdata, mode->clock * 1000);
 if (ret < 0)
  return MODE_BAD;

 return MODE_OK;
}
