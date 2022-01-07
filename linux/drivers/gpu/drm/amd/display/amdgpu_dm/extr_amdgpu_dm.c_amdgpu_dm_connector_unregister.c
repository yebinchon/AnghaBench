
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct drm_connector {int dummy; } ;
struct TYPE_2__ {int aux; } ;
struct amdgpu_dm_connector {TYPE_1__ dm_dp_aux; } ;


 int drm_dp_aux_unregister (int *) ;
 struct amdgpu_dm_connector* to_amdgpu_dm_connector (struct drm_connector*) ;

__attribute__((used)) static void amdgpu_dm_connector_unregister(struct drm_connector *connector)
{
 struct amdgpu_dm_connector *amdgpu_dm_connector = to_amdgpu_dm_connector(connector);

 drm_dp_aux_unregister(&amdgpu_dm_connector->dm_dp_aux.aux);
}
