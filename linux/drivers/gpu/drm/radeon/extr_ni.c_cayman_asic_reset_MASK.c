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
typedef  scalar_t__ u32 ;
struct radeon_device {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct radeon_device*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct radeon_device*,int) ; 

int FUNC4(struct radeon_device *rdev, bool hard)
{
	u32 reset_mask;

	if (hard) {
		FUNC2(rdev);
		return 0;
	}

	reset_mask = FUNC0(rdev);

	if (reset_mask)
		FUNC3(rdev, true);

	FUNC1(rdev, reset_mask);

	reset_mask = FUNC0(rdev);

	if (reset_mask)
		FUNC2(rdev);

	FUNC3(rdev, false);

	return 0;
}