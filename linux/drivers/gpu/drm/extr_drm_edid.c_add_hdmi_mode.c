
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u8 ;
struct drm_display_mode {int dummy; } ;
struct drm_device {int dummy; } ;
struct drm_connector {struct drm_device* dev; } ;


 int DRM_ERROR (char*,size_t) ;
 struct drm_display_mode* drm_mode_duplicate (struct drm_device*,int *) ;
 int drm_mode_probed_add (struct drm_connector*,struct drm_display_mode*) ;
 int drm_valid_hdmi_vic (size_t) ;
 int * edid_4k_modes ;

__attribute__((used)) static int add_hdmi_mode(struct drm_connector *connector, u8 vic)
{
 struct drm_device *dev = connector->dev;
 struct drm_display_mode *newmode;

 if (!drm_valid_hdmi_vic(vic)) {
  DRM_ERROR("Unknown HDMI VIC: %d\n", vic);
  return 0;
 }

 newmode = drm_mode_duplicate(dev, &edid_4k_modes[vic]);
 if (!newmode)
  return 0;

 drm_mode_probed_add(connector, newmode);

 return 1;
}
