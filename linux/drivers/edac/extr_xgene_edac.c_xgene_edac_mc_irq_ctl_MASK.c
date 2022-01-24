#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct xgene_edac_mc_ctx {int mcu_id; TYPE_1__* edac; scalar_t__ mcu_csr; } ;
struct mem_ctl_info {struct xgene_edac_mc_ctx* pvt_info; } ;
struct TYPE_3__ {int mc_registered_mask; int mc_active_mask; int /*<<< orphan*/  mc_lock; } ;

/* Variables and functions */
 scalar_t__ EDAC_OPSTATE_INT ; 
 scalar_t__ MCUGECR ; 
 int MCU_CORR_ERR_MASK ; 
 int MCU_CTL_ERR_MASK ; 
 unsigned int MCU_GECR_BACKUCINTREN_MASK ; 
 unsigned int MCU_GECR_CINTREN_MASK ; 
 unsigned int MCU_GECR_DEMANDUCINTREN_MASK ; 
 int MCU_UNCORR_ERR_MASK ; 
 unsigned int MUC_GECR_MCUADDRERREN_MASK ; 
 int /*<<< orphan*/  PCPHPERRINTMSK ; 
 int /*<<< orphan*/  PCPLPERRINTMSK ; 
 scalar_t__ edac_op_state ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 unsigned int FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (unsigned int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC6(struct mem_ctl_info *mci, bool enable)
{
	struct xgene_edac_mc_ctx *ctx = mci->pvt_info;
	unsigned int val;

	if (edac_op_state != EDAC_OPSTATE_INT)
		return;

	FUNC0(&ctx->edac->mc_lock);

	/*
	 * As there is only single bit for enable error and interrupt mask,
	 * we must only enable top level interrupt after all MCUs are
	 * registered. Otherwise, if there is an error and the corresponding
	 * MCU has not registered, the interrupt will never get cleared. To
	 * determine all MCU have registered, we will keep track of active
	 * MCUs and registered MCUs.
	 */
	if (enable) {
		/* Set registered MCU bit */
		ctx->edac->mc_registered_mask |= 1 << ctx->mcu_id;

		/* Enable interrupt after all active MCU registered */
		if (ctx->edac->mc_registered_mask ==
		    ctx->edac->mc_active_mask) {
			/* Enable memory controller top level interrupt */
			FUNC4(ctx->edac, PCPHPERRINTMSK,
					       MCU_UNCORR_ERR_MASK |
					       MCU_CTL_ERR_MASK);
			FUNC4(ctx->edac, PCPLPERRINTMSK,
					       MCU_CORR_ERR_MASK);
		}

		/* Enable MCU interrupt and error reporting */
		val = FUNC2(ctx->mcu_csr + MCUGECR);
		val |= MCU_GECR_DEMANDUCINTREN_MASK |
		       MCU_GECR_BACKUCINTREN_MASK |
		       MCU_GECR_CINTREN_MASK |
		       MUC_GECR_MCUADDRERREN_MASK;
		FUNC3(val, ctx->mcu_csr + MCUGECR);
	} else {
		/* Disable MCU interrupt */
		val = FUNC2(ctx->mcu_csr + MCUGECR);
		val &= ~(MCU_GECR_DEMANDUCINTREN_MASK |
			 MCU_GECR_BACKUCINTREN_MASK |
			 MCU_GECR_CINTREN_MASK |
			 MUC_GECR_MCUADDRERREN_MASK);
		FUNC3(val, ctx->mcu_csr + MCUGECR);

		/* Disable memory controller top level interrupt */
		FUNC5(ctx->edac, PCPHPERRINTMSK,
				       MCU_UNCORR_ERR_MASK | MCU_CTL_ERR_MASK);
		FUNC5(ctx->edac, PCPLPERRINTMSK,
				       MCU_CORR_ERR_MASK);

		/* Clear registered MCU bit */
		ctx->edac->mc_registered_mask &= ~(1 << ctx->mcu_id);
	}

	FUNC1(&ctx->edac->mc_lock);
}