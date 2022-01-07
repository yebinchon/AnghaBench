
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gma_encoder {int i2c_bus; } ;
struct drm_connector {int dummy; } ;


 int drm_connector_cleanup (struct drm_connector*) ;
 int drm_connector_unregister (struct drm_connector*) ;
 struct gma_encoder* gma_attached_encoder (struct drm_connector*) ;
 int kfree (struct drm_connector*) ;
 int psb_intel_i2c_destroy (int ) ;

__attribute__((used)) static void cdv_intel_lvds_destroy(struct drm_connector *connector)
{
 struct gma_encoder *gma_encoder = gma_attached_encoder(connector);

 psb_intel_i2c_destroy(gma_encoder->i2c_bus);
 drm_connector_unregister(connector);
 drm_connector_cleanup(connector);
 kfree(connector);
}
