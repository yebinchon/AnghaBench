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
struct amdgpu_device {int pg_flags; } ;

/* Variables and functions */
 int AMD_PG_SUPPORT_GFX_PG ; 
 int /*<<< orphan*/  AUTO_PG_EN ; 
 int /*<<< orphan*/  GFX_POWER_GATING_ENABLE ; 
 int /*<<< orphan*/  RLC_AUTO_PG_CTRL ; 
 int FUNC0 (int) ; 
 int FUNC1 (int) ; 
 int /*<<< orphan*/  RLC_PG_CNTL ; 
 int FUNC2 (int) ; 
 int FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  mmDB_RENDER_CONTROL ; 
 int /*<<< orphan*/  mmRLC_TTOP_D ; 

__attribute__((used)) static void FUNC7(struct amdgpu_device *adev,
				     bool enable)
{
	if (enable && (adev->pg_flags & AMD_PG_SUPPORT_GFX_PG)) {
		FUNC5(mmRLC_TTOP_D, FUNC2(0x10) | FUNC1(0x10) | FUNC3(0x10) | FUNC0(0x10));
		FUNC6(RLC_PG_CNTL, GFX_POWER_GATING_ENABLE, 1);
		FUNC6(RLC_AUTO_PG_CTRL, AUTO_PG_EN, 1);
	} else {
		FUNC6(RLC_AUTO_PG_CTRL, AUTO_PG_EN, 0);
		(void)FUNC4(mmDB_RENDER_CONTROL);
	}
}