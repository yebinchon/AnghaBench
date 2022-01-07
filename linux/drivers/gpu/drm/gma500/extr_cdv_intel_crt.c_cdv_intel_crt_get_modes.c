
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct gma_encoder {TYPE_1__* ddc_bus; } ;
struct drm_connector {int dummy; } ;
struct TYPE_2__ {int adapter; } ;


 struct gma_encoder* gma_attached_encoder (struct drm_connector*) ;
 int psb_intel_ddc_get_modes (struct drm_connector*,int *) ;

__attribute__((used)) static int cdv_intel_crt_get_modes(struct drm_connector *connector)
{
 struct gma_encoder *gma_encoder = gma_attached_encoder(connector);
 return psb_intel_ddc_get_modes(connector,
           &gma_encoder->ddc_bus->adapter);
}
