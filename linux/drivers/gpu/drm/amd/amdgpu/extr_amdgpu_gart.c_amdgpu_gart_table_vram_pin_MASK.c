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
struct TYPE_2__ {int /*<<< orphan*/  bo; int /*<<< orphan*/  ptr; } ;
struct amdgpu_device {TYPE_1__ gart; } ;

/* Variables and functions */
 int /*<<< orphan*/  AMDGPU_GEM_DOMAIN_VRAM ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int) ; 

int FUNC6(struct amdgpu_device *adev)
{
	int r;

	r = FUNC2(adev->gart.bo, false);
	if (FUNC5(r != 0))
		return r;
	r = FUNC1(adev->gart.bo, AMDGPU_GEM_DOMAIN_VRAM);
	if (r) {
		FUNC4(adev->gart.bo);
		return r;
	}
	r = FUNC0(adev->gart.bo, &adev->gart.ptr);
	if (r)
		FUNC3(adev->gart.bo);
	FUNC4(adev->gart.bo);
	return r;
}