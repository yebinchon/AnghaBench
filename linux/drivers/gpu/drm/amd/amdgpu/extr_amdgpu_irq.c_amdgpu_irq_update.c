
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct amdgpu_irq_src {TYPE_1__* funcs; } ;
struct TYPE_4__ {int lock; } ;
struct amdgpu_device {TYPE_2__ irq; } ;
typedef enum amdgpu_interrupt_state { ____Placeholder_amdgpu_interrupt_state } amdgpu_interrupt_state ;
struct TYPE_3__ {int (* set ) (struct amdgpu_device*,struct amdgpu_irq_src*,unsigned int,int) ;} ;


 int AMDGPU_IRQ_STATE_DISABLE ;
 int AMDGPU_IRQ_STATE_ENABLE ;
 scalar_t__ amdgpu_irq_enabled (struct amdgpu_device*,struct amdgpu_irq_src*,unsigned int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stub1 (struct amdgpu_device*,struct amdgpu_irq_src*,unsigned int,int) ;

int amdgpu_irq_update(struct amdgpu_device *adev,
        struct amdgpu_irq_src *src, unsigned type)
{
 unsigned long irqflags;
 enum amdgpu_interrupt_state state;
 int r;

 spin_lock_irqsave(&adev->irq.lock, irqflags);



 if (amdgpu_irq_enabled(adev, src, type))
  state = AMDGPU_IRQ_STATE_ENABLE;
 else
  state = AMDGPU_IRQ_STATE_DISABLE;

 r = src->funcs->set(adev, src, type, state);
 spin_unlock_irqrestore(&adev->irq.lock, irqflags);
 return r;
}
