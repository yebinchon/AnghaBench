
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef int u32 ;
struct psb_intel_sdvo {int attached_output; int sdvo_reg; } ;
struct drm_encoder {struct drm_device* dev; } ;
struct drm_device {int dummy; } ;


 int DRM_DEBUG (char*,...) ;
 int DRM_DEBUG_KMS (char*,int ) ;


 scalar_t__ IS_MRST (struct drm_device*) ;
 int REG_READ (int ) ;
 int REG_READ_AUX (int ) ;
 scalar_t__ SDVO_CMD_STATUS_SUCCESS ;
 int SDVO_ENABLE ;
 int SDVO_NAME (struct psb_intel_sdvo*) ;
 int gma_wait_for_vblank (struct drm_device*) ;
 scalar_t__ psb_intel_sdvo_get_trained_inputs (struct psb_intel_sdvo*,int*,int*) ;
 int psb_intel_sdvo_set_active_outputs (struct psb_intel_sdvo*,int ) ;
 int psb_intel_sdvo_set_encoder_power_state (struct psb_intel_sdvo*,int) ;
 int psb_intel_sdvo_write_sdvox (struct psb_intel_sdvo*,int) ;
 struct psb_intel_sdvo* to_psb_intel_sdvo (struct drm_encoder*) ;

__attribute__((used)) static void psb_intel_sdvo_dpms(struct drm_encoder *encoder, int mode)
{
 struct drm_device *dev = encoder->dev;
 struct psb_intel_sdvo *psb_intel_sdvo = to_psb_intel_sdvo(encoder);
 u32 temp;
 int i;
 int need_aux = IS_MRST(dev) ? 1 : 0;

 switch (mode) {
 case 128:
  DRM_DEBUG("DPMS_ON");
  break;
 case 129:
  DRM_DEBUG("DPMS_OFF");
  break;
 default:
  DRM_DEBUG("DPMS: %d", mode);
 }

 if (mode != 128) {
  psb_intel_sdvo_set_active_outputs(psb_intel_sdvo, 0);
  if (0)
   psb_intel_sdvo_set_encoder_power_state(psb_intel_sdvo, mode);

  if (mode == 129) {
   if (need_aux)
    temp = REG_READ_AUX(psb_intel_sdvo->sdvo_reg);
   else
    temp = REG_READ(psb_intel_sdvo->sdvo_reg);

   if ((temp & SDVO_ENABLE) != 0) {
    psb_intel_sdvo_write_sdvox(psb_intel_sdvo, temp & ~SDVO_ENABLE);
   }
  }
 } else {
  bool input1, input2;
  u8 status;

  if (need_aux)
   temp = REG_READ_AUX(psb_intel_sdvo->sdvo_reg);
  else
   temp = REG_READ(psb_intel_sdvo->sdvo_reg);

  if ((temp & SDVO_ENABLE) == 0)
   psb_intel_sdvo_write_sdvox(psb_intel_sdvo, temp | SDVO_ENABLE);

  for (i = 0; i < 2; i++)
   gma_wait_for_vblank(dev);

  status = psb_intel_sdvo_get_trained_inputs(psb_intel_sdvo, &input1, &input2);




  if (status == SDVO_CMD_STATUS_SUCCESS && !input1) {
   DRM_DEBUG_KMS("First %s output reported failure to "
     "sync\n", SDVO_NAME(psb_intel_sdvo));
  }

  if (0)
   psb_intel_sdvo_set_encoder_power_state(psb_intel_sdvo, mode);
  psb_intel_sdvo_set_active_outputs(psb_intel_sdvo, psb_intel_sdvo->attached_output);
 }
 return;
}
