
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint32_t ;
struct amdgpu_device {scalar_t__ asic_type; int num_ip_blocks; TYPE_4__* ip_blocks; scalar_t__ in_suspend; scalar_t__ in_gpu_reset; } ;
struct TYPE_7__ {int hw; } ;
struct TYPE_8__ {TYPE_3__ status; TYPE_2__* version; } ;
struct TYPE_6__ {scalar_t__ type; TYPE_1__* funcs; } ;
struct TYPE_5__ {int (* resume ) (struct amdgpu_device*) ;int (* hw_init ) (struct amdgpu_device*) ;int name; } ;


 scalar_t__ AMD_IP_BLOCK_TYPE_PSP ;
 scalar_t__ CHIP_VEGA10 ;
 int DRM_ERROR (char*,int ,int) ;
 int amdgpu_pm_load_smu_firmware (struct amdgpu_device*,int *) ;
 int stub1 (struct amdgpu_device*) ;
 int stub2 (struct amdgpu_device*) ;

__attribute__((used)) static int amdgpu_device_fw_loading(struct amdgpu_device *adev)
{
 int r = 0;
 int i;
 uint32_t smu_version;

 if (adev->asic_type >= CHIP_VEGA10) {
  for (i = 0; i < adev->num_ip_blocks; i++) {
   if (adev->ip_blocks[i].version->type != AMD_IP_BLOCK_TYPE_PSP)
    continue;


   if (adev->ip_blocks[i].status.hw == 1)
    break;

   if (adev->in_gpu_reset || adev->in_suspend) {
    r = adev->ip_blocks[i].version->funcs->resume(adev);
    if (r) {
     DRM_ERROR("resume of IP block <%s> failed %d\n",
         adev->ip_blocks[i].version->funcs->name, r);
     return r;
    }
   } else {
    r = adev->ip_blocks[i].version->funcs->hw_init(adev);
    if (r) {
     DRM_ERROR("hw_init of IP block <%s> failed %d\n",
         adev->ip_blocks[i].version->funcs->name, r);
     return r;
    }
   }

   adev->ip_blocks[i].status.hw = 1;
   break;
  }
 }

 r = amdgpu_pm_load_smu_firmware(adev, &smu_version);

 return r;
}
