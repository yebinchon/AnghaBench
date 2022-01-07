
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct radeon_connector {int port; int mst_mgr; struct radeon_connector* mst_port; } ;
struct drm_connector {int dummy; } ;
typedef enum drm_connector_status { ____Placeholder_drm_connector_status } drm_connector_status ;


 int drm_dp_mst_detect_port (struct drm_connector*,int *,int ) ;
 struct radeon_connector* to_radeon_connector (struct drm_connector*) ;

__attribute__((used)) static enum drm_connector_status
radeon_dp_mst_detect(struct drm_connector *connector, bool force)
{
 struct radeon_connector *radeon_connector = to_radeon_connector(connector);
 struct radeon_connector *master = radeon_connector->mst_port;

 return drm_dp_mst_detect_port(connector, &master->mst_mgr, radeon_connector->port);
}
