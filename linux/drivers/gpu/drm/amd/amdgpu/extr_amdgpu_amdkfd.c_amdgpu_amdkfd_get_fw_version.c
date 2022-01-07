
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
struct kgd_dev {int dummy; } ;
struct TYPE_5__ {TYPE_1__* instance; } ;
struct TYPE_6__ {int rlc_fw_version; int mec2_fw_version; int mec_fw_version; int ce_fw_version; int me_fw_version; int pfp_fw_version; } ;
struct amdgpu_device {TYPE_2__ sdma; TYPE_3__ gfx; } ;
typedef enum kgd_engine_type { ____Placeholder_kgd_engine_type } kgd_engine_type ;
struct TYPE_4__ {int fw_version; } ;
uint32_t amdgpu_amdkfd_get_fw_version(struct kgd_dev *kgd,
          enum kgd_engine_type type)
{
 struct amdgpu_device *adev = (struct amdgpu_device *)kgd;

 switch (type) {
 case 131:
  return adev->gfx.pfp_fw_version;

 case 134:
  return adev->gfx.me_fw_version;

 case 135:
  return adev->gfx.ce_fw_version;

 case 133:
  return adev->gfx.mec_fw_version;

 case 132:
  return adev->gfx.mec2_fw_version;

 case 130:
  return adev->gfx.rlc_fw_version;

 case 129:
  return adev->sdma.instance[0].fw_version;

 case 128:
  return adev->sdma.instance[1].fw_version;

 default:
  return 0;
 }

 return 0;
}
