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
typedef  int /*<<< orphan*/  u32 ;
struct mem_ctl_info {struct i7300_pvt* pvt_info; } ;
struct i7300_pvt {int /*<<< orphan*/  pci_dev_16_1_fsb_addr_map; int /*<<< orphan*/  pci_dev_16_2_fsb_err_regs; } ;

/* Variables and functions */
 int /*<<< orphan*/  FERR_FAT_FBD ; 
 int /*<<< orphan*/  FERR_GLOBAL_HI ; 
 int /*<<< orphan*/  FERR_GLOBAL_LO ; 
 int /*<<< orphan*/  FERR_NF_FBD ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct mem_ctl_info *mci)
{
	struct i7300_pvt *pvt = mci->pvt_info;
	u32 value;
	/*
	 * All error values are RWC - we need to read and write 1 to the
	 * bit that we want to cleanup
	 */

	/* Clear global error registers */
	FUNC0(pvt->pci_dev_16_2_fsb_err_regs,
			      FERR_GLOBAL_HI, &value);
	FUNC1(pvt->pci_dev_16_2_fsb_err_regs,
			      FERR_GLOBAL_HI, value);

	FUNC0(pvt->pci_dev_16_2_fsb_err_regs,
			      FERR_GLOBAL_LO, &value);
	FUNC1(pvt->pci_dev_16_2_fsb_err_regs,
			      FERR_GLOBAL_LO, value);

	/* Clear FBD error registers */
	FUNC0(pvt->pci_dev_16_1_fsb_addr_map,
			      FERR_FAT_FBD, &value);
	FUNC1(pvt->pci_dev_16_1_fsb_addr_map,
			      FERR_FAT_FBD, value);

	FUNC0(pvt->pci_dev_16_1_fsb_addr_map,
			      FERR_NF_FBD, &value);
	FUNC1(pvt->pci_dev_16_1_fsb_addr_map,
			      FERR_NF_FBD, value);
}