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
struct radeon_device {int usec_timeout; } ;

/* Variables and functions */
 int /*<<< orphan*/  CG_SCLK_STATUS ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int SCLK_OVERCLK_DETECT ; 
 int /*<<< orphan*/  FUNC1 (struct radeon_device*,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 

__attribute__((used)) static void FUNC3(struct radeon_device *rdev)
{
	int i;

	FUNC1(rdev, true);
	for (i = 0; i < rdev->usec_timeout; i++) {
		if (FUNC0(CG_SCLK_STATUS) & SCLK_OVERCLK_DETECT)
			break;
		FUNC2(1);
	}
}