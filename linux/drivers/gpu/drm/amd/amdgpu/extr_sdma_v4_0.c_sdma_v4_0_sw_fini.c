
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ras_common_if {int dummy; } ;
struct ras_ih_if {struct ras_common_if head; } ;
struct TYPE_4__ {int num_instances; TYPE_1__* instance; scalar_t__ has_page_queue; struct ras_common_if* ras_if; } ;
struct amdgpu_device {TYPE_2__ sdma; } ;
struct TYPE_3__ {int page; int ring; } ;


 int AMDGPU_RAS_BLOCK__SDMA ;
 int amdgpu_ras_debugfs_remove (struct amdgpu_device*,struct ras_common_if*) ;
 int amdgpu_ras_feature_enable (struct amdgpu_device*,struct ras_common_if*,int ) ;
 int amdgpu_ras_interrupt_remove_handler (struct amdgpu_device*,struct ras_ih_if*) ;
 scalar_t__ amdgpu_ras_is_supported (struct amdgpu_device*,int ) ;
 int amdgpu_ras_sysfs_remove (struct amdgpu_device*,struct ras_common_if*) ;
 int amdgpu_ring_fini (int *) ;
 int kfree (struct ras_common_if*) ;
 int sdma_v4_0_destroy_inst_ctx (struct amdgpu_device*) ;

__attribute__((used)) static int sdma_v4_0_sw_fini(void *handle)
{
 struct amdgpu_device *adev = (struct amdgpu_device *)handle;
 int i;

 if (amdgpu_ras_is_supported(adev, AMDGPU_RAS_BLOCK__SDMA) &&
   adev->sdma.ras_if) {
  struct ras_common_if *ras_if = adev->sdma.ras_if;
  struct ras_ih_if ih_info = {
   .head = *ras_if,
  };


  amdgpu_ras_debugfs_remove(adev, ras_if);
  amdgpu_ras_sysfs_remove(adev, ras_if);

  amdgpu_ras_interrupt_remove_handler(adev, &ih_info);
  amdgpu_ras_feature_enable(adev, ras_if, 0);
  kfree(ras_if);
 }

 for (i = 0; i < adev->sdma.num_instances; i++) {
  amdgpu_ring_fini(&adev->sdma.instance[i].ring);
  if (adev->sdma.has_page_queue)
   amdgpu_ring_fini(&adev->sdma.instance[i].page);
 }

 sdma_v4_0_destroy_inst_ctx(adev);

 return 0;
}
