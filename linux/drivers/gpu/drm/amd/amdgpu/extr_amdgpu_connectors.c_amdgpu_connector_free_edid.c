
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_connector {int dummy; } ;
struct amdgpu_connector {int * edid; } ;


 int kfree (int *) ;
 struct amdgpu_connector* to_amdgpu_connector (struct drm_connector*) ;

__attribute__((used)) static void amdgpu_connector_free_edid(struct drm_connector *connector)
{
 struct amdgpu_connector *amdgpu_connector = to_amdgpu_connector(connector);

 kfree(amdgpu_connector->edid);
 amdgpu_connector->edid = ((void*)0);
}
