#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct TYPE_4__ {int table_addr; int ready; int /*<<< orphan*/ * robj; } ;
struct TYPE_3__ {int gtt_start; int gtt_end; int vram_start; int vram_end; int gtt_size; } ;
struct radeon_device {TYPE_2__ gart; TYPE_1__ mc; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,unsigned int,unsigned long long) ; 
 int EINVAL ; 
 int /*<<< orphan*/  RADEON_BUS_CNTL ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (scalar_t__) ; 
 int RS600_BUS_MASTER_DIS ; 
 scalar_t__ R_000009_MC_CNTL1 ; 
 scalar_t__ R_000100_MC_PT0_CNTL ; 
 scalar_t__ R_000102_MC_PT0_CONTEXT0_CNTL ; 
 scalar_t__ R_000112_MC_PT0_SYSTEM_APERTURE_LOW_ADDR ; 
 scalar_t__ R_000114_MC_PT0_SYSTEM_APERTURE_HIGH_ADDR ; 
 scalar_t__ R_00011C_MC_PT0_CONTEXT0_DEFAULT_READ_ADDR ; 
 scalar_t__ R_00012C_MC_PT0_CONTEXT0_FLAT_BASE_ADDR ; 
 scalar_t__ R_00013C_MC_PT0_CONTEXT0_FLAT_START_ADDR ; 
 scalar_t__ R_00014C_MC_PT0_CONTEXT0_FLAT_END_ADDR ; 
 scalar_t__ R_00016C_MC_PT0_CLIENT0_CNTL ; 
 int FUNC3 (int) ; 
 int FUNC4 (int) ; 
 int FUNC5 (int) ; 
 int FUNC6 (int) ; 
 int FUNC7 (int) ; 
 int FUNC8 (int /*<<< orphan*/ ) ; 
 int FUNC9 (int) ; 
 int FUNC10 (int) ; 
 int FUNC11 (int) ; 
 int FUNC12 (int) ; 
 int FUNC13 (int /*<<< orphan*/ ) ; 
 int FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  V_000102_PAGE_TABLE_FLAT ; 
 int /*<<< orphan*/  V_00016C_SYSTEM_ACCESS_MODE_NOT_IN_SYS ; 
 int /*<<< orphan*/  V_00016C_SYSTEM_APERTURE_UNMAPPED_PASSTHROUGH ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC16 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,char*) ; 
 int FUNC18 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC19 (struct radeon_device*) ; 

__attribute__((used)) static int FUNC20(struct radeon_device *rdev)
{
	u32 tmp;
	int r, i;

	if (rdev->gart.robj == NULL) {
		FUNC17(rdev->dev, "No VRAM object for PCIE GART.\n");
		return -EINVAL;
	}
	r = FUNC18(rdev);
	if (r)
		return r;
	/* Enable bus master */
	tmp = FUNC1(RADEON_BUS_CNTL) & ~RS600_BUS_MASTER_DIS;
	FUNC15(RADEON_BUS_CNTL, tmp);
	/* FIXME: setup default page */
	FUNC16(R_000100_MC_PT0_CNTL,
		  (FUNC4(6) |
		   FUNC5(6)));

	for (i = 0; i < 19; i++) {
		FUNC16(R_00016C_MC_PT0_CLIENT0_CNTL + i,
			  FUNC12(1) |
			  FUNC13(
				  V_00016C_SYSTEM_ACCESS_MODE_NOT_IN_SYS) |
			  FUNC14(
				  V_00016C_SYSTEM_APERTURE_UNMAPPED_PASSTHROUGH) |
			  FUNC9(3) |
			  FUNC11(1) |
			  FUNC10(3));
	}
	/* enable first context */
	FUNC16(R_000102_MC_PT0_CONTEXT0_CNTL,
		  FUNC7(1) |
		  FUNC8(V_000102_PAGE_TABLE_FLAT));

	/* disable all other contexts */
	for (i = 1; i < 8; i++)
		FUNC16(R_000102_MC_PT0_CONTEXT0_CNTL + i, 0);

	/* setup the page table */
	FUNC16(R_00012C_MC_PT0_CONTEXT0_FLAT_BASE_ADDR,
		  rdev->gart.table_addr);
	FUNC16(R_00013C_MC_PT0_CONTEXT0_FLAT_START_ADDR, rdev->mc.gtt_start);
	FUNC16(R_00014C_MC_PT0_CONTEXT0_FLAT_END_ADDR, rdev->mc.gtt_end);
	FUNC16(R_00011C_MC_PT0_CONTEXT0_DEFAULT_READ_ADDR, 0);

	/* System context maps to VRAM space */
	FUNC16(R_000112_MC_PT0_SYSTEM_APERTURE_LOW_ADDR, rdev->mc.vram_start);
	FUNC16(R_000114_MC_PT0_SYSTEM_APERTURE_HIGH_ADDR, rdev->mc.vram_end);

	/* enable page tables */
	tmp = FUNC2(R_000100_MC_PT0_CNTL);
	FUNC16(R_000100_MC_PT0_CNTL, (tmp | FUNC6(1)));
	tmp = FUNC2(R_000009_MC_CNTL1);
	FUNC16(R_000009_MC_CNTL1, (tmp | FUNC3(1)));
	FUNC19(rdev);
	FUNC0("PCIE GART of %uM enabled (table at 0x%016llX).\n",
		 (unsigned)(rdev->mc.gtt_size >> 20),
		 (unsigned long long)rdev->gart.table_addr);
	rdev->gart.ready = true;
	return 0;
}