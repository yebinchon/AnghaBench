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
typedef  int u64 ;
struct TYPE_3__ {int aper_base; scalar_t__ gtt_base_align; } ;
struct radeon_device {int flags; TYPE_1__ mc; } ;

/* Variables and functions */
 int RADEON_IS_AGP ; 
 int RADEON_IS_IGP ; 
 int /*<<< orphan*/  RADEON_NB_TOM ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct radeon_device*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct radeon_device*,TYPE_1__*,int) ; 

__attribute__((used)) static void FUNC6(struct radeon_device *rdev)
{
	u64 base;

	FUNC1(rdev);
	FUNC2(rdev);
	base = rdev->mc.aper_base;
	if (rdev->flags & RADEON_IS_IGP)
		base = (FUNC0(RADEON_NB_TOM) & 0xffff) << 16;
	FUNC5(rdev, &rdev->mc, base);
	rdev->mc.gtt_base_align = 0;
	if (!(rdev->flags & RADEON_IS_AGP))
		FUNC3(rdev, &rdev->mc);
	FUNC4(rdev);
}