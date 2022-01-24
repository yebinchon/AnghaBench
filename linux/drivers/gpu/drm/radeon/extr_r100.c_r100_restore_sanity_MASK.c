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
 int /*<<< orphan*/  RADEON_CP_CSQ_CNTL ; 
 int /*<<< orphan*/  RADEON_CP_RB_CNTL ; 
 int /*<<< orphan*/  RADEON_SCRATCH_UMSK ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC2(struct radeon_device *rdev)
{
	u32 tmp;

	tmp = FUNC0(RADEON_CP_CSQ_CNTL);
	if (tmp) {
		FUNC1(RADEON_CP_CSQ_CNTL, 0);
	}
	tmp = FUNC0(RADEON_CP_RB_CNTL);
	if (tmp) {
		FUNC1(RADEON_CP_RB_CNTL, 0);
	}
	tmp = FUNC0(RADEON_SCRATCH_UMSK);
	if (tmp) {
		FUNC1(RADEON_SCRATCH_UMSK, 0);
	}
}