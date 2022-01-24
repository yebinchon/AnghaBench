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
struct amdgpu_ring {int /*<<< orphan*/  name; } ;
struct TYPE_2__ {int num_rings; int /*<<< orphan*/  irq; struct amdgpu_ring* ring; } ;
struct amdgpu_device {TYPE_1__ vce; } ;

/* Variables and functions */
 int /*<<< orphan*/  AMDGPU_IRQ_CLIENTID_LEGACY ; 
 scalar_t__ VCE_V2_0_DATA_SIZE ; 
 scalar_t__ VCE_V2_0_FW_SIZE ; 
 scalar_t__ VCE_V2_0_STACK_SIZE ; 
 int FUNC0 (struct amdgpu_device*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int FUNC1 (struct amdgpu_device*,struct amdgpu_ring*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct amdgpu_device*) ; 
 int FUNC3 (struct amdgpu_device*) ; 
 int FUNC4 (struct amdgpu_device*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int) ; 

__attribute__((used)) static int FUNC6(void *handle)
{
	struct amdgpu_ring *ring;
	int r, i;
	struct amdgpu_device *adev = (struct amdgpu_device *)handle;

	/* VCE */
	r = FUNC0(adev, AMDGPU_IRQ_CLIENTID_LEGACY, 167, &adev->vce.irq);
	if (r)
		return r;

	r = FUNC4(adev, VCE_V2_0_FW_SIZE +
		VCE_V2_0_STACK_SIZE + VCE_V2_0_DATA_SIZE);
	if (r)
		return r;

	r = FUNC3(adev);
	if (r)
		return r;

	for (i = 0; i < adev->vce.num_rings; i++) {
		ring = &adev->vce.ring[i];
		FUNC5(ring->name, "vce%d", i);
		r = FUNC1(adev, ring, 512,
				     &adev->vce.irq, 0);
		if (r)
			return r;
	}

	r = FUNC2(adev);

	return r;
}