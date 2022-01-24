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
struct TYPE_2__ {int /*<<< orphan*/ * ptr; int /*<<< orphan*/ * bo; } ;
struct amdgpu_device {TYPE_1__ gart; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int) ; 

void FUNC5(struct amdgpu_device *adev)
{
	int r;

	if (adev->gart.bo == NULL) {
		return;
	}
	r = FUNC1(adev->gart.bo, true);
	if (FUNC4(r == 0)) {
		FUNC0(adev->gart.bo);
		FUNC2(adev->gart.bo);
		FUNC3(adev->gart.bo);
		adev->gart.ptr = NULL;
	}
}