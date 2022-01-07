
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_6__ {int argb8888; } ;
typedef struct dc_plane_cap {scalar_t__ type; TYPE_1__ pixel_format_support; int blends_with_below; int blends_with_above; } const dc_plane_cap ;
struct dc_link {int dummy; } ;
struct amdgpu_mode_info {int * planes; } ;
struct TYPE_8__ {scalar_t__ force; } ;
struct amdgpu_encoder {TYPE_3__ base; } ;
struct amdgpu_dm_connector {TYPE_3__ base; } ;
struct amdgpu_display_manager {int display_indexes_num; TYPE_5__* dc; int adev; int ddev; } ;
struct amdgpu_device {int asic_type; struct amdgpu_mode_info mode_info; struct amdgpu_display_manager dm; } ;
typedef int int32_t ;
typedef enum dc_connection_type { ____Placeholder_dc_connection_type } dc_connection_type ;
struct TYPE_9__ {int disable_stutter; } ;
struct TYPE_7__ {int max_links; int max_streams; int max_planes; struct dc_plane_cap const* planes; } ;
struct TYPE_10__ {TYPE_4__ debug; TYPE_2__ caps; } ;


 int AMDGPU_DM_MAX_DISPLAY_INDEX ;
 int AMDGPU_MAX_PLANES ;
 int ASSERT (int) ;
 scalar_t__ DC_PLANE_TYPE_DCN_UNIVERSAL ;
 int DETECT_REASON_BOOT ;
 int DRM_ERROR (char*,...) ;
 int DRM_PLANE_TYPE_OVERLAY ;
 int DRM_PLANE_TYPE_PRIMARY ;
 int EINVAL ;
 int GFP_KERNEL ;
 int PP_STUTTER_MODE ;
 scalar_t__ amdgpu_dm_connector_init (struct amdgpu_display_manager*,struct amdgpu_encoder*,int,struct amdgpu_encoder*) ;
 scalar_t__ amdgpu_dm_crtc_init (struct amdgpu_display_manager*,int ,int) ;
 scalar_t__ amdgpu_dm_encoder_init (int ,struct amdgpu_encoder*,int) ;
 scalar_t__ amdgpu_dm_mode_config_init (int ) ;
 int amdgpu_dm_update_connector_after_detect (struct amdgpu_encoder*) ;
 int amdgpu_pp_feature_mask ;
 int dc_connection_none ;
 struct dc_link* dc_get_link_at_index (TYPE_5__*,int) ;
 scalar_t__ dc_link_detect (struct dc_link*,int ) ;
 int dc_link_detect_sink (struct dc_link*,int*) ;
 int dce110_register_irq_handlers (int ) ;
 int dcn10_register_irq_handlers (int ) ;
 int emulated_link_detect (struct dc_link*) ;
 scalar_t__ initialize_plane (struct amdgpu_display_manager*,struct amdgpu_mode_info*,int,int ,struct dc_plane_cap const*) ;
 int kfree (struct amdgpu_encoder*) ;
 struct amdgpu_encoder* kzalloc (int,int ) ;
 int register_backlight_device (struct amdgpu_display_manager*,struct dc_link*) ;

