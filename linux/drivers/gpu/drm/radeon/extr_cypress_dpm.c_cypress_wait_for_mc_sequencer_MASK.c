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
typedef  int u8 ;
typedef  scalar_t__ u32 ;
struct radeon_device {scalar_t__ family; scalar_t__ usec_timeout; } ;

/* Variables and functions */
 int CG_SEQ_RESP_MASK ; 
 int CG_SEQ_RESP_SHIFT ; 
 scalar_t__ CHIP_CEDAR ; 
 scalar_t__ CHIP_CYPRESS ; 
 scalar_t__ CHIP_HEMLOCK ; 
 int /*<<< orphan*/  MC_CG_CONFIG ; 
 int /*<<< orphan*/  MC_CG_CONFIG_MCD ; 
 int /*<<< orphan*/  MC_CONFIG ; 
 int /*<<< orphan*/  MC_CONFIG_MCD ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  MC_RD_ENABLE_MASK ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  MC_RD_ENABLE_MCD_MASK ; 
 int /*<<< orphan*/  MC_SEQ_CG ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 

__attribute__((used)) static void FUNC5(struct radeon_device *rdev, u8 value)
{
	u32 i, j;
	u32 channels = 2;

	if ((rdev->family == CHIP_CYPRESS) ||
	    (rdev->family == CHIP_HEMLOCK))
		channels = 4;
	else if (rdev->family == CHIP_CEDAR)
		channels = 1;

	for (i = 0; i < channels; i++) {
		if ((rdev->family == CHIP_CYPRESS) ||
		    (rdev->family == CHIP_HEMLOCK)) {
			FUNC3(MC_CONFIG_MCD, FUNC1(i), ~MC_RD_ENABLE_MCD_MASK);
			FUNC3(MC_CG_CONFIG_MCD, FUNC1(i), ~MC_RD_ENABLE_MCD_MASK);
		} else {
			FUNC3(MC_CONFIG, FUNC0(i), ~MC_RD_ENABLE_MASK);
			FUNC3(MC_CG_CONFIG, FUNC0(i), ~MC_RD_ENABLE_MASK);
		}
		for (j = 0; j < rdev->usec_timeout; j++) {
			if (((FUNC2(MC_SEQ_CG) & CG_SEQ_RESP_MASK) >> CG_SEQ_RESP_SHIFT) == value)
				break;
			FUNC4(1);
		}
	}
}