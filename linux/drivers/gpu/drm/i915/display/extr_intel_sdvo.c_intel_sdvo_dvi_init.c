
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct drm_connector {int connector_type; } ;
struct intel_connector {int polled; struct drm_connector base; } ;
struct intel_sdvo_connector {int output_flag; int is_hdmi; struct intel_connector base; } ;
struct drm_encoder {int encoder_type; } ;
struct TYPE_2__ {struct drm_encoder base; } ;
struct intel_sdvo {int controlled_output; int hotplug_active; TYPE_1__ base; } ;
struct intel_encoder {int hotplug; } ;


 int DRM_CONNECTOR_POLL_CONNECT ;
 int DRM_CONNECTOR_POLL_DISCONNECT ;
 int DRM_DEBUG_KMS (char*,int) ;
 int DRM_MODE_CONNECTOR_DVID ;
 int DRM_MODE_CONNECTOR_HDMIA ;
 int DRM_MODE_ENCODER_TMDS ;
 int SDVO_OUTPUT_TMDS0 ;
 int SDVO_OUTPUT_TMDS1 ;
 int intel_sdvo_add_hdmi_properties (struct intel_sdvo*,struct intel_sdvo_connector*) ;
 struct intel_sdvo_connector* intel_sdvo_connector_alloc () ;
 scalar_t__ intel_sdvo_connector_init (struct intel_sdvo_connector*,struct intel_sdvo*) ;
 int intel_sdvo_enable_hotplug (struct intel_encoder*) ;
 int intel_sdvo_get_hotplug_support (struct intel_sdvo*) ;
 int intel_sdvo_hotplug ;
 scalar_t__ intel_sdvo_is_hdmi_connector (struct intel_sdvo*,int) ;
 int kfree (struct intel_sdvo_connector*) ;
 struct intel_encoder* to_intel_encoder (struct drm_encoder*) ;

__attribute__((used)) static bool
intel_sdvo_dvi_init(struct intel_sdvo *intel_sdvo, int device)
{
 struct drm_encoder *encoder = &intel_sdvo->base.base;
 struct drm_connector *connector;
 struct intel_encoder *intel_encoder = to_intel_encoder(encoder);
 struct intel_connector *intel_connector;
 struct intel_sdvo_connector *intel_sdvo_connector;

 DRM_DEBUG_KMS("initialising DVI device %d\n", device);

 intel_sdvo_connector = intel_sdvo_connector_alloc();
 if (!intel_sdvo_connector)
  return 0;

 if (device == 0) {
  intel_sdvo->controlled_output |= SDVO_OUTPUT_TMDS0;
  intel_sdvo_connector->output_flag = SDVO_OUTPUT_TMDS0;
 } else if (device == 1) {
  intel_sdvo->controlled_output |= SDVO_OUTPUT_TMDS1;
  intel_sdvo_connector->output_flag = SDVO_OUTPUT_TMDS1;
 }

 intel_connector = &intel_sdvo_connector->base;
 connector = &intel_connector->base;
 if (intel_sdvo_get_hotplug_support(intel_sdvo) &
  intel_sdvo_connector->output_flag) {
  intel_sdvo->hotplug_active |= intel_sdvo_connector->output_flag;




  intel_encoder->hotplug = intel_sdvo_hotplug;
  intel_sdvo_enable_hotplug(intel_encoder);
 } else {
  intel_connector->polled = DRM_CONNECTOR_POLL_CONNECT | DRM_CONNECTOR_POLL_DISCONNECT;
 }
 encoder->encoder_type = DRM_MODE_ENCODER_TMDS;
 connector->connector_type = DRM_MODE_CONNECTOR_DVID;

 if (intel_sdvo_is_hdmi_connector(intel_sdvo, device)) {
  connector->connector_type = DRM_MODE_CONNECTOR_HDMIA;
  intel_sdvo_connector->is_hdmi = 1;
 }

 if (intel_sdvo_connector_init(intel_sdvo_connector, intel_sdvo) < 0) {
  kfree(intel_sdvo_connector);
  return 0;
 }

 if (intel_sdvo_connector->is_hdmi)
  intel_sdvo_add_hdmi_properties(intel_sdvo, intel_sdvo_connector);

 return 1;
}
