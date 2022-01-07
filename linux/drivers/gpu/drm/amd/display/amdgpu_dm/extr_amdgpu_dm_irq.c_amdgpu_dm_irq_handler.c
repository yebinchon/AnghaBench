
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct amdgpu_iv_entry {int * src_data; int src_id; } ;
struct amdgpu_irq_src {int dummy; } ;
struct TYPE_2__ {int dc; } ;
struct amdgpu_device {TYPE_1__ dm; } ;
typedef enum dc_irq_source { ____Placeholder_dc_irq_source } dc_irq_source ;


 int amdgpu_dm_irq_immediate_work (struct amdgpu_device*,int) ;
 int amdgpu_dm_irq_schedule_work (struct amdgpu_device*,int) ;
 int dc_interrupt_ack (int ,int) ;
 int dc_interrupt_to_irq_source (int ,int ,int ) ;

__attribute__((used)) static int amdgpu_dm_irq_handler(struct amdgpu_device *adev,
     struct amdgpu_irq_src *source,
     struct amdgpu_iv_entry *entry)
{

 enum dc_irq_source src =
  dc_interrupt_to_irq_source(
   adev->dm.dc,
   entry->src_id,
   entry->src_data[0]);

 dc_interrupt_ack(adev->dm.dc, src);


 amdgpu_dm_irq_immediate_work(adev, src);

 amdgpu_dm_irq_schedule_work(adev, src);

 return 0;
}
