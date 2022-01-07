
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_7__ ;
typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {int ucCRTC; int ucTransmitterID; int ucEncoderMode; int ucPpll; int ucDeepColorRatio; int ucMiscInfo; void* ulPixelClock; } ;
struct TYPE_8__ {int ucRefDiv; int ucPostDiv; int ucTransmitterID; int ucEncoderMode; int ucPpll; int ucMiscInfo; void* ulFbDivDecFrac; void* usFbDiv; void* ulDispEngClkFreq; } ;
struct TYPE_14__ {int ucCRTC; int ucRefDiv; int ucPostDiv; int ucTransmitterID; int ucEncoderMode; int ucPpll; int ucMiscInfo; void* ulFbDivDecFrac; void* usFbDiv; void* usPixelClock; } ;
struct TYPE_13__ {int ucFracFbDiv; int ucPostDiv; int ucPpll; int ucTransmitterId; int ucEncoderMode; int ucMiscInfo; void* usFbDiv; void* usRefDiv; void* usPixelClock; } ;
struct TYPE_12__ {int ucFracFbDiv; int ucPostDiv; int ucPpll; int ucCRTC; int ucRefDivSrc; void* usFbDiv; void* usRefDiv; void* usPixelClock; } ;
struct TYPE_11__ {int ucFracFbDiv; int ucPostDiv; int ucPpll; int ucCRTC; int ucRefDivSrc; void* usFbDiv; void* usRefDiv; void* usPixelClock; } ;
union set_pixel_clock {TYPE_2__ v7; TYPE_1__ v6; TYPE_7__ v5; TYPE_6__ v3; TYPE_5__ v2; TYPE_4__ v1; } ;
typedef int uint32_t ;
typedef int u8 ;
typedef int u32 ;
struct drm_device {struct amdgpu_device* dev_private; } ;
struct drm_crtc {struct drm_device* dev; } ;
struct TYPE_10__ {int atom_context; } ;
struct amdgpu_device {TYPE_3__ mode_info; } ;
struct amdgpu_atom_ss {int type; } ;
typedef int args ;


 int ATOM_CRTC2 ;
 int ATOM_DISABLE ;
 int ATOM_ENCODER_MODE_DVI ;
 int ATOM_ENCODER_MODE_HDMI ;
 int ATOM_EXTERNAL_SS_MASK ;
 int ATOM_EXT_PLL1 ;
 int COMMAND ;
 int DRM_ERROR (char*,int,int) ;
 int GetIndexIntoMasterTable (int ,int ) ;
 int PIXEL_CLOCK_MISC_CRTC_SEL_CRTC1 ;
 int PIXEL_CLOCK_MISC_CRTC_SEL_CRTC2 ;
 int PIXEL_CLOCK_MISC_REF_DIV_SRC ;
 int PIXEL_CLOCK_V5_MISC_HDMI_24BPP ;
 int PIXEL_CLOCK_V5_MISC_HDMI_30BPP ;
 int PIXEL_CLOCK_V5_MISC_HDMI_32BPP ;
 int PIXEL_CLOCK_V5_MISC_REF_DIV_SRC ;
 int PIXEL_CLOCK_V6_MISC_HDMI_24BPP ;
 int PIXEL_CLOCK_V6_MISC_HDMI_30BPP_V6 ;
 int PIXEL_CLOCK_V6_MISC_HDMI_36BPP_V6 ;
 int PIXEL_CLOCK_V6_MISC_HDMI_48BPP ;
 int PIXEL_CLOCK_V6_MISC_REF_DIV_SRC ;
 int PIXEL_CLOCK_V7_DEEPCOLOR_RATIO_2_1 ;
 int PIXEL_CLOCK_V7_DEEPCOLOR_RATIO_3_2 ;
 int PIXEL_CLOCK_V7_DEEPCOLOR_RATIO_5_4 ;
 int PIXEL_CLOCK_V7_DEEPCOLOR_RATIO_DIS ;
 int PIXEL_CLOCK_V7_MISC_DVI_DUALLINK_EN ;
 int SetPixelClock ;
 int amdgpu_atom_execute_table (int ,int,int *) ;
 int amdgpu_atom_parse_cmd_header (int ,int,int*,int*) ;
 void* cpu_to_le16 (int) ;
 void* cpu_to_le32 (int) ;
 int is_pixel_clock_source_from_pll (int,int) ;
 int memset (union set_pixel_clock*,int ,int) ;

