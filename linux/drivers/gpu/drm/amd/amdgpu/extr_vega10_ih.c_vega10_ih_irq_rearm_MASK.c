#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint32_t ;
struct amdgpu_ih_ring {scalar_t__ ring_size; scalar_t__ rptr; int /*<<< orphan*/  doorbell_index; } ;
struct TYPE_2__ {struct amdgpu_ih_ring ih2; struct amdgpu_ih_ring ih1; struct amdgpu_ih_ring ih; } ;
struct amdgpu_device {TYPE_1__ irq; } ;

/* Variables and functions */
 scalar_t__ MAX_REARM_RETRY ; 
 int /*<<< orphan*/  OSSSYS ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  mmIH_RB_RPTR ; 
 int /*<<< orphan*/  mmIH_RB_RPTR_RING1 ; 
 int /*<<< orphan*/  mmIH_RB_RPTR_RING2 ; 

__attribute__((used)) static void FUNC3(struct amdgpu_device *adev,
			       struct amdgpu_ih_ring *ih)
{
	uint32_t reg_rptr = 0;
	uint32_t v = 0;
	uint32_t i = 0;

	if (ih == &adev->irq.ih)
		reg_rptr = FUNC1(OSSSYS, 0, mmIH_RB_RPTR);
	else if (ih == &adev->irq.ih1)
		reg_rptr = FUNC1(OSSSYS, 0, mmIH_RB_RPTR_RING1);
	else if (ih == &adev->irq.ih2)
		reg_rptr = FUNC1(OSSSYS, 0, mmIH_RB_RPTR_RING2);
	else
		return;

	/* Rearm IRQ / re-wwrite doorbell if doorbell write is lost */
	for (i = 0; i < MAX_REARM_RETRY; i++) {
		v = FUNC0(reg_rptr);
		if ((v < ih->ring_size) && (v != ih->rptr))
			FUNC2(ih->doorbell_index, ih->rptr);
		else
			break;
	}
}