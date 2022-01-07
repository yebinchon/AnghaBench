
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct drm_connector {int connector_type; } ;
struct intel_connector {int polled; struct drm_connector base; } ;
struct intel_sdvo_connector {int output_flag; struct intel_connector base; } ;
struct drm_encoder {int encoder_type; } ;
struct TYPE_2__ {struct drm_encoder base; } ;
struct intel_sdvo {int controlled_output; TYPE_1__ base; } ;


 int DRM_CONNECTOR_POLL_CONNECT ;
 int DRM_DEBUG_KMS (char*,int) ;
 int DRM_MODE_CONNECTOR_VGA ;
 int DRM_MODE_ENCODER_DAC ;
 int SDVO_OUTPUT_RGB0 ;
 int SDVO_OUTPUT_RGB1 ;
 struct intel_sdvo_connector* intel_sdvo_connector_alloc () ;
 scalar_t__ intel_sdvo_connector_init (struct intel_sdvo_connector*,struct intel_sdvo*) ;
 int kfree (struct intel_sdvo_connector*) ;

__attribute__((used)) static bool
intel_sdvo_analog_init(struct intel_sdvo *intel_sdvo, int device)
{
 struct drm_encoder *encoder = &intel_sdvo->base.base;
 struct drm_connector *connector;
 struct intel_connector *intel_connector;
 struct intel_sdvo_connector *intel_sdvo_connector;

 DRM_DEBUG_KMS("initialising analog device %d\n", device);

 intel_sdvo_connector = intel_sdvo_connector_alloc();
 if (!intel_sdvo_connector)
  return 0;

 intel_connector = &intel_sdvo_connector->base;
 connector = &intel_connector->base;
 intel_connector->polled = DRM_CONNECTOR_POLL_CONNECT;
 encoder->encoder_type = DRM_MODE_ENCODER_DAC;
 connector->connector_type = DRM_MODE_CONNECTOR_VGA;

 if (device == 0) {
  intel_sdvo->controlled_output |= SDVO_OUTPUT_RGB0;
  intel_sdvo_connector->output_flag = SDVO_OUTPUT_RGB0;
 } else if (device == 1) {
  intel_sdvo->controlled_output |= SDVO_OUTPUT_RGB1;
  intel_sdvo_connector->output_flag = SDVO_OUTPUT_RGB1;
 }

 if (intel_sdvo_connector_init(intel_sdvo_connector, intel_sdvo) < 0) {
  kfree(intel_sdvo_connector);
  return 0;
 }

 return 1;
}
