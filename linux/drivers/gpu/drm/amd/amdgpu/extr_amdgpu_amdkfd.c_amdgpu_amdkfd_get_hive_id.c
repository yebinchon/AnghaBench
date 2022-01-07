
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint64_t ;
struct kgd_dev {int dummy; } ;
struct TYPE_3__ {int hive_id; } ;
struct TYPE_4__ {TYPE_1__ xgmi; } ;
struct amdgpu_device {TYPE_2__ gmc; } ;



uint64_t amdgpu_amdkfd_get_hive_id(struct kgd_dev *kgd)
{
 struct amdgpu_device *adev = (struct amdgpu_device *)kgd;

 return adev->gmc.xgmi.hive_id;
}
