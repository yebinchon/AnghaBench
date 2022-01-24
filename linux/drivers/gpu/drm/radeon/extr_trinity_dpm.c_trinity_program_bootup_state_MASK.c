#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int u32 ;
struct trinity_power_info {int /*<<< orphan*/  boot_pl; } ;
struct radeon_device {int dummy; } ;

/* Variables and functions */
 struct trinity_power_info* FUNC0 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct radeon_device*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct radeon_device*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct radeon_device *rdev)
{
	struct trinity_power_info *pi = FUNC0(rdev);
	u32 i;

	FUNC2(rdev, &pi->boot_pl, 0);
	FUNC1(rdev, 0, true);

	for (i = 1; i < 8; i++)
		FUNC1(rdev, i, false);
}