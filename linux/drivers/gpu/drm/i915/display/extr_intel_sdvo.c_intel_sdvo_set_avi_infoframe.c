
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ type; } ;
union hdmi_infoframe {TYPE_2__ any; } ;
typedef int u8 ;
struct intel_sdvo {int dummy; } ;
struct TYPE_3__ {int enable; union hdmi_infoframe avi; } ;
struct intel_crtc_state {TYPE_1__ infoframes; } ;
typedef scalar_t__ ssize_t ;
typedef int sdvo_data ;


 int AVI ;
 int HDMI_INFOFRAME_SIZE (int ) ;
 scalar_t__ HDMI_INFOFRAME_TYPE_AVI ;
 int SDVO_HBUF_INDEX_AVI_IF ;
 int SDVO_HBUF_TX_VSYNC ;
 scalar_t__ WARN_ON (int) ;
 scalar_t__ hdmi_infoframe_pack_only (union hdmi_infoframe const*,int *,int) ;
 int intel_hdmi_infoframe_enable (scalar_t__) ;
 int intel_sdvo_write_infoframe (struct intel_sdvo*,int ,int ,int *,scalar_t__) ;

__attribute__((used)) static bool intel_sdvo_set_avi_infoframe(struct intel_sdvo *intel_sdvo,
      const struct intel_crtc_state *crtc_state)
{
 u8 sdvo_data[HDMI_INFOFRAME_SIZE(AVI)];
 const union hdmi_infoframe *frame = &crtc_state->infoframes.avi;
 ssize_t len;

 if ((crtc_state->infoframes.enable &
      intel_hdmi_infoframe_enable(HDMI_INFOFRAME_TYPE_AVI)) == 0)
  return 1;

 if (WARN_ON(frame->any.type != HDMI_INFOFRAME_TYPE_AVI))
  return 0;

 len = hdmi_infoframe_pack_only(frame, sdvo_data, sizeof(sdvo_data));
 if (WARN_ON(len < 0))
  return 0;

 return intel_sdvo_write_infoframe(intel_sdvo, SDVO_HBUF_INDEX_AVI_IF,
       SDVO_HBUF_TX_VSYNC,
       sdvo_data, len);
}
