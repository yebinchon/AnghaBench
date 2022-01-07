
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct radeon_encoder {int base; struct radeon_encoder* mst_encoder; } ;
struct radeon_connector {int base; struct radeon_connector* mst_encoder; } ;
struct drm_connector {int dummy; } ;


 int drm_connector_cleanup (struct drm_connector*) ;
 int drm_encoder_cleanup (int *) ;
 int kfree (struct radeon_encoder*) ;
 struct radeon_encoder* to_radeon_connector (struct drm_connector*) ;

__attribute__((used)) static void
radeon_dp_mst_connector_destroy(struct drm_connector *connector)
{
 struct radeon_connector *radeon_connector = to_radeon_connector(connector);
 struct radeon_encoder *radeon_encoder = radeon_connector->mst_encoder;

 drm_encoder_cleanup(&radeon_encoder->base);
 kfree(radeon_encoder);
 drm_connector_cleanup(connector);
 kfree(radeon_connector);
}
