
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct drm_encoder {int dummy; } ;
struct drm_connector {int dummy; } ;
struct amdgpu_dm_connector {TYPE_1__* mst_encoder; } ;
struct TYPE_2__ {struct drm_encoder base; } ;


 struct amdgpu_dm_connector* to_amdgpu_dm_connector (struct drm_connector*) ;

__attribute__((used)) static struct drm_encoder *dm_mst_best_encoder(struct drm_connector *connector)
{
 struct amdgpu_dm_connector *amdgpu_dm_connector = to_amdgpu_dm_connector(connector);

 return &amdgpu_dm_connector->mst_encoder->base;
}
