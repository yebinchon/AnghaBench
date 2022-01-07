
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct amdgpu_sdma_instance {int dummy; } ;
struct TYPE_3__ {int num_instances; TYPE_2__* instance; } ;
struct amdgpu_device {scalar_t__ asic_type; TYPE_1__ sdma; } ;
struct TYPE_4__ {int * fw; } ;


 int AMDGPU_MAX_SDMA_INSTANCES ;
 scalar_t__ CHIP_ARCTURUS ;
 int memset (void*,int ,int) ;
 int release_firmware (int *) ;

__attribute__((used)) static void sdma_v4_0_destroy_inst_ctx(struct amdgpu_device *adev)
{
 int i;

 for (i = 0; i < adev->sdma.num_instances; i++) {
  if (adev->sdma.instance[i].fw != ((void*)0))
   release_firmware(adev->sdma.instance[i].fw);



  if (adev->asic_type == CHIP_ARCTURUS)
   break;
 }

 memset((void*)adev->sdma.instance, 0,
  sizeof(struct amdgpu_sdma_instance) * AMDGPU_MAX_SDMA_INSTANCES);
}
