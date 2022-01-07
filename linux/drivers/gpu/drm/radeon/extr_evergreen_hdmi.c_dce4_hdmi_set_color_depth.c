
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef scalar_t__ u32 ;
struct radeon_device {int dummy; } ;
struct drm_encoder {struct drm_device* dev; } ;
struct drm_device {struct radeon_device* dev_private; } ;
struct drm_connector {int name; } ;


 int DRM_DEBUG (char*,int ,...) ;
 int HDMI_30BIT_DEEP_COLOR ;
 int HDMI_36BIT_DEEP_COLOR ;
 scalar_t__ HDMI_CONTROL ;
 int HDMI_DEEP_COLOR_DEPTH (int ) ;
 int HDMI_DEEP_COLOR_DEPTH_MASK ;
 int HDMI_DEEP_COLOR_ENABLE ;
 int RREG32 (scalar_t__) ;
 int WREG32 (scalar_t__,int ) ;
 struct drm_connector* radeon_get_connector_for_encoder (struct drm_encoder*) ;

void dce4_hdmi_set_color_depth(struct drm_encoder *encoder, u32 offset, int bpc)
{
 struct drm_device *dev = encoder->dev;
 struct radeon_device *rdev = dev->dev_private;
 struct drm_connector *connector = radeon_get_connector_for_encoder(encoder);
 uint32_t val;

 val = RREG32(HDMI_CONTROL + offset);
 val &= ~HDMI_DEEP_COLOR_ENABLE;
 val &= ~HDMI_DEEP_COLOR_DEPTH_MASK;

 switch (bpc) {
  case 0:
  case 6:
  case 8:
  case 16:
  default:
   DRM_DEBUG("%s: Disabling hdmi deep color for %d bpc.\n",
      connector->name, bpc);
   break;
  case 10:
   val |= HDMI_DEEP_COLOR_ENABLE;
   val |= HDMI_DEEP_COLOR_DEPTH(HDMI_30BIT_DEEP_COLOR);
   DRM_DEBUG("%s: Enabling hdmi deep color 30 for 10 bpc.\n",
      connector->name);
   break;
  case 12:
   val |= HDMI_DEEP_COLOR_ENABLE;
   val |= HDMI_DEEP_COLOR_DEPTH(HDMI_36BIT_DEEP_COLOR);
   DRM_DEBUG("%s: Enabling hdmi deep color 36 for 12 bpc.\n",
      connector->name);
   break;
 }

 WREG32(HDMI_CONTROL + offset, val);
}
