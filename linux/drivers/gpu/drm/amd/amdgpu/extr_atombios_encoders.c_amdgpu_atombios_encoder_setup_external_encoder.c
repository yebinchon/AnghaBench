
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {int ucAction; int ucLaneNum; int ucBitPerColor; int ucConfig; void* ucEncoderMode; void* usPixelClock; void* usConnectorId; } ;
struct TYPE_9__ {TYPE_3__ sExtEncoder; } ;
struct TYPE_6__ {int ucAction; int ucLaneNum; int ucConfig; void* ucEncoderMode; void* usPixelClock; } ;
struct TYPE_7__ {TYPE_1__ sDigEncoder; } ;
union external_encoder_control {TYPE_4__ v3; TYPE_2__ v1; } ;
typedef int uint32_t ;
typedef int u8 ;
typedef int u32 ;
struct drm_encoder {struct drm_device* dev; } ;
struct drm_device {struct amdgpu_device* dev_private; } ;
struct drm_connector {int dummy; } ;
struct amdgpu_encoder {int encoder_enum; int pixel_clock; } ;
struct TYPE_10__ {int atom_context; } ;
struct amdgpu_device {TYPE_5__ mode_info; } ;
struct amdgpu_connector_atom_dig {int dp_clock; int dp_lane_count; } ;
struct amdgpu_connector {int connector_object_id; struct amdgpu_connector_atom_dig* con_priv; } ;
typedef int args ;


 int ATOM_ENCODER_CONFIG_DPLINKRATE_2_70GHZ ;
 int COMMAND ;
 int DRM_ERROR (char*,int,int) ;
 int ENCODER_MODE_IS_DP (void*) ;
 int ENUM_ID_MASK ;
 int ENUM_ID_SHIFT ;
 int EXTERNAL_ENCODER_ACTION_V3_ENCODER_INIT ;
 int EXTERNAL_ENCODER_CONFIG_V3_DPLINKRATE_2_70GHZ ;
 int EXTERNAL_ENCODER_CONFIG_V3_DPLINKRATE_5_40GHZ ;
 int EXTERNAL_ENCODER_CONFIG_V3_ENCODER1 ;
 int EXTERNAL_ENCODER_CONFIG_V3_ENCODER2 ;
 int EXTERNAL_ENCODER_CONFIG_V3_ENCODER3 ;
 int ExternalEncoderControl ;



 int GetIndexIntoMasterTable (int ,int ) ;
 int OBJECT_ID_MASK ;
 int OBJECT_ID_SHIFT ;
 int amdgpu_atom_execute_table (int ,int,int *) ;
 int amdgpu_atom_parse_cmd_header (int ,int,int*,int*) ;
 int amdgpu_atombios_encoder_get_bpc (struct drm_encoder*) ;
 void* amdgpu_atombios_encoder_get_encoder_mode (struct drm_encoder*) ;
 int amdgpu_dig_monitor_is_duallink (struct drm_encoder*,int) ;
 struct drm_connector* amdgpu_get_connector_for_encoder (struct drm_encoder*) ;
 struct drm_connector* amdgpu_get_connector_for_encoder_init (struct drm_encoder*) ;
 void* cpu_to_le16 (int) ;
 int memset (union external_encoder_control*,int ,int) ;
 struct amdgpu_connector* to_amdgpu_connector (struct drm_connector*) ;
 struct amdgpu_encoder* to_amdgpu_encoder (struct drm_encoder*) ;

