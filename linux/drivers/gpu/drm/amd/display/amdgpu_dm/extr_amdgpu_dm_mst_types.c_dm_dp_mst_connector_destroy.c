
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_connector {int dummy; } ;
struct amdgpu_encoder {int port; int base; struct amdgpu_encoder* edid; struct amdgpu_encoder* mst_encoder; } ;
struct amdgpu_dm_connector {int port; int base; struct amdgpu_dm_connector* edid; struct amdgpu_dm_connector* mst_encoder; } ;


 int drm_connector_cleanup (struct drm_connector*) ;
 int drm_dp_mst_put_port_malloc (int ) ;
 int drm_encoder_cleanup (int *) ;
 int kfree (struct amdgpu_encoder*) ;
 struct amdgpu_encoder* to_amdgpu_dm_connector (struct drm_connector*) ;

__attribute__((used)) static void
dm_dp_mst_connector_destroy(struct drm_connector *connector)
{
 struct amdgpu_dm_connector *amdgpu_dm_connector = to_amdgpu_dm_connector(connector);
 struct amdgpu_encoder *amdgpu_encoder = amdgpu_dm_connector->mst_encoder;

 if (amdgpu_dm_connector->edid) {
  kfree(amdgpu_dm_connector->edid);
  amdgpu_dm_connector->edid = ((void*)0);
 }

 drm_encoder_cleanup(&amdgpu_encoder->base);
 kfree(amdgpu_encoder);
 drm_connector_cleanup(connector);
 drm_dp_mst_put_port_malloc(amdgpu_dm_connector->port);
 kfree(amdgpu_dm_connector);
}
