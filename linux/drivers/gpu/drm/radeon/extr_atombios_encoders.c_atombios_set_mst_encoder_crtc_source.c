
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int ucEncoderID; int ucEncodeMode; int ucCRTC; } ;
union crtc_source_param {TYPE_1__ v2; } ;
typedef int uint8_t ;
typedef int uint32_t ;
struct TYPE_4__ {int atom_context; } ;
struct radeon_device {TYPE_2__ mode_info; } ;
struct radeon_crtc {int crtc_id; } ;
struct drm_encoder {int crtc; struct drm_device* dev; } ;
struct drm_device {struct radeon_device* dev_private; } ;
typedef int args ;


 int ASIC_INT_DIG1_ENCODER_ID ;
 int ASIC_INT_DIG2_ENCODER_ID ;
 int ASIC_INT_DIG3_ENCODER_ID ;
 int ASIC_INT_DIG4_ENCODER_ID ;
 int ASIC_INT_DIG5_ENCODER_ID ;
 int ASIC_INT_DIG6_ENCODER_ID ;
 int ASIC_INT_DIG7_ENCODER_ID ;
 int ATOM_ENCODER_MODE_DP_MST ;
 int COMMAND ;
 int DRM_ERROR (char*,int,int) ;
 int GetIndexIntoMasterTable (int ,int ) ;
 int SelectCRTC_Source ;
 int atom_execute_table (int ,int,int *) ;
 int atom_parse_cmd_header (int ,int,int*,int*) ;
 int memset (union crtc_source_param*,int ,int) ;
 struct radeon_crtc* to_radeon_crtc (int ) ;

void
atombios_set_mst_encoder_crtc_source(struct drm_encoder *encoder, int fe)
{
 struct drm_device *dev = encoder->dev;
 struct radeon_device *rdev = dev->dev_private;
 struct radeon_crtc *radeon_crtc = to_radeon_crtc(encoder->crtc);
 int index = GetIndexIntoMasterTable(COMMAND, SelectCRTC_Source);
 uint8_t frev, crev;
 union crtc_source_param args;

 memset(&args, 0, sizeof(args));

 if (!atom_parse_cmd_header(rdev->mode_info.atom_context, index, &frev, &crev))
  return;

 if (frev != 1 && crev != 2)
  DRM_ERROR("Unknown table for MST %d, %d\n", frev, crev);

 args.v2.ucCRTC = radeon_crtc->crtc_id;
 args.v2.ucEncodeMode = ATOM_ENCODER_MODE_DP_MST;

 switch (fe) {
 case 0:
  args.v2.ucEncoderID = ASIC_INT_DIG1_ENCODER_ID;
  break;
 case 1:
  args.v2.ucEncoderID = ASIC_INT_DIG2_ENCODER_ID;
  break;
 case 2:
  args.v2.ucEncoderID = ASIC_INT_DIG3_ENCODER_ID;
  break;
 case 3:
  args.v2.ucEncoderID = ASIC_INT_DIG4_ENCODER_ID;
  break;
 case 4:
  args.v2.ucEncoderID = ASIC_INT_DIG5_ENCODER_ID;
  break;
 case 5:
  args.v2.ucEncoderID = ASIC_INT_DIG6_ENCODER_ID;
  break;
 case 6:
  args.v2.ucEncoderID = ASIC_INT_DIG7_ENCODER_ID;
  break;
 }
 atom_execute_table(rdev->mode_info.atom_context, index, (uint32_t *)&args);
}
