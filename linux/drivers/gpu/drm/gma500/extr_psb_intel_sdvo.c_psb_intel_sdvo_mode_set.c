
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct psb_intel_sdvo_in_out_map {scalar_t__ in1; int in0; } ;
struct TYPE_2__ {int sdvo_flags; } ;
struct psb_intel_sdvo_dtd {TYPE_1__ part2; } ;
struct psb_intel_sdvo {int sdvo_reg; scalar_t__ has_hdmi_audio; scalar_t__ is_tv; scalar_t__ has_hdmi_monitor; int attached_output; struct psb_intel_sdvo_dtd input_dtd; scalar_t__ is_lvds; } ;
struct gma_crtc {int pipe; } ;
struct drm_encoder {struct drm_crtc* crtc; struct drm_device* dev; } ;
struct drm_display_mode {int dummy; } ;
struct drm_device {int dummy; } ;
struct drm_crtc {int dummy; } ;
typedef int in_out ;


 scalar_t__ IS_MRST (struct drm_device*) ;
 int REG_READ (int) ;
 int REG_READ_AUX (int) ;

 int SDVOB_PRESERVE_MASK ;

 int SDVOC_PRESERVE_MASK ;
 int SDVO_AUDIO_ENABLE ;
 int SDVO_BORDER_ENABLE ;
 int SDVO_CLOCK_RATE_MULT_1X ;
 int SDVO_CLOCK_RATE_MULT_2X ;
 int SDVO_CLOCK_RATE_MULT_4X ;
 int SDVO_CMD_SET_IN_OUT_MAP ;
 int SDVO_COLORIMETRY_RGB256 ;
 int SDVO_ENCODE_DVI ;
 int SDVO_ENCODE_HDMI ;
 int SDVO_NEED_TO_STALL ;
 int SDVO_PIPE_B_SELECT ;
 int SDVO_STALL_SELECT ;
 int psb_intel_mode_get_pixel_multiplier (struct drm_display_mode*) ;
 int psb_intel_sdvo_get_dtd_from_mode (struct psb_intel_sdvo_dtd*,struct drm_display_mode*) ;
 int psb_intel_sdvo_set_avi_infoframe (struct psb_intel_sdvo*) ;
 int psb_intel_sdvo_set_clock_rate_mult (struct psb_intel_sdvo*,int) ;
 int psb_intel_sdvo_set_colorimetry (struct psb_intel_sdvo*,int ) ;
 int psb_intel_sdvo_set_encode (struct psb_intel_sdvo*,int ) ;
 int psb_intel_sdvo_set_input_timing (struct psb_intel_sdvo*,struct psb_intel_sdvo_dtd*) ;
 int psb_intel_sdvo_set_output_timing (struct psb_intel_sdvo*,struct psb_intel_sdvo_dtd*) ;
 int psb_intel_sdvo_set_target_input (struct psb_intel_sdvo*) ;
 int psb_intel_sdvo_set_target_output (struct psb_intel_sdvo*,int ) ;
 int psb_intel_sdvo_set_tv_format (struct psb_intel_sdvo*) ;
 int psb_intel_sdvo_set_value (struct psb_intel_sdvo*,int ,struct psb_intel_sdvo_in_out_map*,int) ;
 int psb_intel_sdvo_write_sdvox (struct psb_intel_sdvo*,int) ;
 struct gma_crtc* to_gma_crtc (struct drm_crtc*) ;
 struct psb_intel_sdvo* to_psb_intel_sdvo (struct drm_encoder*) ;

__attribute__((used)) static void psb_intel_sdvo_mode_set(struct drm_encoder *encoder,
    struct drm_display_mode *mode,
    struct drm_display_mode *adjusted_mode)
{
 struct drm_device *dev = encoder->dev;
 struct drm_crtc *crtc = encoder->crtc;
 struct gma_crtc *gma_crtc = to_gma_crtc(crtc);
 struct psb_intel_sdvo *psb_intel_sdvo = to_psb_intel_sdvo(encoder);
 u32 sdvox;
 struct psb_intel_sdvo_in_out_map in_out;
 struct psb_intel_sdvo_dtd input_dtd;
 int pixel_multiplier = psb_intel_mode_get_pixel_multiplier(adjusted_mode);
 int rate;
 int need_aux = IS_MRST(dev) ? 1 : 0;

 if (!mode)
  return;







 in_out.in0 = psb_intel_sdvo->attached_output;
 in_out.in1 = 0;

 psb_intel_sdvo_set_value(psb_intel_sdvo,
        SDVO_CMD_SET_IN_OUT_MAP,
        &in_out, sizeof(in_out));


 if (!psb_intel_sdvo_set_target_output(psb_intel_sdvo,
       psb_intel_sdvo->attached_output))
  return;




 if (psb_intel_sdvo->is_tv || psb_intel_sdvo->is_lvds) {
  input_dtd = psb_intel_sdvo->input_dtd;
 } else {

  if (!psb_intel_sdvo_set_target_output(psb_intel_sdvo,
        psb_intel_sdvo->attached_output))
   return;

  psb_intel_sdvo_get_dtd_from_mode(&input_dtd, adjusted_mode);
  (void) psb_intel_sdvo_set_output_timing(psb_intel_sdvo, &input_dtd);
 }


 if (!psb_intel_sdvo_set_target_input(psb_intel_sdvo))
  return;

 if (psb_intel_sdvo->has_hdmi_monitor) {
  psb_intel_sdvo_set_encode(psb_intel_sdvo, SDVO_ENCODE_HDMI);
  psb_intel_sdvo_set_colorimetry(psb_intel_sdvo,
        SDVO_COLORIMETRY_RGB256);
  psb_intel_sdvo_set_avi_infoframe(psb_intel_sdvo);
 } else
  psb_intel_sdvo_set_encode(psb_intel_sdvo, SDVO_ENCODE_DVI);

 if (psb_intel_sdvo->is_tv &&
     !psb_intel_sdvo_set_tv_format(psb_intel_sdvo))
  return;

 (void) psb_intel_sdvo_set_input_timing(psb_intel_sdvo, &input_dtd);

 switch (pixel_multiplier) {
 default:
 case 1: rate = SDVO_CLOCK_RATE_MULT_1X; break;
 case 2: rate = SDVO_CLOCK_RATE_MULT_2X; break;
 case 4: rate = SDVO_CLOCK_RATE_MULT_4X; break;
 }
 if (!psb_intel_sdvo_set_clock_rate_mult(psb_intel_sdvo, rate))
  return;


 if (need_aux)
  sdvox = REG_READ_AUX(psb_intel_sdvo->sdvo_reg);
 else
  sdvox = REG_READ(psb_intel_sdvo->sdvo_reg);

 switch (psb_intel_sdvo->sdvo_reg) {
 case 129:
  sdvox &= SDVOB_PRESERVE_MASK;
  break;
 case 128:
  sdvox &= SDVOC_PRESERVE_MASK;
  break;
 }
 sdvox |= (9 << 19) | SDVO_BORDER_ENABLE;

 if (gma_crtc->pipe == 1)
  sdvox |= SDVO_PIPE_B_SELECT;
 if (psb_intel_sdvo->has_hdmi_audio)
  sdvox |= SDVO_AUDIO_ENABLE;





 if (input_dtd.part2.sdvo_flags & SDVO_NEED_TO_STALL)
  sdvox |= SDVO_STALL_SELECT;
 psb_intel_sdvo_write_sdvox(psb_intel_sdvo, sdvox);
}
