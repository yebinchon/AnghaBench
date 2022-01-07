
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct radeon_connector {int * edid; } ;
struct drm_connector {int dummy; } ;


 int kfree (int *) ;
 struct radeon_connector* to_radeon_connector (struct drm_connector*) ;

__attribute__((used)) static void radeon_connector_free_edid(struct drm_connector *connector)
{
 struct radeon_connector *radeon_connector = to_radeon_connector(connector);

 if (radeon_connector->edid) {
  kfree(radeon_connector->edid);
  radeon_connector->edid = ((void*)0);
 }
}
