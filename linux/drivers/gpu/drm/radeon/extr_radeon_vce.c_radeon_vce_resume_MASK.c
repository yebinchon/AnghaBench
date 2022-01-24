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
struct TYPE_4__ {int /*<<< orphan*/ * vcpu_bo; } ;
struct radeon_device {scalar_t__ family; TYPE_2__ vce; TYPE_1__* vce_fw; int /*<<< orphan*/  dev; } ;
struct TYPE_3__ {int /*<<< orphan*/  size; int /*<<< orphan*/  data; } ;

/* Variables and functions */
 scalar_t__ CHIP_BONAIRE ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ *,void**) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int FUNC8 (struct radeon_device*,void*) ; 

int FUNC9(struct radeon_device *rdev)
{
	void *cpu_addr;
	int r;

	if (rdev->vce.vcpu_bo == NULL)
		return -EINVAL;

	r = FUNC5(rdev->vce.vcpu_bo, false);
	if (r) {
		FUNC0(rdev->dev, "(%d) failed to reserve VCE bo\n", r);
		return r;
	}

	r = FUNC3(rdev->vce.vcpu_bo, &cpu_addr);
	if (r) {
		FUNC7(rdev->vce.vcpu_bo);
		FUNC0(rdev->dev, "(%d) VCE map failed\n", r);
		return r;
	}

	FUNC2(cpu_addr, 0, FUNC6(rdev->vce.vcpu_bo));
	if (rdev->family < CHIP_BONAIRE)
		r = FUNC8(rdev, cpu_addr);
	else
		FUNC1(cpu_addr, rdev->vce_fw->data, rdev->vce_fw->size);

	FUNC4(rdev->vce.vcpu_bo);

	FUNC7(rdev->vce.vcpu_bo);

	return r;
}