void amdgpu_atombios_crtc_program_pll(struct drm_crtc *crtc,
          u32 crtc_id,
          int pll_id,
          u32 encoder_mode,
          u32 encoder_id,
          u32 clock,
          u32 ref_div,
          u32 fb_div,
          u32 frac_fb_div,
          u32 post_div,
          int bpc,
          bool ss_enabled,
          struct amdgpu_atom_ss *ss)
{
 struct drm_device *dev = crtc->dev;
 struct amdgpu_device *adev = dev->dev_private;
 u8 frev, crev;
 int index = GetIndexIntoMasterTable(COMMAND, SetPixelClock);
 union set_pixel_clock args;

 memset(&args, 0, sizeof(args));

 if (!amdgpu_atom_parse_cmd_header(adev->mode_info.atom_context, index, &frev,
       &crev))
  return;

 switch (frev) {
 case 1:
  switch (crev) {
  case 1:
   if (clock == ATOM_DISABLE)
    return;
   args.v1.usPixelClock = cpu_to_le16(clock / 10);
   args.v1.usRefDiv = cpu_to_le16(ref_div);
   args.v1.usFbDiv = cpu_to_le16(fb_div);
   args.v1.ucFracFbDiv = frac_fb_div;
   args.v1.ucPostDiv = post_div;
   args.v1.ucPpll = pll_id;
   args.v1.ucCRTC = crtc_id;
   args.v1.ucRefDivSrc = 1;
   break;
  case 2:
   args.v2.usPixelClock = cpu_to_le16(clock / 10);
   args.v2.usRefDiv = cpu_to_le16(ref_div);
   args.v2.usFbDiv = cpu_to_le16(fb_div);
   args.v2.ucFracFbDiv = frac_fb_div;
   args.v2.ucPostDiv = post_div;
   args.v2.ucPpll = pll_id;
   args.v2.ucCRTC = crtc_id;
   args.v2.ucRefDivSrc = 1;
   break;
  case 3:
   args.v3.usPixelClock = cpu_to_le16(clock / 10);
   args.v3.usRefDiv = cpu_to_le16(ref_div);
   args.v3.usFbDiv = cpu_to_le16(fb_div);
   args.v3.ucFracFbDiv = frac_fb_div;
   args.v3.ucPostDiv = post_div;
   args.v3.ucPpll = pll_id;
   if (crtc_id == ATOM_CRTC2)
    args.v3.ucMiscInfo = PIXEL_CLOCK_MISC_CRTC_SEL_CRTC2;
   else
    args.v3.ucMiscInfo = PIXEL_CLOCK_MISC_CRTC_SEL_CRTC1;
   if (ss_enabled && (ss->type & ATOM_EXTERNAL_SS_MASK))
    args.v3.ucMiscInfo |= PIXEL_CLOCK_MISC_REF_DIV_SRC;
   args.v3.ucTransmitterId = encoder_id;
   args.v3.ucEncoderMode = encoder_mode;
   break;
  case 5:
   args.v5.ucCRTC = crtc_id;
   args.v5.usPixelClock = cpu_to_le16(clock / 10);
   args.v5.ucRefDiv = ref_div;
   args.v5.usFbDiv = cpu_to_le16(fb_div);
   args.v5.ulFbDivDecFrac = cpu_to_le32(frac_fb_div * 100000);
   args.v5.ucPostDiv = post_div;
   args.v5.ucMiscInfo = 0;
   if ((ss_enabled && (ss->type & ATOM_EXTERNAL_SS_MASK)) &&
       (pll_id < ATOM_EXT_PLL1))
    args.v5.ucMiscInfo |= PIXEL_CLOCK_V5_MISC_REF_DIV_SRC;
   if (encoder_mode == ATOM_ENCODER_MODE_HDMI) {
    switch (bpc) {
    case 8:
    default:
     args.v5.ucMiscInfo |= PIXEL_CLOCK_V5_MISC_HDMI_24BPP;
     break;
    case 10:

     args.v5.ucMiscInfo |= PIXEL_CLOCK_V5_MISC_HDMI_32BPP;
     break;
    case 12:

     args.v5.ucMiscInfo |= PIXEL_CLOCK_V5_MISC_HDMI_30BPP;
     break;
    }
   }
   args.v5.ucTransmitterID = encoder_id;
   args.v5.ucEncoderMode = encoder_mode;
   args.v5.ucPpll = pll_id;
   break;
  case 6:
   args.v6.ulDispEngClkFreq = cpu_to_le32(crtc_id << 24 | clock / 10);
   args.v6.ucRefDiv = ref_div;
   args.v6.usFbDiv = cpu_to_le16(fb_div);
   args.v6.ulFbDivDecFrac = cpu_to_le32(frac_fb_div * 100000);
   args.v6.ucPostDiv = post_div;
   args.v6.ucMiscInfo = 0;
   if ((ss_enabled && (ss->type & ATOM_EXTERNAL_SS_MASK)) &&
       (pll_id < ATOM_EXT_PLL1) &&
       !is_pixel_clock_source_from_pll(encoder_mode, pll_id))
    args.v6.ucMiscInfo |= PIXEL_CLOCK_V6_MISC_REF_DIV_SRC;
   if (encoder_mode == ATOM_ENCODER_MODE_HDMI) {
    switch (bpc) {
    case 8:
    default:
     args.v6.ucMiscInfo |= PIXEL_CLOCK_V6_MISC_HDMI_24BPP;
     break;
    case 10:
     args.v6.ucMiscInfo |= PIXEL_CLOCK_V6_MISC_HDMI_30BPP_V6;
     break;
    case 12:
     args.v6.ucMiscInfo |= PIXEL_CLOCK_V6_MISC_HDMI_36BPP_V6;
     break;
    case 16:
     args.v6.ucMiscInfo |= PIXEL_CLOCK_V6_MISC_HDMI_48BPP;
     break;
    }
   }
   args.v6.ucTransmitterID = encoder_id;
   args.v6.ucEncoderMode = encoder_mode;
   args.v6.ucPpll = pll_id;
   break;
  case 7:
   args.v7.ulPixelClock = cpu_to_le32(clock * 10);
   args.v7.ucMiscInfo = 0;
   if ((encoder_mode == ATOM_ENCODER_MODE_DVI) &&
       (clock > 165000))
    args.v7.ucMiscInfo |= PIXEL_CLOCK_V7_MISC_DVI_DUALLINK_EN;
   args.v7.ucCRTC = crtc_id;
   if (encoder_mode == ATOM_ENCODER_MODE_HDMI) {
    switch (bpc) {
    case 8:
    default:
     args.v7.ucDeepColorRatio = PIXEL_CLOCK_V7_DEEPCOLOR_RATIO_DIS;
     break;
    case 10:
     args.v7.ucDeepColorRatio = PIXEL_CLOCK_V7_DEEPCOLOR_RATIO_5_4;
     break;
    case 12:
     args.v7.ucDeepColorRatio = PIXEL_CLOCK_V7_DEEPCOLOR_RATIO_3_2;
     break;
    case 16:
     args.v7.ucDeepColorRatio = PIXEL_CLOCK_V7_DEEPCOLOR_RATIO_2_1;
     break;
    }
   }
   args.v7.ucTransmitterID = encoder_id;
   args.v7.ucEncoderMode = encoder_mode;
   args.v7.ucPpll = pll_id;
   break;
  default:
   DRM_ERROR("Unknown table version %d %d\n", frev, crev);
   return;
  }
  break;
 default:
  DRM_ERROR("Unknown table version %d %d\n", frev, crev);
  return;
 }

 amdgpu_atom_execute_table(adev->mode_info.atom_context, index, (uint32_t *)&args);
}
