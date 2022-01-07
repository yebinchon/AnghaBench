
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct sti_hdmi_connector {struct drm_property* colorspace_property; struct sti_hdmi* hdmi; } ;
struct sti_hdmi {int colorspace; } ;
struct drm_property {int dummy; } ;
struct drm_connector_state {int dummy; } ;
struct drm_connector {int dummy; } ;


 int DRM_ERROR (char*) ;
 int EINVAL ;
 struct sti_hdmi_connector* to_sti_hdmi_connector (struct drm_connector*) ;

__attribute__((used)) static int
sti_hdmi_connector_set_property(struct drm_connector *connector,
    struct drm_connector_state *state,
    struct drm_property *property,
    uint64_t val)
{
 struct sti_hdmi_connector *hdmi_connector
  = to_sti_hdmi_connector(connector);
 struct sti_hdmi *hdmi = hdmi_connector->hdmi;

 if (property == hdmi_connector->colorspace_property) {
  hdmi->colorspace = val;
  return 0;
 }

 DRM_ERROR("failed to set hdmi connector property\n");
 return -EINVAL;
}
