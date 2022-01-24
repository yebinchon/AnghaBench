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
struct radeon_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  RADEON_MC_STATUS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct radeon_device*) ; 
 scalar_t__ FUNC3 (struct radeon_device*) ; 

__attribute__((used)) static void FUNC4(struct radeon_device *rdev)
{
	/* FIXME: is this correct ? */
	FUNC2(rdev);
	if (FUNC3(rdev)) {
		FUNC1("rs400: Failed to wait MC idle while programming pipes. Bad things might happen. %08x\n",
			FUNC0(RADEON_MC_STATUS));
	}
}