
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct amdgpu_irq_src {int dummy; } ;
struct TYPE_2__ {int dc; } ;
struct amdgpu_device {TYPE_1__ dm; } ;
typedef enum dc_irq_source { ____Placeholder_dc_irq_source } dc_irq_source ;
typedef enum amdgpu_interrupt_state { ____Placeholder_amdgpu_interrupt_state } amdgpu_interrupt_state ;


 int AMDGPU_IRQ_STATE_ENABLE ;
 int amdgpu_dm_hpd_to_dal_irq_source (unsigned int) ;
 int dc_interrupt_set (int ,int,int) ;

__attribute__((used)) static int amdgpu_dm_set_hpd_irq_state(struct amdgpu_device *adev,
           struct amdgpu_irq_src *source,
           unsigned type,
           enum amdgpu_interrupt_state state)
{
 enum dc_irq_source src = amdgpu_dm_hpd_to_dal_irq_source(type);
 bool st = (state == AMDGPU_IRQ_STATE_ENABLE);

 dc_interrupt_set(adev->dm.dc, src, st);
 return 0;
}
