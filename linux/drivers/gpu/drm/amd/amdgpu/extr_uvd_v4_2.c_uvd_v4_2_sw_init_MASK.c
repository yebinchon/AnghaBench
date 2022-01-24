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
struct amdgpu_ring {int /*<<< orphan*/  name; } ;
struct TYPE_4__ {TYPE_1__* inst; } ;
struct amdgpu_device {TYPE_2__ uvd; } ;
struct TYPE_3__ {int /*<<< orphan*/  irq; struct amdgpu_ring ring; } ;

/* Variables and functions */
 int /*<<< orphan*/  AMDGPU_IRQ_CLIENTID_LEGACY ; 
 int FUNC0 (struct amdgpu_device*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int FUNC1 (struct amdgpu_device*,struct amdgpu_ring*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct amdgpu_device*) ; 
 int FUNC3 (struct amdgpu_device*) ; 
 int FUNC4 (struct amdgpu_device*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int FUNC6(void *handle)
{
	struct amdgpu_ring *ring;
	struct amdgpu_device *adev = (struct amdgpu_device *)handle;
	int r;

	/* UVD TRAP */
	r = FUNC0(adev, AMDGPU_IRQ_CLIENTID_LEGACY, 124, &adev->uvd.inst->irq);
	if (r)
		return r;

	r = FUNC4(adev);
	if (r)
		return r;

	ring = &adev->uvd.inst->ring;
	FUNC5(ring->name, "uvd");
	r = FUNC1(adev, ring, 512, &adev->uvd.inst->irq, 0);
	if (r)
		return r;

	r = FUNC3(adev);
	if (r)
		return r;

	r = FUNC2(adev);

	return r;
}