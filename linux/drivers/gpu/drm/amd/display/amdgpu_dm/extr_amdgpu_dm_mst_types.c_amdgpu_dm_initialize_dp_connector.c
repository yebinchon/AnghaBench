
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_14__ {char* name; int transfer; int dev; } ;
struct TYPE_12__ {TYPE_6__ aux; int ddc_service; } ;
struct TYPE_13__ {int * cbs; } ;
struct TYPE_10__ {int name; int kdev; } ;
struct amdgpu_dm_connector {int connector_id; TYPE_4__ dm_dp_aux; TYPE_5__ mst_mgr; TYPE_2__ base; TYPE_1__* dc_link; } ;
struct amdgpu_display_manager {TYPE_3__* adev; } ;
struct TYPE_11__ {int ddev; int dev; } ;
struct TYPE_9__ {int ddc; } ;


 int dm_dp_aux_transfer ;
 int dm_mst_cbs ;
 int drm_dp_aux_register (TYPE_6__*) ;
 int drm_dp_cec_register_connector (TYPE_6__*,int ,int ) ;
 int drm_dp_mst_topology_mgr_init (TYPE_5__*,int ,TYPE_6__*,int,int,int ) ;

void amdgpu_dm_initialize_dp_connector(struct amdgpu_display_manager *dm,
           struct amdgpu_dm_connector *aconnector)
{
 aconnector->dm_dp_aux.aux.name = "dmdc";
 aconnector->dm_dp_aux.aux.dev = aconnector->base.kdev;
 aconnector->dm_dp_aux.aux.transfer = dm_dp_aux_transfer;
 aconnector->dm_dp_aux.ddc_service = aconnector->dc_link->ddc;

 drm_dp_aux_register(&aconnector->dm_dp_aux.aux);
 drm_dp_cec_register_connector(&aconnector->dm_dp_aux.aux,
          aconnector->base.name, dm->adev->dev);
 aconnector->mst_mgr.cbs = &dm_mst_cbs;
 drm_dp_mst_topology_mgr_init(
  &aconnector->mst_mgr,
  dm->adev->ddev,
  &aconnector->dm_dp_aux.aux,
  16,
  4,
  aconnector->connector_id);
}
