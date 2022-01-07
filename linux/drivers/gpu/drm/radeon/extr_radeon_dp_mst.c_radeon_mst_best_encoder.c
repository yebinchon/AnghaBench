
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct radeon_connector {TYPE_1__* mst_encoder; } ;
struct drm_encoder {int dummy; } ;
struct drm_connector {int dummy; } ;
struct TYPE_2__ {struct drm_encoder base; } ;


 struct radeon_connector* to_radeon_connector (struct drm_connector*) ;

__attribute__((used)) static struct
drm_encoder *radeon_mst_best_encoder(struct drm_connector *connector)
{
 struct radeon_connector *radeon_connector = to_radeon_connector(connector);

 return &radeon_connector->mst_encoder->base;
}
