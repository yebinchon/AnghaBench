
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sti_hdmi_connector {struct sti_hdmi* hdmi; } ;
struct sti_hdmi {TYPE_1__* drm_dev; } ;
struct drm_connector {int dummy; } ;
struct TYPE_2__ {int primary; } ;


 int DRM_ERROR (char*) ;
 int EINVAL ;
 scalar_t__ hdmi_debugfs_init (struct sti_hdmi*,int ) ;
 struct sti_hdmi_connector* to_sti_hdmi_connector (struct drm_connector*) ;

__attribute__((used)) static int sti_hdmi_late_register(struct drm_connector *connector)
{
 struct sti_hdmi_connector *hdmi_connector
  = to_sti_hdmi_connector(connector);
 struct sti_hdmi *hdmi = hdmi_connector->hdmi;

 if (hdmi_debugfs_init(hdmi, hdmi->drm_dev->primary)) {
  DRM_ERROR("HDMI debugfs setup failed\n");
  return -EINVAL;
 }

 return 0;
}
