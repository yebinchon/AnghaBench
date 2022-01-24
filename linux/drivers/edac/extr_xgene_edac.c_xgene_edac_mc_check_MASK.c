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
struct xgene_edac_mc_ctx {scalar_t__ mcu_csr; int /*<<< orphan*/  edac; } ;
struct mem_ctl_info {int /*<<< orphan*/  ctl_name; struct xgene_edac_mc_ctx* pvt_info; } ;

/* Variables and functions */
 int /*<<< orphan*/  HW_EVENT_ERR_CORRECTED ; 
 int /*<<< orphan*/  HW_EVENT_ERR_UNCORRECTED ; 
 int /*<<< orphan*/  KERN_ERR ; 
 int /*<<< orphan*/  KERN_WARNING ; 
 scalar_t__ MCUEBLRR0 ; 
 scalar_t__ MCUERCRR0 ; 
 scalar_t__ MCUESRR0 ; 
 scalar_t__ MCUGESR ; 
 scalar_t__ MCUSBECNT0 ; 
 unsigned int MCU_CORR_ERR_MASK ; 
 unsigned int MCU_CTL_ERR_MASK ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int MCU_ESRR_BACKUCERR_MASK ; 
 int MCU_ESRR_CERR_MASK ; 
 int MCU_ESRR_DEMANDUCERR_MASK ; 
 int MCU_GESR_ADDRMULTIMATCH_ERR_MASK ; 
 int MCU_GESR_ADDRNOMATCH_ERR_MASK ; 
 int MCU_MAX_RANK ; 
 int MCU_RANK_STRIDE ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 unsigned int MCU_UNCORR_ERR_MASK ; 
 int /*<<< orphan*/  PCPHPERRINTSTS ; 
 int /*<<< orphan*/  PCPLPERRINTSTS ; 
 int /*<<< orphan*/  FUNC4 (struct mem_ctl_info*,int /*<<< orphan*/ ,char*,char*,...) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,struct mem_ctl_info*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,char*) ; 
 int FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int*) ; 

__attribute__((used)) static void FUNC9(struct mem_ctl_info *mci)
{
	struct xgene_edac_mc_ctx *ctx = mci->pvt_info;
	unsigned int pcp_hp_stat;
	unsigned int pcp_lp_stat;
	u32 reg;
	u32 rank;
	u32 bank;
	u32 count;
	u32 col_row;

	FUNC8(ctx->edac, PCPHPERRINTSTS, &pcp_hp_stat);
	FUNC8(ctx->edac, PCPLPERRINTSTS, &pcp_lp_stat);
	if (!((MCU_UNCORR_ERR_MASK & pcp_hp_stat) ||
	      (MCU_CTL_ERR_MASK & pcp_hp_stat) ||
	      (MCU_CORR_ERR_MASK & pcp_lp_stat)))
		return;

	for (rank = 0; rank < MCU_MAX_RANK; rank++) {
		reg = FUNC6(ctx->mcu_csr + MCUESRR0 + rank * MCU_RANK_STRIDE);

		/* Detect uncorrectable memory error */
		if (reg & (MCU_ESRR_DEMANDUCERR_MASK |
			   MCU_ESRR_BACKUCERR_MASK)) {
			/* Detected uncorrectable memory error */
			FUNC4(mci, KERN_ERR, "X-Gene",
				"MCU uncorrectable error at rank %d\n", rank);

			FUNC5(HW_EVENT_ERR_UNCORRECTED, mci,
				1, 0, 0, 0, 0, 0, -1, mci->ctl_name, "");
		}

		/* Detect correctable memory error */
		if (reg & MCU_ESRR_CERR_MASK) {
			bank = FUNC6(ctx->mcu_csr + MCUEBLRR0 +
				     rank * MCU_RANK_STRIDE);
			col_row = FUNC6(ctx->mcu_csr + MCUERCRR0 +
					rank * MCU_RANK_STRIDE);
			count = FUNC6(ctx->mcu_csr + MCUSBECNT0 +
				      rank * MCU_RANK_STRIDE);
			FUNC4(mci, KERN_WARNING, "X-Gene",
				"MCU correctable error at rank %d bank %d column %d row %d count %d\n",
				rank, FUNC0(bank),
				FUNC1(col_row),
				FUNC2(col_row),
				FUNC3(count));

			FUNC5(HW_EVENT_ERR_CORRECTED, mci,
				1, 0, 0, 0, 0, 0, -1, mci->ctl_name, "");
		}

		/* Clear all error registers */
		FUNC7(0x0, ctx->mcu_csr + MCUEBLRR0 + rank * MCU_RANK_STRIDE);
		FUNC7(0x0, ctx->mcu_csr + MCUERCRR0 + rank * MCU_RANK_STRIDE);
		FUNC7(0x0, ctx->mcu_csr + MCUSBECNT0 +
		       rank * MCU_RANK_STRIDE);
		FUNC7(reg, ctx->mcu_csr + MCUESRR0 + rank * MCU_RANK_STRIDE);
	}

	/* Detect memory controller error */
	reg = FUNC6(ctx->mcu_csr + MCUGESR);
	if (reg) {
		if (reg & MCU_GESR_ADDRNOMATCH_ERR_MASK)
			FUNC4(mci, KERN_WARNING, "X-Gene",
				"MCU address miss-match error\n");
		if (reg & MCU_GESR_ADDRMULTIMATCH_ERR_MASK)
			FUNC4(mci, KERN_WARNING, "X-Gene",
				"MCU address multi-match error\n");

		FUNC7(reg, ctx->mcu_csr + MCUGESR);
	}
}