
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
struct radeon_encoder {int devices; scalar_t__ encoder_id; } ;
struct TYPE_6__ {int atom_context; } ;
struct radeon_device {TYPE_2__ mode_info; } ;
struct radeon_connector {int devices; } ;
struct drm_encoder {struct drm_device* dev; } ;
struct drm_device {struct radeon_device* dev_private; } ;
struct drm_connector {int dummy; } ;
typedef int args ;
struct TYPE_5__ {void* ucMisc; void* usDeviceID; int ucDacType; } ;
struct TYPE_7__ {TYPE_1__ sDacload; } ;
typedef TYPE_3__ DAC_LOAD_DETECTION_PS_ALLOCATION ;


 int ATOM_DAC_A ;
 int ATOM_DAC_B ;
 int ATOM_DEVICE_CRT1_SUPPORT ;
 int ATOM_DEVICE_CRT2_SUPPORT ;
 int ATOM_DEVICE_CRT_SUPPORT ;
 int ATOM_DEVICE_CV_SUPPORT ;
 int ATOM_DEVICE_TV1_SUPPORT ;
 int ATOM_DEVICE_TV_SUPPORT ;
 int COMMAND ;
 void* DAC_LOAD_MISC_YPrPb ;
 int DAC_LoadDetection ;
 scalar_t__ ENCODER_OBJECT_ID_INTERNAL_DAC1 ;
 scalar_t__ ENCODER_OBJECT_ID_INTERNAL_KLDSCP_DAC1 ;
 int GetIndexIntoMasterTable (int ,int ) ;
 int atom_execute_table (int ,int,int *) ;
 int atom_parse_cmd_header (int ,int,int*,int*) ;
 void* cpu_to_le16 (int) ;
 int memset (TYPE_3__*,int ,int) ;
 struct radeon_connector* to_radeon_connector (struct drm_connector*) ;
 struct radeon_encoder* to_radeon_encoder (struct drm_encoder*) ;

__attribute__((used)) static bool
atombios_dac_load_detect(struct drm_encoder *encoder, struct drm_connector *connector)
{
 struct drm_device *dev = encoder->dev;
 struct radeon_device *rdev = dev->dev_private;
 struct radeon_encoder *radeon_encoder = to_radeon_encoder(encoder);
 struct radeon_connector *radeon_connector = to_radeon_connector(connector);

 if (radeon_encoder->devices & (ATOM_DEVICE_TV_SUPPORT |
           ATOM_DEVICE_CV_SUPPORT |
           ATOM_DEVICE_CRT_SUPPORT)) {
  DAC_LOAD_DETECTION_PS_ALLOCATION args;
  int index = GetIndexIntoMasterTable(COMMAND, DAC_LoadDetection);
  uint8_t frev, crev;

  memset(&args, 0, sizeof(args));

  if (!atom_parse_cmd_header(rdev->mode_info.atom_context, index, &frev, &crev))
   return 0;

  args.sDacload.ucMisc = 0;

  if ((radeon_encoder->encoder_id == ENCODER_OBJECT_ID_INTERNAL_DAC1) ||
      (radeon_encoder->encoder_id == ENCODER_OBJECT_ID_INTERNAL_KLDSCP_DAC1))
   args.sDacload.ucDacType = ATOM_DAC_A;
  else
   args.sDacload.ucDacType = ATOM_DAC_B;

  if (radeon_connector->devices & ATOM_DEVICE_CRT1_SUPPORT)
   args.sDacload.usDeviceID = cpu_to_le16(ATOM_DEVICE_CRT1_SUPPORT);
  else if (radeon_connector->devices & ATOM_DEVICE_CRT2_SUPPORT)
   args.sDacload.usDeviceID = cpu_to_le16(ATOM_DEVICE_CRT2_SUPPORT);
  else if (radeon_connector->devices & ATOM_DEVICE_CV_SUPPORT) {
   args.sDacload.usDeviceID = cpu_to_le16(ATOM_DEVICE_CV_SUPPORT);
   if (crev >= 3)
    args.sDacload.ucMisc = DAC_LOAD_MISC_YPrPb;
  } else if (radeon_connector->devices & ATOM_DEVICE_TV1_SUPPORT) {
   args.sDacload.usDeviceID = cpu_to_le16(ATOM_DEVICE_TV1_SUPPORT);
   if (crev >= 3)
    args.sDacload.ucMisc = DAC_LOAD_MISC_YPrPb;
  }

  atom_execute_table(rdev->mode_info.atom_context, index, (uint32_t *)&args);

  return 1;
 } else
  return 0;
}
