#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct amdgpu_irq_src {TYPE_1__* funcs; } ;
struct TYPE_4__ {int /*<<< orphan*/  lock; } ;
struct amdgpu_device {TYPE_2__ irq; } ;
typedef  enum amdgpu_interrupt_state { ____Placeholder_amdgpu_interrupt_state } amdgpu_interrupt_state ;
struct TYPE_3__ {int (* set ) (struct amdgpu_device*,struct amdgpu_irq_src*,unsigned int,int) ;} ;

/* Variables and functions */
 int AMDGPU_IRQ_STATE_DISABLE ; 
 int AMDGPU_IRQ_STATE_ENABLE ; 
 scalar_t__ FUNC0 (struct amdgpu_device*,struct amdgpu_irq_src*,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int FUNC3 (struct amdgpu_device*,struct amdgpu_irq_src*,unsigned int,int) ; 

int FUNC4(struct amdgpu_device *adev,
			     struct amdgpu_irq_src *src, unsigned type)
{
	unsigned long irqflags;
	enum amdgpu_interrupt_state state;
	int r;

	FUNC1(&adev->irq.lock, irqflags);

	/* We need to determine after taking the lock, otherwise
	   we might disable just enabled interrupts again */
	if (FUNC0(adev, src, type))
		state = AMDGPU_IRQ_STATE_ENABLE;
	else
		state = AMDGPU_IRQ_STATE_DISABLE;

	r = src->funcs->set(adev, src, type, state);
	FUNC2(&adev->irq.lock, irqflags);
	return r;
}