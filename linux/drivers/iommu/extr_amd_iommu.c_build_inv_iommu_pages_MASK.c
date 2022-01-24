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
typedef  int u64 ;
typedef  int /*<<< orphan*/  u16 ;
struct iommu_cmd {int /*<<< orphan*/ * data; } ;

/* Variables and functions */
 int CMD_INV_IOMMU_ALL_PAGES_ADDRESS ; 
 int /*<<< orphan*/  CMD_INV_IOMMU_PAGES ; 
 int /*<<< orphan*/  CMD_INV_IOMMU_PAGES_PDE_MASK ; 
 int /*<<< orphan*/  CMD_INV_IOMMU_PAGES_SIZE_MASK ; 
 int /*<<< orphan*/  FUNC0 (struct iommu_cmd*,int /*<<< orphan*/ ) ; 
 int PAGE_MASK ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 int FUNC1 (int,size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct iommu_cmd*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 

__attribute__((used)) static void FUNC5(struct iommu_cmd *cmd, u64 address,
				  size_t size, u16 domid, int pde)
{
	u64 pages;
	bool s;

	pages = FUNC1(address, size, PAGE_SIZE);
	s     = false;

	if (pages > 1) {
		/*
		 * If we have to flush more than one page, flush all
		 * TLB entries for this domain
		 */
		address = CMD_INV_IOMMU_ALL_PAGES_ADDRESS;
		s = true;
	}

	address &= PAGE_MASK;

	FUNC3(cmd, 0, sizeof(*cmd));
	cmd->data[1] |= domid;
	cmd->data[2]  = FUNC2(address);
	cmd->data[3]  = FUNC4(address);
	FUNC0(cmd, CMD_INV_IOMMU_PAGES);
	if (s) /* size bit - we flush more than one 4kb page */
		cmd->data[2] |= CMD_INV_IOMMU_PAGES_SIZE_MASK;
	if (pde) /* PDE bit - we want to flush everything, not only the PTEs */
		cmd->data[2] |= CMD_INV_IOMMU_PAGES_PDE_MASK;
}