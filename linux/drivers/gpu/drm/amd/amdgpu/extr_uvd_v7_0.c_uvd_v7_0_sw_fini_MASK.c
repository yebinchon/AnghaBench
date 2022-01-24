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
struct TYPE_4__ {int num_uvd_inst; int harvest_config; int num_enc_rings; TYPE_1__* inst; } ;
struct amdgpu_device {TYPE_2__ uvd; } ;
struct TYPE_3__ {int /*<<< orphan*/ * ring_enc; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (struct amdgpu_device*) ; 
 int FUNC2 (struct amdgpu_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct amdgpu_device*) ; 

__attribute__((used)) static int FUNC4(void *handle)
{
	int i, j, r;
	struct amdgpu_device *adev = (struct amdgpu_device *)handle;

	FUNC3(adev);

	r = FUNC1(adev);
	if (r)
		return r;

	for (j = 0; j < adev->uvd.num_uvd_inst; ++j) {
		if (adev->uvd.harvest_config & (1 << j))
			continue;
		for (i = 0; i < adev->uvd.num_enc_rings; ++i)
			FUNC0(&adev->uvd.inst[j].ring_enc[i]);
	}
	return FUNC2(adev);
}