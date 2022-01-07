
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ max_tmds_clock; int type; } ;
struct intel_hdmi {int has_hdmi_sink; int has_audio; TYPE_1__ dp_dual_mode; } ;
struct drm_connector {int dummy; } ;
struct TYPE_4__ {int * detect_edid; } ;


 int DRM_DP_DUAL_MODE_NONE ;
 struct intel_hdmi* intel_attached_hdmi (struct drm_connector*) ;
 int kfree (int *) ;
 TYPE_2__* to_intel_connector (struct drm_connector*) ;

__attribute__((used)) static void
intel_hdmi_unset_edid(struct drm_connector *connector)
{
 struct intel_hdmi *intel_hdmi = intel_attached_hdmi(connector);

 intel_hdmi->has_hdmi_sink = 0;
 intel_hdmi->has_audio = 0;

 intel_hdmi->dp_dual_mode.type = DRM_DP_DUAL_MODE_NONE;
 intel_hdmi->dp_dual_mode.max_tmds_clock = 0;

 kfree(to_intel_connector(connector)->detect_edid);
 to_intel_connector(connector)->detect_edid = ((void*)0);
}
