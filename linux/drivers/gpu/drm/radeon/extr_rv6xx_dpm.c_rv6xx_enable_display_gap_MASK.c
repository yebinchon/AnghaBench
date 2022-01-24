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
struct radeon_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CG_DISPLAY_GAP_CNTL ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MCLK_PWRMGT_CNTL ; 
 int /*<<< orphan*/  R600_PM_DISPLAY_GAP_IGNORE ; 
 int /*<<< orphan*/  R600_PM_DISPLAY_GAP_VBLANK_OR_WM ; 
 int /*<<< orphan*/  USE_DISPLAY_GAP ; 
 int FUNC4 (int) ; 
 int FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC8(struct radeon_device *rdev, bool enable)
{
	if (enable) {
		u32 tmp = (FUNC0(R600_PM_DISPLAY_GAP_VBLANK_OR_WM) |
			   FUNC2(R600_PM_DISPLAY_GAP_VBLANK_OR_WM) |
			   FUNC1(R600_PM_DISPLAY_GAP_IGNORE) |
			   FUNC3(R600_PM_DISPLAY_GAP_IGNORE) |
			   FUNC4(0x3FFF) |
			   FUNC5(7));
		FUNC6(CG_DISPLAY_GAP_CNTL, tmp);

		FUNC7(MCLK_PWRMGT_CNTL, USE_DISPLAY_GAP, ~USE_DISPLAY_GAP);
	} else
		FUNC7(MCLK_PWRMGT_CNTL, 0, ~USE_DISPLAY_GAP);
}