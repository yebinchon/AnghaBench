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
 int DISP1_GAP_MCHG_MASK ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int DISP2_GAP_MCHG_MASK ; 
 int /*<<< orphan*/  R600_PM_DISPLAY_GAP_IGNORE ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC4(struct radeon_device *rdev)
{
	u32 tmp = FUNC2(CG_DISPLAY_GAP_CNTL);

	tmp &= ~(DISP1_GAP_MCHG_MASK | DISP2_GAP_MCHG_MASK);
	tmp |= (FUNC0(R600_PM_DISPLAY_GAP_IGNORE) |
		FUNC1(R600_PM_DISPLAY_GAP_IGNORE));
	FUNC3(CG_DISPLAY_GAP_CNTL, tmp);
}