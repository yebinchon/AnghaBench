
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int type; } ;
union hdmi_infoframe {TYPE_2__ any; } ;
typedef int u8 ;
struct intel_encoder {int base; } ;
struct intel_digital_port {int (* read_infoframe ) (struct intel_encoder*,struct intel_crtc_state const*,int,int *,int) ;} ;
struct TYPE_3__ {int enable; } ;
struct intel_crtc_state {TYPE_1__ infoframes; } ;
typedef enum hdmi_infoframe_type { ____Placeholder_hdmi_infoframe_type } hdmi_infoframe_type ;
typedef int buffer ;


 int DRM_DEBUG_KMS (char*,int,...) ;
 int VIDEO_DIP_DATA_SIZE ;
 struct intel_digital_port* enc_to_dig_port (int *) ;
 int hdmi_infoframe_unpack (union hdmi_infoframe*,int *,int) ;
 int intel_hdmi_infoframe_enable (int) ;
 int memmove (int *,int *,int) ;
 int stub1 (struct intel_encoder*,struct intel_crtc_state const*,int,int *,int) ;

void intel_read_infoframe(struct intel_encoder *encoder,
     const struct intel_crtc_state *crtc_state,
     enum hdmi_infoframe_type type,
     union hdmi_infoframe *frame)
{
 struct intel_digital_port *intel_dig_port = enc_to_dig_port(&encoder->base);
 u8 buffer[VIDEO_DIP_DATA_SIZE];
 int ret;

 if ((crtc_state->infoframes.enable &
      intel_hdmi_infoframe_enable(type)) == 0)
  return;

 intel_dig_port->read_infoframe(encoder, crtc_state,
           type, buffer, sizeof(buffer));


 memmove(&buffer[1], &buffer[0], 3);


 ret = hdmi_infoframe_unpack(frame, buffer + 1, sizeof(buffer) - 1);
 if (ret) {
  DRM_DEBUG_KMS("Failed to unpack infoframe type 0x%02x\n", type);
  return;
 }

 if (frame->any.type != type)
  DRM_DEBUG_KMS("Found the wrong infoframe type 0x%x (expected 0x%02x)\n",
         frame->any.type, type);
}
