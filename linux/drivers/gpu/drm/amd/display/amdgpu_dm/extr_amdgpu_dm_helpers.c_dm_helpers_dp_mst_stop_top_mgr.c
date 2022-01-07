
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct dc_link {struct amdgpu_dm_connector* priv; } ;
struct dc_context {int dummy; } ;
struct TYPE_6__ {int mst_state; } ;
struct TYPE_4__ {int id; } ;
struct TYPE_5__ {TYPE_1__ base; } ;
struct amdgpu_dm_connector {TYPE_3__ mst_mgr; TYPE_2__ base; } ;


 int DRM_ERROR (char*) ;
 int DRM_INFO (char*,struct amdgpu_dm_connector*,int ) ;
 int drm_dp_mst_topology_mgr_set_mst (TYPE_3__*,int) ;

void dm_helpers_dp_mst_stop_top_mgr(
  struct dc_context *ctx,
  const struct dc_link *link)
{
 struct amdgpu_dm_connector *aconnector = link->priv;

 if (!aconnector) {
   DRM_ERROR("Failed to found connector for link!");
   return;
 }

 DRM_INFO("DM_MST: stopping TM on aconnector: %p [id: %d]\n",
   aconnector, aconnector->base.base.id);

 if (aconnector->mst_mgr.mst_state == 1)
  drm_dp_mst_topology_mgr_set_mst(&aconnector->mst_mgr, 0);
}
