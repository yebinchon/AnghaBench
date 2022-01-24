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
struct TYPE_2__ {int num_rings; int /*<<< orphan*/ * ring; } ;
struct amdgpu_device {TYPE_1__ vce; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (struct amdgpu_device*,int,int) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct amdgpu_device*,int,int) ; 

__attribute__((used)) static int FUNC4(void *handle)
{
	int r, i;
	struct amdgpu_device *adev = (struct amdgpu_device *)handle;

	FUNC1(adev, 10000, 10000);
	FUNC3(adev, true, false);

	for (i = 0; i < adev->vce.num_rings; i++) {
		r = FUNC2(&adev->vce.ring[i]);
		if (r)
			return r;
	}

	FUNC0("VCE initialized successfully.\n");

	return 0;
}