
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_9__ ;
typedef struct TYPE_19__ TYPE_8__ ;
typedef struct TYPE_18__ TYPE_7__ ;
typedef struct TYPE_17__ TYPE_6__ ;
typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;
typedef struct TYPE_11__ TYPE_10__ ;


struct drm_amdgpu_query_fw {int fw_type; int index; } ;
struct drm_amdgpu_info_firmware {int feature; int ver; } ;
struct TYPE_11__ {int dmcu_fw_version; } ;
struct TYPE_20__ {int asd_feature_version; int asd_fw_version; int sos_feature_version; int sos_fw_version; int ta_ras_ucode_version; int ta_fw_version; int ta_xgmi_ucode_version; } ;
struct TYPE_19__ {int num_instances; TYPE_7__* instance; } ;
struct TYPE_17__ {int fw_version; } ;
struct TYPE_16__ {int mec2_feature_version; int mec2_fw_version; int mec_feature_version; int mec_fw_version; int rlc_srls_feature_version; int rlc_srls_fw_version; int rlc_srlg_feature_version; int rlc_srlg_fw_version; int rlc_srlc_feature_version; int rlc_srlc_fw_version; int rlc_feature_version; int rlc_fw_version; int ce_feature_version; int ce_fw_version; int pfp_feature_version; int pfp_fw_version; int me_feature_version; int me_fw_version; } ;
struct TYPE_15__ {int fw_version; } ;
struct TYPE_14__ {int fw_version; } ;
struct TYPE_13__ {int fw_version; } ;
struct TYPE_12__ {int fb_version; int fw_version; } ;
struct amdgpu_device {TYPE_10__ dm; TYPE_9__ psp; TYPE_8__ sdma; TYPE_6__ pm; TYPE_5__ gfx; TYPE_4__ gmc; TYPE_3__ vcn; TYPE_2__ uvd; TYPE_1__ vce; } ;
struct TYPE_18__ {int feature_version; int fw_version; } ;
 int EINVAL ;

__attribute__((used)) static int amdgpu_firmware_info(struct drm_amdgpu_info_firmware *fw_info,
    struct drm_amdgpu_query_fw *query_fw,
    struct amdgpu_device *adev)
{
 switch (query_fw->fw_type) {
 case 129:
  fw_info->ver = adev->vce.fw_version;
  fw_info->feature = adev->vce.fb_version;
  break;
 case 130:
  fw_info->ver = adev->uvd.fw_version;
  fw_info->feature = 0;
  break;
 case 128:
  fw_info->ver = adev->vcn.fw_version;
  fw_info->feature = 0;
  break;
 case 135:
  fw_info->ver = adev->gmc.fw_version;
  fw_info->feature = 0;
  break;
 case 142:
  fw_info->ver = adev->gfx.me_fw_version;
  fw_info->feature = adev->gfx.me_feature_version;
  break;
 case 140:
  fw_info->ver = adev->gfx.pfp_fw_version;
  fw_info->feature = adev->gfx.pfp_feature_version;
  break;
 case 143:
  fw_info->ver = adev->gfx.ce_fw_version;
  fw_info->feature = adev->gfx.ce_feature_version;
  break;
 case 139:
  fw_info->ver = adev->gfx.rlc_fw_version;
  fw_info->feature = adev->gfx.rlc_feature_version;
  break;
 case 138:
  fw_info->ver = adev->gfx.rlc_srlc_fw_version;
  fw_info->feature = adev->gfx.rlc_srlc_feature_version;
  break;
 case 137:
  fw_info->ver = adev->gfx.rlc_srlg_fw_version;
  fw_info->feature = adev->gfx.rlc_srlg_feature_version;
  break;
 case 136:
  fw_info->ver = adev->gfx.rlc_srls_fw_version;
  fw_info->feature = adev->gfx.rlc_srls_feature_version;
  break;
 case 141:
  if (query_fw->index == 0) {
   fw_info->ver = adev->gfx.mec_fw_version;
   fw_info->feature = adev->gfx.mec_feature_version;
  } else if (query_fw->index == 1) {
   fw_info->ver = adev->gfx.mec2_fw_version;
   fw_info->feature = adev->gfx.mec2_feature_version;
  } else
   return -EINVAL;
  break;
 case 133:
  fw_info->ver = adev->pm.fw_version;
  fw_info->feature = 0;
  break;
 case 131:
  if (query_fw->index > 1)
   return -EINVAL;
  if (query_fw->index == 0) {
   fw_info->ver = adev->psp.ta_fw_version;
   fw_info->feature = adev->psp.ta_xgmi_ucode_version;
  } else {
   fw_info->ver = adev->psp.ta_fw_version;
   fw_info->feature = adev->psp.ta_ras_ucode_version;
  }
  break;
 case 134:
  if (query_fw->index >= adev->sdma.num_instances)
   return -EINVAL;
  fw_info->ver = adev->sdma.instance[query_fw->index].fw_version;
  fw_info->feature = adev->sdma.instance[query_fw->index].feature_version;
  break;
 case 132:
  fw_info->ver = adev->psp.sos_fw_version;
  fw_info->feature = adev->psp.sos_feature_version;
  break;
 case 145:
  fw_info->ver = adev->psp.asd_fw_version;
  fw_info->feature = adev->psp.asd_feature_version;
  break;
 case 144:
  fw_info->ver = adev->dm.dmcu_fw_version;
  fw_info->feature = 0;
  break;
 default:
  return -EINVAL;
 }
 return 0;
}
