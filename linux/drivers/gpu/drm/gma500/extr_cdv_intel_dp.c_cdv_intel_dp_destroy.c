
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gma_encoder {struct cdv_intel_dp* dev_priv; } ;
struct drm_connector {int dummy; } ;
struct cdv_intel_dp {int adapter; struct drm_connector* panel_fixed_mode; } ;


 int drm_connector_cleanup (struct drm_connector*) ;
 int drm_connector_unregister (struct drm_connector*) ;
 struct gma_encoder* gma_attached_encoder (struct drm_connector*) ;
 int i2c_del_adapter (int *) ;
 scalar_t__ is_edp (struct gma_encoder*) ;
 int kfree (struct drm_connector*) ;

__attribute__((used)) static void
cdv_intel_dp_destroy(struct drm_connector *connector)
{
 struct gma_encoder *gma_encoder = gma_attached_encoder(connector);
 struct cdv_intel_dp *intel_dp = gma_encoder->dev_priv;

 if (is_edp(gma_encoder)) {

  kfree(intel_dp->panel_fixed_mode);
  intel_dp->panel_fixed_mode = ((void*)0);
 }
 i2c_del_adapter(&intel_dp->adapter);
 drm_connector_unregister(connector);
 drm_connector_cleanup(connector);
 kfree(connector);
}
