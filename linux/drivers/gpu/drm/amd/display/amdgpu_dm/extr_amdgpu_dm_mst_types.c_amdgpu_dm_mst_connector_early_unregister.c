
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_dp_mst_port {int dummy; } ;
struct drm_connector {int dummy; } ;
struct amdgpu_dm_connector {struct drm_dp_mst_port* port; } ;


 int drm_dp_mst_connector_early_unregister (struct drm_connector*,struct drm_dp_mst_port*) ;
 struct amdgpu_dm_connector* to_amdgpu_dm_connector (struct drm_connector*) ;

__attribute__((used)) static void
amdgpu_dm_mst_connector_early_unregister(struct drm_connector *connector)
{
 struct amdgpu_dm_connector *amdgpu_dm_connector =
  to_amdgpu_dm_connector(connector);
 struct drm_dp_mst_port *port = amdgpu_dm_connector->port;

 drm_dp_mst_connector_early_unregister(connector, port);
}
