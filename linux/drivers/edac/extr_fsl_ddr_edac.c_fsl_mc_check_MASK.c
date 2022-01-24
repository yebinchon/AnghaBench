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
typedef  int u32 ;
struct mem_ctl_info {int nr_csrows; int /*<<< orphan*/  ctl_name; struct csrow_info** csrows; struct fsl_mc_pdata* pvt_info; } ;
struct fsl_mc_pdata {scalar_t__ mc_vbase; } ;
struct csrow_info {int first_page; int last_page; } ;

/* Variables and functions */
 int DDR_EDE_MBE ; 
 int DDR_EDE_SBE ; 
 int DSC_DBW_MASK ; 
 scalar_t__ FSL_MC_CAPTURE_ADDRESS ; 
 scalar_t__ FSL_MC_CAPTURE_DATA_HI ; 
 scalar_t__ FSL_MC_CAPTURE_DATA_LO ; 
 scalar_t__ FSL_MC_CAPTURE_ECC ; 
 scalar_t__ FSL_MC_CAPTURE_EXT_ADDRESS ; 
 scalar_t__ FSL_MC_DDR_SDRAM_CFG ; 
 scalar_t__ FSL_MC_ERR_DETECT ; 
 int /*<<< orphan*/  HW_EVENT_ERR_CORRECTED ; 
 int /*<<< orphan*/  HW_EVENT_ERR_UNCORRECTED ; 
 int /*<<< orphan*/  KERN_ERR ; 
 int PAGE_MASK ; 
 int PAGE_SHIFT ; 
 int FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct mem_ctl_info*,int,int,int,int,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct mem_ctl_info*,int /*<<< orphan*/ ,char*,...) ; 
 int FUNC4 (int,int) ; 
 int /*<<< orphan*/  FUNC5 (int,int,int,int*,int*) ; 

__attribute__((used)) static void FUNC6(struct mem_ctl_info *mci)
{
	struct fsl_mc_pdata *pdata = mci->pvt_info;
	struct csrow_info *csrow;
	u32 bus_width;
	u32 err_detect;
	u32 syndrome;
	u64 err_addr;
	u32 pfn;
	int row_index;
	u32 cap_high;
	u32 cap_low;
	int bad_data_bit;
	int bad_ecc_bit;

	err_detect = FUNC0(pdata->mc_vbase + FSL_MC_ERR_DETECT);
	if (!err_detect)
		return;

	FUNC3(mci, KERN_ERR, "Err Detect Register: %#8.8x\n",
		      err_detect);

	/* no more processing if not ECC bit errors */
	if (!(err_detect & (DDR_EDE_SBE | DDR_EDE_MBE))) {
		FUNC1(pdata->mc_vbase + FSL_MC_ERR_DETECT, err_detect);
		return;
	}

	syndrome = FUNC0(pdata->mc_vbase + FSL_MC_CAPTURE_ECC);

	/* Mask off appropriate bits of syndrome based on bus width */
	bus_width = (FUNC0(pdata->mc_vbase + FSL_MC_DDR_SDRAM_CFG) &
		     DSC_DBW_MASK) ? 32 : 64;
	if (bus_width == 64)
		syndrome &= 0xff;
	else
		syndrome &= 0xffff;

	err_addr = FUNC4(
		FUNC0(pdata->mc_vbase + FSL_MC_CAPTURE_EXT_ADDRESS),
		FUNC0(pdata->mc_vbase + FSL_MC_CAPTURE_ADDRESS));
	pfn = err_addr >> PAGE_SHIFT;

	for (row_index = 0; row_index < mci->nr_csrows; row_index++) {
		csrow = mci->csrows[row_index];
		if ((pfn >= csrow->first_page) && (pfn <= csrow->last_page))
			break;
	}

	cap_high = FUNC0(pdata->mc_vbase + FSL_MC_CAPTURE_DATA_HI);
	cap_low = FUNC0(pdata->mc_vbase + FSL_MC_CAPTURE_DATA_LO);

	/*
	 * Analyze single-bit errors on 64-bit wide buses
	 * TODO: Add support for 32-bit wide buses
	 */
	if ((err_detect & DDR_EDE_SBE) && (bus_width == 64)) {
		FUNC5(cap_high, cap_low, syndrome,
				&bad_data_bit, &bad_ecc_bit);

		if (bad_data_bit != -1)
			FUNC3(mci, KERN_ERR,
				"Faulty Data bit: %d\n", bad_data_bit);
		if (bad_ecc_bit != -1)
			FUNC3(mci, KERN_ERR,
				"Faulty ECC bit: %d\n", bad_ecc_bit);

		FUNC3(mci, KERN_ERR,
			"Expected Data / ECC:\t%#8.8x_%08x / %#2.2x\n",
			cap_high ^ (1 << (bad_data_bit - 32)),
			cap_low ^ (1 << bad_data_bit),
			syndrome ^ (1 << bad_ecc_bit));
	}

	FUNC3(mci, KERN_ERR,
			"Captured Data / ECC:\t%#8.8x_%08x / %#2.2x\n",
			cap_high, cap_low, syndrome);
	FUNC3(mci, KERN_ERR, "Err addr: %#8.8llx\n", err_addr);
	FUNC3(mci, KERN_ERR, "PFN: %#8.8x\n", pfn);

	/* we are out of range */
	if (row_index == mci->nr_csrows)
		FUNC3(mci, KERN_ERR, "PFN out of range!\n");

	if (err_detect & DDR_EDE_SBE)
		FUNC2(HW_EVENT_ERR_CORRECTED, mci, 1,
				     pfn, err_addr & ~PAGE_MASK, syndrome,
				     row_index, 0, -1,
				     mci->ctl_name, "");

	if (err_detect & DDR_EDE_MBE)
		FUNC2(HW_EVENT_ERR_UNCORRECTED, mci, 1,
				     pfn, err_addr & ~PAGE_MASK, syndrome,
				     row_index, 0, -1,
				     mci->ctl_name, "");

	FUNC1(pdata->mc_vbase + FSL_MC_ERR_DETECT, err_detect);
}