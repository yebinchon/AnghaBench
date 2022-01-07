
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct amdgpu_device {int num_ip_blocks; TYPE_3__* ip_blocks; } ;
struct TYPE_5__ {scalar_t__ hang; int valid; } ;
struct TYPE_6__ {TYPE_2__ status; TYPE_1__* version; } ;
struct TYPE_4__ {scalar_t__ type; } ;


 scalar_t__ AMD_IP_BLOCK_TYPE_ACP ;
 scalar_t__ AMD_IP_BLOCK_TYPE_DCE ;
 scalar_t__ AMD_IP_BLOCK_TYPE_GMC ;
 scalar_t__ AMD_IP_BLOCK_TYPE_PSP ;
 scalar_t__ AMD_IP_BLOCK_TYPE_SMC ;
 int DRM_INFO (char*) ;
 scalar_t__ amdgpu_asic_need_full_reset (struct amdgpu_device*) ;

__attribute__((used)) static bool amdgpu_device_ip_need_full_reset(struct amdgpu_device *adev)
{
 int i;

 if (amdgpu_asic_need_full_reset(adev))
  return 1;

 for (i = 0; i < adev->num_ip_blocks; i++) {
  if (!adev->ip_blocks[i].status.valid)
   continue;
  if ((adev->ip_blocks[i].version->type == AMD_IP_BLOCK_TYPE_GMC) ||
      (adev->ip_blocks[i].version->type == AMD_IP_BLOCK_TYPE_SMC) ||
      (adev->ip_blocks[i].version->type == AMD_IP_BLOCK_TYPE_ACP) ||
      (adev->ip_blocks[i].version->type == AMD_IP_BLOCK_TYPE_DCE) ||
       adev->ip_blocks[i].version->type == AMD_IP_BLOCK_TYPE_PSP) {
   if (adev->ip_blocks[i].status.hang) {
    DRM_INFO("Some block need full reset!\n");
    return 1;
   }
  }
 }
 return 0;
}
