
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ras_common_if {int dummy; } ;
struct ras_dispatch_if {struct ras_common_if head; struct amdgpu_iv_entry* entry; } ;
struct amdgpu_iv_entry {int dummy; } ;
struct amdgpu_irq_src {int dummy; } ;
struct TYPE_2__ {struct ras_common_if* ras_if; } ;
struct amdgpu_device {TYPE_1__ sdma; } ;


 int amdgpu_ras_interrupt_dispatch (struct amdgpu_device*,struct ras_dispatch_if*) ;

__attribute__((used)) static int sdma_v4_0_process_ecc_irq(struct amdgpu_device *adev,
          struct amdgpu_irq_src *source,
          struct amdgpu_iv_entry *entry)
{
 struct ras_common_if *ras_if = adev->sdma.ras_if;
 struct ras_dispatch_if ih_data = {
  .entry = entry,
 };

 if (!ras_if)
  return 0;

 ih_data.head = *ras_if;

 amdgpu_ras_interrupt_dispatch(adev, &ih_data);
 return 0;
}
