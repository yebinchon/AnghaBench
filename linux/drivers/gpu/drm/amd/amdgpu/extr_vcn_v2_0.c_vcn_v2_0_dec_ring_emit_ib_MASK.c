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
typedef  int /*<<< orphan*/  uint32_t ;
struct amdgpu_ring {struct amdgpu_device* adev; } ;
struct amdgpu_job {int dummy; } ;
struct amdgpu_ib {unsigned int length_dw; int /*<<< orphan*/  gpu_addr; } ;
struct TYPE_3__ {int /*<<< orphan*/  ib_size; int /*<<< orphan*/  ib_bar_high; int /*<<< orphan*/  ib_bar_low; int /*<<< orphan*/  ib_vmid; } ;
struct TYPE_4__ {TYPE_1__ internal; } ;
struct amdgpu_device {TYPE_2__ vcn; } ;

/* Variables and functions */
 unsigned int FUNC0 (struct amdgpu_job*) ; 
 unsigned int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct amdgpu_ring*,unsigned int) ; 
 unsigned int FUNC3 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC4 (int /*<<< orphan*/ ) ; 

void FUNC5(struct amdgpu_ring *ring,
			       struct amdgpu_job *job,
			       struct amdgpu_ib *ib,
			       uint32_t flags)
{
	struct amdgpu_device *adev = ring->adev;
	unsigned vmid = FUNC0(job);

	FUNC2(ring, FUNC1(adev->vcn.internal.ib_vmid, 0));
	FUNC2(ring, vmid);

	FUNC2(ring,	FUNC1(adev->vcn.internal.ib_bar_low, 0));
	FUNC2(ring, FUNC3(ib->gpu_addr));
	FUNC2(ring,	FUNC1(adev->vcn.internal.ib_bar_high, 0));
	FUNC2(ring, FUNC4(ib->gpu_addr));
	FUNC2(ring,	FUNC1(adev->vcn.internal.ib_size, 0));
	FUNC2(ring, ib->length_dw);
}