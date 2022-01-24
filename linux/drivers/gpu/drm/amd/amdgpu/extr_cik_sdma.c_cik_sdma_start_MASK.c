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
struct amdgpu_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct amdgpu_device*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct amdgpu_device*,int) ; 
 int FUNC2 (struct amdgpu_device*) ; 
 int FUNC3 (struct amdgpu_device*) ; 
 int FUNC4 (struct amdgpu_device*) ; 

__attribute__((used)) static int FUNC5(struct amdgpu_device *adev)
{
	int r;

	r = FUNC3(adev);
	if (r)
		return r;

	/* halt the engine before programing */
	FUNC1(adev, false);
	/* enable sdma ring preemption */
	FUNC0(adev, true);

	/* start the gfx rings and rlc compute queues */
	r = FUNC2(adev);
	if (r)
		return r;
	r = FUNC4(adev);
	if (r)
		return r;

	return 0;
}