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
struct radeon_fence {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  MAX_SCHEDULE_TIMEOUT ; 
 long FUNC0 (struct radeon_fence*,int,int /*<<< orphan*/ ) ; 

int FUNC1(struct radeon_fence *fence, bool intr)
{
	long r = FUNC0(fence, intr, MAX_SCHEDULE_TIMEOUT);
	if (r > 0) {
		return 0;
	} else {
		return r;
	}
}