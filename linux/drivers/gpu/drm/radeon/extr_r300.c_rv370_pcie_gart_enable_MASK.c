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
typedef  int uint32_t ;
struct TYPE_4__ {int table_addr; int ready; int /*<<< orphan*/ * robj; } ;
struct TYPE_3__ {int gtt_start; int gtt_end; int vram_start; int gtt_size; } ;
struct radeon_device {TYPE_2__ gart; TYPE_1__ mc; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,unsigned int,unsigned long long) ; 
 int EINVAL ; 
 int RADEON_GPU_PAGE_MASK ; 
 int /*<<< orphan*/  RADEON_PCIE_TX_DISCARD_RD_ADDR_HI ; 
 int /*<<< orphan*/  RADEON_PCIE_TX_DISCARD_RD_ADDR_LO ; 
 int /*<<< orphan*/  RADEON_PCIE_TX_GART_BASE ; 
 int /*<<< orphan*/  RADEON_PCIE_TX_GART_CNTL ; 
 int RADEON_PCIE_TX_GART_EN ; 
 int /*<<< orphan*/  RADEON_PCIE_TX_GART_END_HI ; 
 int /*<<< orphan*/  RADEON_PCIE_TX_GART_END_LO ; 
 int /*<<< orphan*/  RADEON_PCIE_TX_GART_ERROR ; 
 int /*<<< orphan*/  RADEON_PCIE_TX_GART_START_HI ; 
 int /*<<< orphan*/  RADEON_PCIE_TX_GART_START_LO ; 
 int RADEON_PCIE_TX_GART_UNMAPPED_ACCESS_DISCARD ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int FUNC4 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct radeon_device*) ; 

int FUNC6(struct radeon_device *rdev)
{
	uint32_t table_addr;
	uint32_t tmp;
	int r;

	if (rdev->gart.robj == NULL) {
		FUNC3(rdev->dev, "No VRAM object for PCIE GART.\n");
		return -EINVAL;
	}
	r = FUNC4(rdev);
	if (r)
		return r;
	/* discard memory request outside of configured range */
	tmp = RADEON_PCIE_TX_GART_UNMAPPED_ACCESS_DISCARD;
	FUNC2(RADEON_PCIE_TX_GART_CNTL, tmp);
	FUNC2(RADEON_PCIE_TX_GART_START_LO, rdev->mc.gtt_start);
	tmp = rdev->mc.gtt_end & ~RADEON_GPU_PAGE_MASK;
	FUNC2(RADEON_PCIE_TX_GART_END_LO, tmp);
	FUNC2(RADEON_PCIE_TX_GART_START_HI, 0);
	FUNC2(RADEON_PCIE_TX_GART_END_HI, 0);
	table_addr = rdev->gart.table_addr;
	FUNC2(RADEON_PCIE_TX_GART_BASE, table_addr);
	/* FIXME: setup default page */
	FUNC2(RADEON_PCIE_TX_DISCARD_RD_ADDR_LO, rdev->mc.vram_start);
	FUNC2(RADEON_PCIE_TX_DISCARD_RD_ADDR_HI, 0);
	/* Clear error */
	FUNC2(RADEON_PCIE_TX_GART_ERROR, 0);
	tmp = FUNC1(RADEON_PCIE_TX_GART_CNTL);
	tmp |= RADEON_PCIE_TX_GART_EN;
	tmp |= RADEON_PCIE_TX_GART_UNMAPPED_ACCESS_DISCARD;
	FUNC2(RADEON_PCIE_TX_GART_CNTL, tmp);
	FUNC5(rdev);
	FUNC0("PCIE GART of %uM enabled (table at 0x%016llX).\n",
		 (unsigned)(rdev->mc.gtt_size >> 20),
		 (unsigned long long)table_addr);
	rdev->gart.ready = true;
	return 0;
}