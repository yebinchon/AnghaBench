#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {TYPE_1__* funcs; } ;
struct TYPE_6__ {TYPE_2__ rlc; } ;
struct amdgpu_device {scalar_t__ asic_type; TYPE_3__ gfx; } ;
struct TYPE_4__ {int (* resume ) (struct amdgpu_device*) ;} ;

/* Variables and functions */
 scalar_t__ CHIP_ARCTURUS ; 
 int /*<<< orphan*/  FUNC0 (struct amdgpu_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct amdgpu_device*) ; 
 int FUNC2 (struct amdgpu_device*) ; 
 int FUNC3 (struct amdgpu_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct amdgpu_device*) ; 
 int FUNC5 (struct amdgpu_device*) ; 
 int FUNC6 (struct amdgpu_device*) ; 

__attribute__((used)) static int FUNC7(void *handle)
{
	int r;
	struct amdgpu_device *adev = (struct amdgpu_device *)handle;

	if (!FUNC0(adev))
		FUNC4(adev);

	FUNC1(adev);

	r = FUNC3(adev);
	if (r)
		return r;

	r = adev->gfx.rlc.funcs->resume(adev);
	if (r)
		return r;

	r = FUNC2(adev);
	if (r)
		return r;

	if (adev->asic_type != CHIP_ARCTURUS) {
		r = FUNC5(adev);
		if (r)
			return r;
	}

	return r;
}