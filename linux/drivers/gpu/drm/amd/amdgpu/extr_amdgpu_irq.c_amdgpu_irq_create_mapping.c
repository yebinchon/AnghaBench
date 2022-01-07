
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int* virq; int domain; } ;
struct amdgpu_device {TYPE_1__ irq; } ;


 int irq_create_mapping (int ,unsigned int) ;

unsigned amdgpu_irq_create_mapping(struct amdgpu_device *adev, unsigned src_id)
{
 adev->irq.virq[src_id] = irq_create_mapping(adev->irq.domain, src_id);

 return adev->irq.virq[src_id];
}