__attribute__((used)) static int amdgpu_dm_initialize_drm_device(struct amdgpu_device *adev)
{
 struct amdgpu_display_manager *dm = &adev->dm;
 int32_t i;
 struct amdgpu_dm_connector *aconnector = ((void*)0);
 struct amdgpu_encoder *aencoder = ((void*)0);
 struct amdgpu_mode_info *mode_info = &adev->mode_info;
 uint32_t link_cnt;
 int32_t primary_planes;
 enum dc_connection_type new_connection_type = dc_connection_none;
 const struct dc_plane_cap *plane;

 link_cnt = dm->dc->caps.max_links;
 if (amdgpu_dm_mode_config_init(dm->adev)) {
  DRM_ERROR("DM: Failed to initialize mode config\n");
  return -EINVAL;
 }


 primary_planes = dm->dc->caps.max_streams;
 ASSERT(primary_planes <= AMDGPU_MAX_PLANES);





 for (i = (primary_planes - 1); i >= 0; i--) {
  plane = &dm->dc->caps.planes[i];

  if (initialize_plane(dm, mode_info, i,
         DRM_PLANE_TYPE_PRIMARY, plane)) {
   DRM_ERROR("KMS: Failed to initialize primary plane\n");
   goto fail;
  }
 }
 for (i = 0; i < dm->dc->caps.max_planes; ++i) {
  struct dc_plane_cap *plane = &dm->dc->caps.planes[i];

  if (plane->type != DC_PLANE_TYPE_DCN_UNIVERSAL)
   continue;

  if (!plane->blends_with_above || !plane->blends_with_below)
   continue;

  if (!plane->pixel_format_support.argb8888)
   continue;

  if (initialize_plane(dm, ((void*)0), primary_planes + i,
         DRM_PLANE_TYPE_OVERLAY, plane)) {
   DRM_ERROR("KMS: Failed to initialize overlay plane\n");
   goto fail;
  }


  break;
 }

 for (i = 0; i < dm->dc->caps.max_streams; i++)
  if (amdgpu_dm_crtc_init(dm, mode_info->planes[i], i)) {
   DRM_ERROR("KMS: Failed to initialize crtc\n");
   goto fail;
  }

 dm->display_indexes_num = dm->dc->caps.max_streams;


 for (i = 0; i < link_cnt; i++) {
  struct dc_link *link = ((void*)0);

  if (i > AMDGPU_DM_MAX_DISPLAY_INDEX) {
   DRM_ERROR(
    "KMS: Cannot support more than %d display indexes\n",
     AMDGPU_DM_MAX_DISPLAY_INDEX);
   continue;
  }

  aconnector = kzalloc(sizeof(*aconnector), GFP_KERNEL);
  if (!aconnector)
   goto fail;

  aencoder = kzalloc(sizeof(*aencoder), GFP_KERNEL);
  if (!aencoder)
   goto fail;

  if (amdgpu_dm_encoder_init(dm->ddev, aencoder, i)) {
   DRM_ERROR("KMS: Failed to initialize encoder\n");
   goto fail;
  }

  if (amdgpu_dm_connector_init(dm, aconnector, i, aencoder)) {
   DRM_ERROR("KMS: Failed to initialize connector\n");
   goto fail;
  }

  link = dc_get_link_at_index(dm->dc, i);

  if (!dc_link_detect_sink(link, &new_connection_type))
   DRM_ERROR("KMS: Failed to detect connector\n");

  if (aconnector->base.force && new_connection_type == dc_connection_none) {
   emulated_link_detect(link);
   amdgpu_dm_update_connector_after_detect(aconnector);

  } else if (dc_link_detect(link, DETECT_REASON_BOOT)) {
   amdgpu_dm_update_connector_after_detect(aconnector);
   register_backlight_device(dm, link);
  }


 }


 switch (adev->asic_type) {
 case 148:
 case 145:
 case 143:
 case 144:
 case 142:
 case 132:
 case 146:
 case 147:
 case 133:
 case 137:
 case 138:
 case 136:
 case 128:
 case 131:
 case 130:
 case 129:
  if (dce110_register_irq_handlers(dm->adev)) {
   DRM_ERROR("DM: Failed to initialize IRQ\n");
   goto fail;
  }
  break;
 default:
  DRM_ERROR("Unsupported ASIC type: 0x%X\n", adev->asic_type);
  goto fail;
 }

 if (adev->asic_type != 147 && adev->asic_type != 133)
  dm->dc->debug.disable_stutter = amdgpu_pp_feature_mask & PP_STUTTER_MODE ? 0 : 1;

 return 0;
fail:
 kfree(aencoder);
 kfree(aconnector);

 return -EINVAL;
}
