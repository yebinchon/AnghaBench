
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct psb_intel_sdvo {int sdvo_reg; int saveSDVO; } ;
struct gma_encoder {int base; } ;
struct drm_device {int dummy; } ;
struct drm_connector {struct drm_device* dev; } ;


 int REG_READ (int ) ;
 struct gma_encoder* gma_attached_encoder (struct drm_connector*) ;
 struct psb_intel_sdvo* to_psb_intel_sdvo (int *) ;

__attribute__((used)) static void psb_intel_sdvo_save(struct drm_connector *connector)
{
 struct drm_device *dev = connector->dev;
 struct gma_encoder *gma_encoder = gma_attached_encoder(connector);
 struct psb_intel_sdvo *sdvo = to_psb_intel_sdvo(&gma_encoder->base);

 sdvo->saveSDVO = REG_READ(sdvo->sdvo_reg);
}