__attribute__((used)) static void
amdgpu_atombios_encoder_setup_external_encoder(struct drm_encoder *encoder,
     struct drm_encoder *ext_encoder,
     int action)
{
 struct drm_device *dev = encoder->dev;
 struct amdgpu_device *adev = dev->dev_private;
 struct amdgpu_encoder *amdgpu_encoder = to_amdgpu_encoder(encoder);
 struct amdgpu_encoder *ext_amdgpu_encoder = to_amdgpu_encoder(ext_encoder);
 union external_encoder_control args;
 struct drm_connector *connector;
 int index = GetIndexIntoMasterTable(COMMAND, ExternalEncoderControl);
 u8 frev, crev;
 int dp_clock = 0;
 int dp_lane_count = 0;
 int connector_object_id = 0;
 u32 ext_enum = (ext_amdgpu_encoder->encoder_enum & ENUM_ID_MASK) >> ENUM_ID_SHIFT;

 if (action == EXTERNAL_ENCODER_ACTION_V3_ENCODER_INIT)
  connector = amdgpu_get_connector_for_encoder_init(encoder);
 else
  connector = amdgpu_get_connector_for_encoder(encoder);

 if (connector) {
  struct amdgpu_connector *amdgpu_connector = to_amdgpu_connector(connector);
  struct amdgpu_connector_atom_dig *dig_connector =
   amdgpu_connector->con_priv;

  dp_clock = dig_connector->dp_clock;
  dp_lane_count = dig_connector->dp_lane_count;
  connector_object_id =
   (amdgpu_connector->connector_object_id & OBJECT_ID_MASK) >> OBJECT_ID_SHIFT;
 }

 memset(&args, 0, sizeof(args));

 if (!amdgpu_atom_parse_cmd_header(adev->mode_info.atom_context, index, &frev, &crev))
  return;

 switch (frev) {
 case 1:

  break;
 case 2:
  switch (crev) {
  case 1:
  case 2:
   args.v1.sDigEncoder.ucAction = action;
   args.v1.sDigEncoder.usPixelClock = cpu_to_le16(amdgpu_encoder->pixel_clock / 10);
   args.v1.sDigEncoder.ucEncoderMode =
    amdgpu_atombios_encoder_get_encoder_mode(encoder);

   if (ENCODER_MODE_IS_DP(args.v1.sDigEncoder.ucEncoderMode)) {
    if (dp_clock == 270000)
     args.v1.sDigEncoder.ucConfig |= ATOM_ENCODER_CONFIG_DPLINKRATE_2_70GHZ;
    args.v1.sDigEncoder.ucLaneNum = dp_lane_count;
   } else if (amdgpu_dig_monitor_is_duallink(encoder, amdgpu_encoder->pixel_clock))
    args.v1.sDigEncoder.ucLaneNum = 8;
   else
    args.v1.sDigEncoder.ucLaneNum = 4;
   break;
  case 3:
   args.v3.sExtEncoder.ucAction = action;
   if (action == EXTERNAL_ENCODER_ACTION_V3_ENCODER_INIT)
    args.v3.sExtEncoder.usConnectorId = cpu_to_le16(connector_object_id);
   else
    args.v3.sExtEncoder.usPixelClock = cpu_to_le16(amdgpu_encoder->pixel_clock / 10);
   args.v3.sExtEncoder.ucEncoderMode =
    amdgpu_atombios_encoder_get_encoder_mode(encoder);

   if (ENCODER_MODE_IS_DP(args.v3.sExtEncoder.ucEncoderMode)) {
    if (dp_clock == 270000)
     args.v3.sExtEncoder.ucConfig |= EXTERNAL_ENCODER_CONFIG_V3_DPLINKRATE_2_70GHZ;
    else if (dp_clock == 540000)
     args.v3.sExtEncoder.ucConfig |= EXTERNAL_ENCODER_CONFIG_V3_DPLINKRATE_5_40GHZ;
    args.v3.sExtEncoder.ucLaneNum = dp_lane_count;
   } else if (amdgpu_dig_monitor_is_duallink(encoder, amdgpu_encoder->pixel_clock))
    args.v3.sExtEncoder.ucLaneNum = 8;
   else
    args.v3.sExtEncoder.ucLaneNum = 4;
   switch (ext_enum) {
   case 130:
    args.v3.sExtEncoder.ucConfig |= EXTERNAL_ENCODER_CONFIG_V3_ENCODER1;
    break;
   case 129:
    args.v3.sExtEncoder.ucConfig |= EXTERNAL_ENCODER_CONFIG_V3_ENCODER2;
    break;
   case 128:
    args.v3.sExtEncoder.ucConfig |= EXTERNAL_ENCODER_CONFIG_V3_ENCODER3;
    break;
   }
   args.v3.sExtEncoder.ucBitPerColor = amdgpu_atombios_encoder_get_bpc(encoder);
   break;
  default:
   DRM_ERROR("Unknown table version: %d, %d\n", frev, crev);
   return;
  }
  break;
 default:
  DRM_ERROR("Unknown table version: %d, %d\n", frev, crev);
  return;
 }
 amdgpu_atom_execute_table(adev->mode_info.atom_context, index, (uint32_t *)&args);
}
