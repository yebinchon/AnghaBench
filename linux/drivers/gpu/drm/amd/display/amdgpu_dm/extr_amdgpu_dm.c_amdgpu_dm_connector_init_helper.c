
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_22__ TYPE_9__ ;
typedef struct TYPE_21__ TYPE_8__ ;
typedef struct TYPE_20__ TYPE_7__ ;
typedef struct TYPE_19__ TYPE_6__ ;
typedef struct TYPE_18__ TYPE_5__ ;
typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;
typedef struct TYPE_13__ TYPE_10__ ;


struct dc_link {TYPE_4__* link_enc; } ;
struct TYPE_13__ {int interlace_allowed; int doublescan_allowed; int stereo_allowed; int ycbcr_420_allowed; int base; TYPE_5__* state; void* polled; int dpms; TYPE_1__* funcs; } ;
struct TYPE_15__ {int hpd; } ;
struct amdgpu_dm_connector {int connector_id; int audio_inst; TYPE_10__ base; int hpd_lock; TYPE_2__ hpd; struct dc_link* dc_link; } ;
struct amdgpu_display_manager {TYPE_9__* ddev; } ;
struct TYPE_20__ {int abm_level_property; int underscan_vborder_property; int underscan_hborder_property; int underscan_property; } ;
struct TYPE_19__ {int dc; } ;
struct amdgpu_device {TYPE_7__ mode_info; TYPE_6__ dm; } ;
struct TYPE_21__ {int hdr_output_metadata_property; int scaling_mode_property; } ;
struct TYPE_22__ {TYPE_8__ mode_config; struct amdgpu_device* dev_private; } ;
struct TYPE_18__ {int max_bpc; int max_requested_bpc; } ;
struct TYPE_16__ {int dp_ycbcr420_supported; int hdmi_ycbcr420_supported; } ;
struct TYPE_17__ {TYPE_3__ features; } ;
struct TYPE_14__ {int (* reset ) (TYPE_10__*) ;} ;


 int AMDGPU_HPD_NONE ;
 void* DRM_CONNECTOR_POLL_HPD ;



 int DRM_MODE_CONNECTOR_eDP ;
 int DRM_MODE_DPMS_OFF ;
 int DRM_MODE_SCALE_NONE ;
 int UNDERSCAN_OFF ;
 scalar_t__ dc_is_dmcu_initialized (int ) ;
 int drm_connector_attach_max_bpc_property (TYPE_10__*,int,int) ;
 int drm_connector_attach_vrr_capable_property (TYPE_10__*) ;
 int drm_object_attach_property (int *,int ,int ) ;
 int mutex_init (int *) ;
 int stub1 (TYPE_10__*) ;

void amdgpu_dm_connector_init_helper(struct amdgpu_display_manager *dm,
         struct amdgpu_dm_connector *aconnector,
         int connector_type,
         struct dc_link *link,
         int link_index)
{
 struct amdgpu_device *adev = dm->ddev->dev_private;





 if (aconnector->base.funcs->reset)
  aconnector->base.funcs->reset(&aconnector->base);

 aconnector->connector_id = link_index;
 aconnector->dc_link = link;
 aconnector->base.interlace_allowed = 0;
 aconnector->base.doublescan_allowed = 0;
 aconnector->base.stereo_allowed = 0;
 aconnector->base.dpms = DRM_MODE_DPMS_OFF;
 aconnector->hpd.hpd = AMDGPU_HPD_NONE;
 aconnector->audio_inst = -1;
 mutex_init(&aconnector->hpd_lock);





 switch (connector_type) {
 case 128:
  aconnector->base.polled = DRM_CONNECTOR_POLL_HPD;
  aconnector->base.ycbcr_420_allowed =
   link->link_enc->features.hdmi_ycbcr420_supported ? 1 : 0;
  break;
 case 129:
  aconnector->base.polled = DRM_CONNECTOR_POLL_HPD;
  aconnector->base.ycbcr_420_allowed =
   link->link_enc->features.dp_ycbcr420_supported ? 1 : 0;
  break;
 case 130:
  aconnector->base.polled = DRM_CONNECTOR_POLL_HPD;
  break;
 default:
  break;
 }

 drm_object_attach_property(&aconnector->base.base,
    dm->ddev->mode_config.scaling_mode_property,
    DRM_MODE_SCALE_NONE);

 drm_object_attach_property(&aconnector->base.base,
    adev->mode_info.underscan_property,
    UNDERSCAN_OFF);
 drm_object_attach_property(&aconnector->base.base,
    adev->mode_info.underscan_hborder_property,
    0);
 drm_object_attach_property(&aconnector->base.base,
    adev->mode_info.underscan_vborder_property,
    0);

 drm_connector_attach_max_bpc_property(&aconnector->base, 8, 16);


 aconnector->base.state->max_bpc = 8;
 aconnector->base.state->max_requested_bpc = 8;

 if (connector_type == DRM_MODE_CONNECTOR_eDP &&
     dc_is_dmcu_initialized(adev->dm.dc)) {
  drm_object_attach_property(&aconnector->base.base,
    adev->mode_info.abm_level_property, 0);
 }

 if (connector_type == 128 ||
     connector_type == 129 ||
     connector_type == DRM_MODE_CONNECTOR_eDP) {
  drm_object_attach_property(
   &aconnector->base.base,
   dm->ddev->mode_config.hdr_output_metadata_property, 0);

  drm_connector_attach_vrr_capable_property(
   &aconnector->base);
 }
}
