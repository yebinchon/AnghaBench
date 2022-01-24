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
typedef  unsigned long u32 ;
struct TYPE_2__ {unsigned long num_doorbells; int /*<<< orphan*/  used; } ;
struct radeon_device {TYPE_1__ doorbell; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (unsigned long,int /*<<< orphan*/ ) ; 
 unsigned long FUNC1 (int /*<<< orphan*/ ,unsigned long) ; 

int FUNC2(struct radeon_device *rdev, u32 *doorbell)
{
	unsigned long offset = FUNC1(rdev->doorbell.used, rdev->doorbell.num_doorbells);
	if (offset < rdev->doorbell.num_doorbells) {
		FUNC0(offset, rdev->doorbell.used);
		*doorbell = offset;
		return 0;
	} else {
		return -EINVAL;
	}
}