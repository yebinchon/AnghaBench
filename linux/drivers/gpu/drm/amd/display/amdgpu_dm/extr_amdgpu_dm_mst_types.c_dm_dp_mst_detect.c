
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_connector {int dummy; } ;
struct amdgpu_dm_connector {int port; int mst_mgr; struct amdgpu_dm_connector* mst_port; } ;
typedef enum drm_connector_status { ____Placeholder_drm_connector_status } drm_connector_status ;


 int drm_dp_mst_detect_port (struct drm_connector*,int *,int ) ;
 struct amdgpu_dm_connector* to_amdgpu_dm_connector (struct drm_connector*) ;

__attribute__((used)) static enum drm_connector_status
dm_dp_mst_detect(struct drm_connector *connector, bool force)
{
 struct amdgpu_dm_connector *aconnector = to_amdgpu_dm_connector(connector);
 struct amdgpu_dm_connector *master = aconnector->mst_port;

 enum drm_connector_status status =
  drm_dp_mst_detect_port(
   connector,
   &master->mst_mgr,
   aconnector->port);

 return status;
}
