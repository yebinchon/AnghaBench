
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ hive_id; } ;
struct TYPE_4__ {TYPE_1__ xgmi; } ;
struct amdgpu_device {TYPE_2__ gmc; } ;



__attribute__((used)) static inline bool amdgpu_xgmi_same_hive(struct amdgpu_device *adev,
  struct amdgpu_device *bo_adev)
{
 return (adev != bo_adev &&
  adev->gmc.xgmi.hive_id &&
  adev->gmc.xgmi.hive_id == bo_adev->gmc.xgmi.hive_id);
}
