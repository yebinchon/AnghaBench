
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct intel_encoder {int dummy; } ;
struct hdmi_spd_infoframe {int sdi; } ;
struct TYPE_3__ {struct hdmi_spd_infoframe spd; } ;
struct TYPE_4__ {int enable; TYPE_1__ spd; } ;
struct intel_crtc_state {TYPE_2__ infoframes; int has_infoframe; } ;
struct drm_connector_state {int dummy; } ;


 int HDMI_INFOFRAME_TYPE_SPD ;
 int HDMI_SPD_SDI_PC ;
 scalar_t__ WARN_ON (int) ;
 int hdmi_spd_infoframe_check (struct hdmi_spd_infoframe*) ;
 int hdmi_spd_infoframe_init (struct hdmi_spd_infoframe*,char*,char*) ;
 int intel_hdmi_infoframe_enable (int ) ;

__attribute__((used)) static bool
intel_hdmi_compute_spd_infoframe(struct intel_encoder *encoder,
     struct intel_crtc_state *crtc_state,
     struct drm_connector_state *conn_state)
{
 struct hdmi_spd_infoframe *frame = &crtc_state->infoframes.spd.spd;
 int ret;

 if (!crtc_state->has_infoframe)
  return 1;

 crtc_state->infoframes.enable |=
  intel_hdmi_infoframe_enable(HDMI_INFOFRAME_TYPE_SPD);

 ret = hdmi_spd_infoframe_init(frame, "Intel", "Integrated gfx");
 if (WARN_ON(ret))
  return 0;

 frame->sdi = HDMI_SPD_SDI_PC;

 ret = hdmi_spd_infoframe_check(frame);
 if (WARN_ON(ret))
  return 0;

 return 1;
}
