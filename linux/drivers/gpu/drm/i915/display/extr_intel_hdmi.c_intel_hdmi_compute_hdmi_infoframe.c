
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct intel_encoder {int dummy; } ;
struct TYPE_6__ {int adjusted_mode; } ;
struct hdmi_vendor_infoframe {int dummy; } ;
struct TYPE_7__ {struct hdmi_vendor_infoframe hdmi; } ;
struct TYPE_8__ {TYPE_2__ vendor; } ;
struct TYPE_9__ {int enable; TYPE_3__ hdmi; } ;
struct intel_crtc_state {TYPE_1__ base; TYPE_4__ infoframes; int has_infoframe; } ;
struct drm_display_info {int has_hdmi_infoframe; } ;
struct drm_connector_state {TYPE_5__* connector; } ;
struct TYPE_10__ {struct drm_display_info display_info; } ;


 int HDMI_INFOFRAME_TYPE_VENDOR ;
 scalar_t__ WARN_ON (int) ;
 int drm_hdmi_vendor_infoframe_from_display_mode (struct hdmi_vendor_infoframe*,TYPE_5__*,int *) ;
 int hdmi_vendor_infoframe_check (struct hdmi_vendor_infoframe*) ;
 int intel_hdmi_infoframe_enable (int ) ;

__attribute__((used)) static bool
intel_hdmi_compute_hdmi_infoframe(struct intel_encoder *encoder,
      struct intel_crtc_state *crtc_state,
      struct drm_connector_state *conn_state)
{
 struct hdmi_vendor_infoframe *frame =
  &crtc_state->infoframes.hdmi.vendor.hdmi;
 const struct drm_display_info *info =
  &conn_state->connector->display_info;
 int ret;

 if (!crtc_state->has_infoframe || !info->has_hdmi_infoframe)
  return 1;

 crtc_state->infoframes.enable |=
  intel_hdmi_infoframe_enable(HDMI_INFOFRAME_TYPE_VENDOR);

 ret = drm_hdmi_vendor_infoframe_from_display_mode(frame,
         conn_state->connector,
         &crtc_state->base.adjusted_mode);
 if (WARN_ON(ret))
  return 0;

 ret = hdmi_vendor_infoframe_check(frame);
 if (WARN_ON(ret))
  return 0;

 return 1;
}
