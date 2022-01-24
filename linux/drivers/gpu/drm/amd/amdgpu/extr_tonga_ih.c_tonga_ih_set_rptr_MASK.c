#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct amdgpu_ih_ring {int /*<<< orphan*/  rptr; int /*<<< orphan*/  doorbell_index; int /*<<< orphan*/ * rptr_cpu; scalar_t__ use_doorbell; } ;
struct amdgpu_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mmIH_RB_RPTR ; 

__attribute__((used)) static void FUNC2(struct amdgpu_device *adev,
			      struct amdgpu_ih_ring *ih)
{
	if (ih->use_doorbell) {
		/* XXX check if swapping is necessary on BE */
		*ih->rptr_cpu = ih->rptr;
		FUNC0(ih->doorbell_index, ih->rptr);
	} else {
		FUNC1(mmIH_RB_RPTR, ih->rptr);
	}
}