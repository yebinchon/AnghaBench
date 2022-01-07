
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct psb_intel_lvds_priv {int ddc_bus; } ;
struct gma_encoder {struct psb_intel_lvds_priv* dev_priv; } ;
struct drm_connector {int dummy; } ;


 int drm_connector_cleanup (struct drm_connector*) ;
 int drm_connector_unregister (struct drm_connector*) ;
 struct gma_encoder* gma_attached_encoder (struct drm_connector*) ;
 int kfree (struct drm_connector*) ;
 int psb_intel_i2c_destroy (int ) ;

void psb_intel_lvds_destroy(struct drm_connector *connector)
{
 struct gma_encoder *gma_encoder = gma_attached_encoder(connector);
 struct psb_intel_lvds_priv *lvds_priv = gma_encoder->dev_priv;

 psb_intel_i2c_destroy(lvds_priv->ddc_bus);
 drm_connector_unregister(connector);
 drm_connector_cleanup(connector);
 kfree(connector);
}
