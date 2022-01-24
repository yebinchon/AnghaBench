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
 int /*<<< orphan*/  R300_DST_PIPE_CONFIG ; 
 int /*<<< orphan*/  R400_GB_PIPE_SELECT ; 
 unsigned int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 scalar_t__ FUNC3 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct radeon_device*) ; 
 scalar_t__ FUNC5 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct radeon_device*) ; 

__attribute__((used)) static void FUNC7(struct radeon_device *rdev)
{
	unsigned pipe_select_current, gb_pipe_select, tmp;

	if (FUNC3(rdev)) {
		FUNC2("Failed to wait GUI idle while resetting GPU. Bad things might happen.\n");
	}
	FUNC6(rdev);
	FUNC4(rdev);
	gb_pipe_select = FUNC0(R400_GB_PIPE_SELECT);
	tmp = FUNC0(R300_DST_PIPE_CONFIG);
	pipe_select_current = (tmp >> 2) & 3;
	tmp = (1 << pipe_select_current) |
	      (((gb_pipe_select >> 8) & 0xF) << 4);
	FUNC1(0x000D, tmp);
	if (FUNC3(rdev)) {
		FUNC2("Failed to wait GUI idle while resetting GPU. Bad things might happen.\n");
	}
	if (FUNC5(rdev)) {
		FUNC2("Failed to wait MC idle while programming pipes. Bad things might happen.\n");
	}
}