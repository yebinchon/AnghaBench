
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct amdgpu_device {int num_ip_blocks; TYPE_4__* ip_blocks; } ;
struct TYPE_5__ {scalar_t__ hang; int valid; } ;
struct TYPE_8__ {TYPE_3__* version; TYPE_1__ status; } ;
struct TYPE_7__ {TYPE_2__* funcs; } ;
struct TYPE_6__ {int name; scalar_t__ (* check_soft_reset ) (struct amdgpu_device*) ;} ;


 int DRM_INFO (char*,int ) ;
 scalar_t__ amdgpu_asic_need_full_reset (struct amdgpu_device*) ;
 scalar_t__ amdgpu_sriov_vf (struct amdgpu_device*) ;
 scalar_t__ stub1 (struct amdgpu_device*) ;

__attribute__((used)) static bool amdgpu_device_ip_check_soft_reset(struct amdgpu_device *adev)
{
 int i;
 bool asic_hang = 0;

 if (amdgpu_sriov_vf(adev))
  return 1;

 if (amdgpu_asic_need_full_reset(adev))
  return 1;

 for (i = 0; i < adev->num_ip_blocks; i++) {
  if (!adev->ip_blocks[i].status.valid)
   continue;
  if (adev->ip_blocks[i].version->funcs->check_soft_reset)
   adev->ip_blocks[i].status.hang =
    adev->ip_blocks[i].version->funcs->check_soft_reset(adev);
  if (adev->ip_blocks[i].status.hang) {
   DRM_INFO("IP block:%s is hung!\n", adev->ip_blocks[i].version->funcs->name);
   asic_hang = 1;
  }
 }
 return asic_hang;
}
