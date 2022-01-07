
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_connector {int dummy; } ;
struct amdgpu_connector {struct drm_connector* con_priv; } ;


 int amdgpu_connector_free_edid (struct drm_connector*) ;
 int drm_connector_cleanup (struct drm_connector*) ;
 int drm_connector_unregister (struct drm_connector*) ;
 int kfree (struct drm_connector*) ;
 struct amdgpu_connector* to_amdgpu_connector (struct drm_connector*) ;

__attribute__((used)) static void amdgpu_connector_destroy(struct drm_connector *connector)
{
 struct amdgpu_connector *amdgpu_connector = to_amdgpu_connector(connector);

 amdgpu_connector_free_edid(connector);
 kfree(amdgpu_connector->con_priv);
 drm_connector_unregister(connector);
 drm_connector_cleanup(connector);
 kfree(connector);
}
