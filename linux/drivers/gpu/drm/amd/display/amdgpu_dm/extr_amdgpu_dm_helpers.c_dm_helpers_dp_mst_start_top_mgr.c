
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct dc_link {struct amdgpu_dm_connector* priv; } ;
struct dc_context {int dummy; } ;
struct TYPE_3__ {int id; } ;
struct TYPE_4__ {TYPE_1__ base; } ;
struct amdgpu_dm_connector {int mst_mgr; TYPE_2__ base; } ;


 int DRM_ERROR (char*) ;
 int DRM_INFO (char*,struct amdgpu_dm_connector*,int ) ;
 scalar_t__ drm_dp_mst_topology_mgr_set_mst (int *,int) ;

bool dm_helpers_dp_mst_start_top_mgr(
  struct dc_context *ctx,
  const struct dc_link *link,
  bool boot)
{
 struct amdgpu_dm_connector *aconnector = link->priv;

 if (!aconnector) {
   DRM_ERROR("Failed to found connector for link!");
   return 0;
 }

 if (boot) {
  DRM_INFO("DM_MST: Differing MST start on aconnector: %p [id: %d]\n",
     aconnector, aconnector->base.base.id);
  return 1;
 }

 DRM_INFO("DM_MST: starting TM on aconnector: %p [id: %d]\n",
   aconnector, aconnector->base.base.id);

 return (drm_dp_mst_topology_mgr_set_mst(&aconnector->mst_mgr, 1) == 0);
}
