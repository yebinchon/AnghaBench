
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint16_t ;
struct cgs_device {int dummy; } ;
typedef enum cgs_ucode_id { ____Placeholder_cgs_ucode_id } cgs_ucode_id ;
struct TYPE_7__ {int rlc_fw_version; int mec_fw_version; int me_fw_version; int pfp_fw_version; int ce_fw_version; } ;
struct TYPE_6__ {TYPE_1__* instance; } ;
struct TYPE_8__ {TYPE_3__ gfx; TYPE_2__ sdma; } ;
struct TYPE_5__ {int fw_version; } ;


 int CGS_FUNC_ADEV ;
 int DRM_ERROR (char*,int) ;
 TYPE_4__* adev ;

__attribute__((used)) static uint16_t amdgpu_get_firmware_version(struct cgs_device *cgs_device,
     enum cgs_ucode_id type)
{
 CGS_FUNC_ADEV;
 uint16_t fw_version = 0;

 switch (type) {
  case 130:
   fw_version = adev->sdma.instance[0].fw_version;
   break;
  case 129:
   fw_version = adev->sdma.instance[1].fw_version;
   break;
  case 137:
   fw_version = adev->gfx.ce_fw_version;
   break;
  case 132:
   fw_version = adev->gfx.pfp_fw_version;
   break;
  case 136:
   fw_version = adev->gfx.me_fw_version;
   break;
  case 135:
   fw_version = adev->gfx.mec_fw_version;
   break;
  case 134:
   fw_version = adev->gfx.mec_fw_version;
   break;
  case 133:
   fw_version = adev->gfx.mec_fw_version;
   break;
  case 131:
   fw_version = adev->gfx.rlc_fw_version;
   break;
  case 128:
   break;
  default:
   DRM_ERROR("firmware type %d do not have version\n", type);
   break;
 }
 return fw_version;
}
