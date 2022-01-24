#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {scalar_t__ gtt_base_align; } ;
struct radeon_device {int flags; TYPE_1__ mc; } ;

/* Variables and functions */
 int RADEON_IS_AGP ; 
 int /*<<< orphan*/  FUNC0 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct radeon_device*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct radeon_device*,TYPE_1__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct radeon_device *rdev)
{

	FUNC1(rdev);
	FUNC0(rdev);
	FUNC4(rdev, &rdev->mc, 0);
	rdev->mc.gtt_base_align = 0;
	if (!(rdev->flags & RADEON_IS_AGP))
		FUNC2(rdev, &rdev->mc);
	FUNC3(rdev);
}