
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct drm_connector {int connector_type; int polled; } ;
struct gma_connector {struct drm_connector base; } ;
struct psb_intel_sdvo_connector {int output_flag; struct gma_connector base; } ;
struct drm_encoder {int encoder_type; } ;
struct TYPE_2__ {int clone_mask; struct drm_encoder base; } ;
struct psb_intel_sdvo {TYPE_1__ base; int controlled_output; } ;


 int DRM_CONNECTOR_POLL_CONNECT ;
 int DRM_MODE_CONNECTOR_VGA ;
 int DRM_MODE_ENCODER_DAC ;
 int GFP_KERNEL ;
 int INTEL_ANALOG_CLONE_BIT ;
 int INTEL_SDVO_NON_TV_CLONE_BIT ;
 int SDVO_OUTPUT_RGB0 ;
 int SDVO_OUTPUT_RGB1 ;
 struct psb_intel_sdvo_connector* kzalloc (int,int ) ;
 int psb_intel_sdvo_connector_init (struct psb_intel_sdvo_connector*,struct psb_intel_sdvo*) ;

__attribute__((used)) static bool
psb_intel_sdvo_analog_init(struct psb_intel_sdvo *psb_intel_sdvo, int device)
{
 struct drm_encoder *encoder = &psb_intel_sdvo->base.base;
 struct drm_connector *connector;
 struct gma_connector *intel_connector;
 struct psb_intel_sdvo_connector *psb_intel_sdvo_connector;

 psb_intel_sdvo_connector = kzalloc(sizeof(struct psb_intel_sdvo_connector), GFP_KERNEL);
 if (!psb_intel_sdvo_connector)
  return 0;

 intel_connector = &psb_intel_sdvo_connector->base;
 connector = &intel_connector->base;
 connector->polled = DRM_CONNECTOR_POLL_CONNECT;
 encoder->encoder_type = DRM_MODE_ENCODER_DAC;
 connector->connector_type = DRM_MODE_CONNECTOR_VGA;

 if (device == 0) {
  psb_intel_sdvo->controlled_output |= SDVO_OUTPUT_RGB0;
  psb_intel_sdvo_connector->output_flag = SDVO_OUTPUT_RGB0;
 } else if (device == 1) {
  psb_intel_sdvo->controlled_output |= SDVO_OUTPUT_RGB1;
  psb_intel_sdvo_connector->output_flag = SDVO_OUTPUT_RGB1;
 }

 psb_intel_sdvo->base.clone_mask = ((1 << INTEL_SDVO_NON_TV_CLONE_BIT) |
           (1 << INTEL_ANALOG_CLONE_BIT));

 psb_intel_sdvo_connector_init(psb_intel_sdvo_connector,
      psb_intel_sdvo);
 return 1;
}
