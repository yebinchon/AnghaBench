
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint ;
struct TYPE_4__ {TYPE_1__* instance; } ;
struct amdgpu_device {int asic_type; TYPE_2__ sdma; } ;
struct TYPE_3__ {int fw_version; } ;






__attribute__((used)) static bool sdma_v4_0_fw_support_paging_queue(struct amdgpu_device *adev)
{
 uint fw_version = adev->sdma.instance[0].fw_version;

 switch (adev->asic_type) {
 case 130:
  return fw_version >= 430;
 case 129:

  return 0;
 case 128:
  return fw_version >= 123;
 default:
  return 0;
 }
}
