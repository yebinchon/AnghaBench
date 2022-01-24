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
struct radeon_device {int pg_flags; } ;

/* Variables and functions */
 int AUTO_PG_EN ; 
 int /*<<< orphan*/  DB_RENDER_CONTROL ; 
 int GFX_PG_ENABLE ; 
 int RADEON_PG_SUPPORT_GFX_PG ; 
 int /*<<< orphan*/  RLC_AUTO_PG_CTRL ; 
 int FUNC0 (int) ; 
 int FUNC1 (int) ; 
 int /*<<< orphan*/  RLC_PG_CNTL ; 
 int FUNC2 (int) ; 
 int /*<<< orphan*/  RLC_TTOP_D ; 
 int FUNC3 (int) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC6(struct radeon_device *rdev,
			       bool enable)
{
	u32 tmp;

	if (enable && (rdev->pg_flags & RADEON_PG_SUPPORT_GFX_PG)) {
		tmp = FUNC2(0x10) | FUNC1(0x10) | FUNC3(0x10) | FUNC0(0x10);
		FUNC5(RLC_TTOP_D, tmp);

		tmp = FUNC4(RLC_PG_CNTL);
		tmp |= GFX_PG_ENABLE;
		FUNC5(RLC_PG_CNTL, tmp);

		tmp = FUNC4(RLC_AUTO_PG_CTRL);
		tmp |= AUTO_PG_EN;
		FUNC5(RLC_AUTO_PG_CTRL, tmp);
	} else {
		tmp = FUNC4(RLC_AUTO_PG_CTRL);
		tmp &= ~AUTO_PG_EN;
		FUNC5(RLC_AUTO_PG_CTRL, tmp);

		tmp = FUNC4(DB_RENDER_CONTROL);
	}
}