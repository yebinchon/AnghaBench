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
struct xgene_edac_dev_ctx {int /*<<< orphan*/  edac; scalar_t__ dev_csr; } ;
struct edac_device_ctl_info {scalar_t__ op_state; struct xgene_edac_dev_ctx* pvt_info; } ;

/* Variables and functions */
 int CSW_SWITCH_TRACE_ERR_MASK ; 
 scalar_t__ IOBAXIS0TRANSERRINTMSK ; 
 scalar_t__ IOBAXIS1TRANSERRINTMSK ; 
 int IOB_BA_ERR_MASK ; 
 int IOB_PA_ERR_MASK ; 
 int IOB_RB_ERR_MASK ; 
 int IOB_XGIC_ERR_MASK ; 
 int /*<<< orphan*/  MEMERRINTMSK ; 
 scalar_t__ OP_RUNNING_INTERRUPT ; 
 int /*<<< orphan*/  PCPHPERRINTMSK ; 
 int /*<<< orphan*/  PCPLPERRINTMSK ; 
 scalar_t__ XGICTRANSERRINTMSK ; 
 int /*<<< orphan*/  FUNC0 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC3(struct edac_device_ctl_info *edac_dev,
				   bool enable)
{
	struct xgene_edac_dev_ctx *ctx = edac_dev->pvt_info;

	/* Enable SoC IP error interrupt */
	if (edac_dev->op_state == OP_RUNNING_INTERRUPT) {
		if (enable) {
			FUNC1(ctx->edac, PCPHPERRINTMSK,
					       IOB_PA_ERR_MASK |
					       IOB_BA_ERR_MASK |
					       IOB_XGIC_ERR_MASK |
					       IOB_RB_ERR_MASK);
			FUNC1(ctx->edac, PCPLPERRINTMSK,
					       CSW_SWITCH_TRACE_ERR_MASK);
		} else {
			FUNC2(ctx->edac, PCPHPERRINTMSK,
					       IOB_PA_ERR_MASK |
					       IOB_BA_ERR_MASK |
					       IOB_XGIC_ERR_MASK |
					       IOB_RB_ERR_MASK);
			FUNC2(ctx->edac, PCPLPERRINTMSK,
					       CSW_SWITCH_TRACE_ERR_MASK);
		}

		FUNC0(enable ? 0x0 : 0xFFFFFFFF,
		       ctx->dev_csr + IOBAXIS0TRANSERRINTMSK);
		FUNC0(enable ? 0x0 : 0xFFFFFFFF,
		       ctx->dev_csr + IOBAXIS1TRANSERRINTMSK);
		FUNC0(enable ? 0x0 : 0xFFFFFFFF,
		       ctx->dev_csr + XGICTRANSERRINTMSK);

		FUNC2(ctx->edac, MEMERRINTMSK,
				       enable ? 0x0 : 0xFFFFFFFF);
	}
}