
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int type; } ;
union hdmi_infoframe {TYPE_2__ any; } ;
typedef scalar_t__ u8 ;
struct intel_encoder {int base; } ;
struct intel_digital_port {int (* write_infoframe ) (struct intel_encoder*,struct intel_crtc_state const*,int,scalar_t__*,scalar_t__) ;} ;
struct TYPE_3__ {int enable; } ;
struct intel_crtc_state {TYPE_1__ infoframes; } ;
typedef scalar_t__ ssize_t ;
typedef enum hdmi_infoframe_type { ____Placeholder_hdmi_infoframe_type } hdmi_infoframe_type ;
typedef int buffer ;


 int VIDEO_DIP_DATA_SIZE ;
 scalar_t__ WARN_ON (int) ;
 struct intel_digital_port* enc_to_dig_port (int *) ;
 scalar_t__ hdmi_infoframe_pack_only (union hdmi_infoframe const*,scalar_t__*,int) ;
 int intel_hdmi_infoframe_enable (int) ;
 int memmove (scalar_t__*,scalar_t__*,int) ;
 int stub1 (struct intel_encoder*,struct intel_crtc_state const*,int,scalar_t__*,scalar_t__) ;

__attribute__((used)) static void intel_write_infoframe(struct intel_encoder *encoder,
      const struct intel_crtc_state *crtc_state,
      enum hdmi_infoframe_type type,
      const union hdmi_infoframe *frame)
{
 struct intel_digital_port *intel_dig_port = enc_to_dig_port(&encoder->base);
 u8 buffer[VIDEO_DIP_DATA_SIZE];
 ssize_t len;

 if ((crtc_state->infoframes.enable &
      intel_hdmi_infoframe_enable(type)) == 0)
  return;

 if (WARN_ON(frame->any.type != type))
  return;


 len = hdmi_infoframe_pack_only(frame, buffer + 1, sizeof(buffer) - 1);
 if (WARN_ON(len < 0))
  return;


 memmove(&buffer[0], &buffer[1], 3);
 buffer[3] = 0;
 len++;

 intel_dig_port->write_infoframe(encoder, crtc_state, type, buffer, len);
}
