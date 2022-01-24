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
struct TYPE_2__ {int /*<<< orphan*/ * vcpu_bo; } ;
struct radeon_device {int /*<<< orphan*/  vce_fw; TYPE_1__ vce; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

void FUNC2(struct radeon_device *rdev)
{
	if (rdev->vce.vcpu_bo == NULL)
		return;

	FUNC0(&rdev->vce.vcpu_bo);

	FUNC1(rdev->vce_fw);
}