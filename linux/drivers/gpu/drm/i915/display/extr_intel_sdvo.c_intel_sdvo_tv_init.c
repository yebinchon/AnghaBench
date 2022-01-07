
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct drm_connector {int connector_type; } ;
struct intel_connector {struct drm_connector base; } ;
struct intel_sdvo_connector {int output_flag; struct intel_connector base; } ;
struct drm_encoder {int encoder_type; } ;
struct TYPE_2__ {struct drm_encoder base; } ;
struct intel_sdvo {int controlled_output; TYPE_1__ base; } ;


 int DRM_DEBUG_KMS (char*,int) ;
 int DRM_MODE_CONNECTOR_SVIDEO ;
 int DRM_MODE_ENCODER_TVDAC ;
 int intel_connector_destroy (struct drm_connector*) ;
 struct intel_sdvo_connector* intel_sdvo_connector_alloc () ;
 scalar_t__ intel_sdvo_connector_init (struct intel_sdvo_connector*,struct intel_sdvo*) ;
 int intel_sdvo_create_enhance_property (struct intel_sdvo*,struct intel_sdvo_connector*) ;
 int intel_sdvo_tv_create_property (struct intel_sdvo*,struct intel_sdvo_connector*,int) ;
 int kfree (struct intel_sdvo_connector*) ;

__attribute__((used)) static bool
intel_sdvo_tv_init(struct intel_sdvo *intel_sdvo, int type)
{
 struct drm_encoder *encoder = &intel_sdvo->base.base;
 struct drm_connector *connector;
 struct intel_connector *intel_connector;
 struct intel_sdvo_connector *intel_sdvo_connector;

 DRM_DEBUG_KMS("initialising TV type %d\n", type);

 intel_sdvo_connector = intel_sdvo_connector_alloc();
 if (!intel_sdvo_connector)
  return 0;

 intel_connector = &intel_sdvo_connector->base;
 connector = &intel_connector->base;
 encoder->encoder_type = DRM_MODE_ENCODER_TVDAC;
 connector->connector_type = DRM_MODE_CONNECTOR_SVIDEO;

 intel_sdvo->controlled_output |= type;
 intel_sdvo_connector->output_flag = type;

 if (intel_sdvo_connector_init(intel_sdvo_connector, intel_sdvo) < 0) {
  kfree(intel_sdvo_connector);
  return 0;
 }

 if (!intel_sdvo_tv_create_property(intel_sdvo, intel_sdvo_connector, type))
  goto err;

 if (!intel_sdvo_create_enhance_property(intel_sdvo, intel_sdvo_connector))
  goto err;

 return 1;

err:
 intel_connector_destroy(connector);
 return 0;
}
