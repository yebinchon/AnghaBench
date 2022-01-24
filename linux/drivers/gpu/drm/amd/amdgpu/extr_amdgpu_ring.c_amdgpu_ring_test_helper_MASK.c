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
struct TYPE_2__ {int ready; } ;
struct amdgpu_ring {TYPE_1__ sched; int /*<<< orphan*/  name; struct amdgpu_device* adev; } ;
struct amdgpu_device {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (struct amdgpu_ring*) ; 

int FUNC3(struct amdgpu_ring *ring)
{
	struct amdgpu_device *adev = ring->adev;
	int r;

	r = FUNC2(ring);
	if (r)
		FUNC1(adev->dev, "ring %s test failed (%d)\n",
			      ring->name, r);
	else
		FUNC0(adev->dev, "ring test on %s succeeded\n",
			      ring->name);

	ring->sched.ready = !r;
	return r;
}