
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct drm_connector {int connector_type; } ;
struct gma_connector {struct drm_connector base; } ;
struct psb_intel_sdvo_connector {int output_flag; struct gma_connector base; } ;
struct drm_encoder {int encoder_type; } ;
struct TYPE_2__ {int needs_tv_clock; int clone_mask; struct drm_encoder base; } ;
struct psb_intel_sdvo {int controlled_output; int is_tv; TYPE_1__ base; } ;


 int DRM_MODE_CONNECTOR_SVIDEO ;
 int DRM_MODE_ENCODER_TVDAC ;
 int GFP_KERNEL ;
 int INTEL_SDVO_TV_CLONE_BIT ;
 struct psb_intel_sdvo_connector* kzalloc (int,int ) ;
 int psb_intel_sdvo_connector_init (struct psb_intel_sdvo_connector*,struct psb_intel_sdvo*) ;
 int psb_intel_sdvo_create_enhance_property (struct psb_intel_sdvo*,struct psb_intel_sdvo_connector*) ;
 int psb_intel_sdvo_destroy (struct drm_connector*) ;
 int psb_intel_sdvo_tv_create_property (struct psb_intel_sdvo*,struct psb_intel_sdvo_connector*,int) ;

__attribute__((used)) static bool
psb_intel_sdvo_tv_init(struct psb_intel_sdvo *psb_intel_sdvo, int type)
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
 encoder->encoder_type = DRM_MODE_ENCODER_TVDAC;
 connector->connector_type = DRM_MODE_CONNECTOR_SVIDEO;

 psb_intel_sdvo->controlled_output |= type;
 psb_intel_sdvo_connector->output_flag = type;

 psb_intel_sdvo->is_tv = 1;
 psb_intel_sdvo->base.needs_tv_clock = 1;
 psb_intel_sdvo->base.clone_mask = 1 << INTEL_SDVO_TV_CLONE_BIT;

 psb_intel_sdvo_connector_init(psb_intel_sdvo_connector, psb_intel_sdvo);

 if (!psb_intel_sdvo_tv_create_property(psb_intel_sdvo, psb_intel_sdvo_connector, type))
  goto err;

 if (!psb_intel_sdvo_create_enhance_property(psb_intel_sdvo, psb_intel_sdvo_connector))
  goto err;

 return 1;

err:
 psb_intel_sdvo_destroy(connector);
 return 0;
}
