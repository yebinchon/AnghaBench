
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int num_instances; TYPE_1__* instance; } ;
struct amdgpu_device {TYPE_2__ sdma; } ;
struct TYPE_3__ {int * fw; } ;


 int release_firmware (int *) ;

__attribute__((used)) static void sdma_v3_0_free_microcode(struct amdgpu_device *adev)
{
 int i;
 for (i = 0; i < adev->sdma.num_instances; i++) {
  release_firmware(adev->sdma.instance[i].fw);
  adev->sdma.instance[i].fw = ((void*)0);
 }
}
