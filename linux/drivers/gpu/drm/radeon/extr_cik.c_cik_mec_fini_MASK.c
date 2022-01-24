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
struct TYPE_2__ {int /*<<< orphan*/ * hpd_eop_obj; } ;
struct radeon_device {TYPE_1__ mec; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int) ; 

__attribute__((used)) static void FUNC6(struct radeon_device *rdev)
{
	int r;

	if (rdev->mec.hpd_eop_obj) {
		r = FUNC1(rdev->mec.hpd_eop_obj, false);
		if (FUNC5(r != 0))
			FUNC0(rdev->dev, "(%d) reserve HPD EOP bo failed\n", r);
		FUNC2(rdev->mec.hpd_eop_obj);
		FUNC4(rdev->mec.hpd_eop_obj);

		FUNC3(&rdev->mec.hpd_eop_obj);
		rdev->mec.hpd_eop_obj = NULL;
	}
}