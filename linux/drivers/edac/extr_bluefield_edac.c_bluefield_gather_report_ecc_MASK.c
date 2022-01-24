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
struct mem_ctl_info {int /*<<< orphan*/  ctl_name; struct bluefield_edac_priv* pvt_info; } ;
struct bluefield_edac_priv {int* dimm_ranks; scalar_t__ emi_base; } ;
typedef  enum hw_event_mc_err_type { ____Placeholder_hw_event_mc_err_type } hw_event_mc_err_type ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int) ; 
 int HW_EVENT_ERR_CORRECTED ; 
 int HW_EVENT_ERR_UNCORRECTED ; 
 scalar_t__ MLXBF_ADD_INFO ; 
 int /*<<< orphan*/  MLXBF_ADD_INFO__ERR_PRANK ; 
 scalar_t__ MLXBF_ECC_LATCH_SEL ; 
 int MLXBF_ECC_LATCH_SEL__START ; 
 scalar_t__ MLXBF_ERR_ADDR_0 ; 
 scalar_t__ MLXBF_ERR_ADDR_1 ; 
 scalar_t__ MLXBF_SYNDROM ; 
 int /*<<< orphan*/  MLXBF_SYNDROM__DERR ; 
 int /*<<< orphan*/  MLXBF_SYNDROM__SERR ; 
 int /*<<< orphan*/  MLXBF_SYNDROM__SYN ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int,struct mem_ctl_info*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int,scalar_t__) ; 

__attribute__((used)) static void FUNC6(struct mem_ctl_info *mci,
					int error_cnt,
					int is_single_ecc)
{
	struct bluefield_edac_priv *priv = mci->pvt_info;
	u32 dram_additional_info, err_prank, edea0, edea1;
	u32 ecc_latch_select, dram_syndrom, serr, derr, syndrom;
	enum hw_event_mc_err_type ecc_type;
	u64 ecc_dimm_addr;
	int ecc_dimm;

	ecc_type = is_single_ecc ? HW_EVENT_ERR_CORRECTED :
				   HW_EVENT_ERR_UNCORRECTED;

	/*
	 * Tell the External Memory Interface to populate the relevant
	 * registers with information about the last ECC error occurrence.
	 */
	ecc_latch_select = MLXBF_ECC_LATCH_SEL__START;
	FUNC5(ecc_latch_select, priv->emi_base + MLXBF_ECC_LATCH_SEL);

	/*
	 * Verify that the ECC reported info in the registers is of the
	 * same type as the one asked to report. If not, just report the
	 * error without the detailed information.
	 */
	dram_syndrom = FUNC4(priv->emi_base + MLXBF_SYNDROM);
	serr = FUNC0(MLXBF_SYNDROM__SERR, dram_syndrom);
	derr = FUNC0(MLXBF_SYNDROM__DERR, dram_syndrom);
	syndrom = FUNC0(MLXBF_SYNDROM__SYN, dram_syndrom);

	if ((is_single_ecc && !serr) || (!is_single_ecc && !derr)) {
		FUNC2(ecc_type, mci, error_cnt, 0, 0, 0,
				     0, 0, -1, mci->ctl_name, "");
		return;
	}

	dram_additional_info = FUNC4(priv->emi_base + MLXBF_ADD_INFO);
	err_prank = FUNC0(MLXBF_ADD_INFO__ERR_PRANK, dram_additional_info);

	ecc_dimm = (err_prank >= 2 && priv->dimm_ranks[0] <= 2) ? 1 : 0;

	edea0 = FUNC4(priv->emi_base + MLXBF_ERR_ADDR_0);
	edea1 = FUNC4(priv->emi_base + MLXBF_ERR_ADDR_1);

	ecc_dimm_addr = ((u64)edea1 << 32) | edea0;

	FUNC2(ecc_type, mci, error_cnt,
			     FUNC1(ecc_dimm_addr),
			     FUNC3(ecc_dimm_addr),
			     syndrom, ecc_dimm, 0, 0, mci->ctl_name, "");
}