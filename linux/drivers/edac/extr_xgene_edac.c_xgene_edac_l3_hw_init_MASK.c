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
struct xgene_edac_dev_ctx {int /*<<< orphan*/  edac; scalar_t__ dev_csr; } ;
struct edac_device_ctl_info {scalar_t__ op_state; struct xgene_edac_dev_ctx* pvt_info; } ;

/* Variables and functions */
 int L3C_CERREN ; 
 int /*<<< orphan*/  L3C_CORR_ERR_MASK ; 
 scalar_t__ L3C_ECR ; 
 int L3C_ECR_CINTREN ; 
 int L3C_ECR_UCINTREN ; 
 int L3C_UCERREN ; 
 int /*<<< orphan*/  L3C_UNCORR_ERR_MASK ; 
 scalar_t__ OP_RUNNING_INTERRUPT ; 
 int /*<<< orphan*/  PCPHPERRINTMSK ; 
 int /*<<< orphan*/  PCPLPERRINTMSK ; 
 int FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct edac_device_ctl_info *edac_dev,
				  bool enable)
{
	struct xgene_edac_dev_ctx *ctx = edac_dev->pvt_info;
	u32 val;

	val = FUNC0(ctx->dev_csr + L3C_ECR);
	val |= L3C_UCERREN | L3C_CERREN;
	/* On disable, we just disable interrupt but keep error enabled */
	if (edac_dev->op_state == OP_RUNNING_INTERRUPT) {
		if (enable)
			val |= L3C_ECR_UCINTREN | L3C_ECR_CINTREN;
		else
			val &= ~(L3C_ECR_UCINTREN | L3C_ECR_CINTREN);
	}
	FUNC1(val, ctx->dev_csr + L3C_ECR);

	if (edac_dev->op_state == OP_RUNNING_INTERRUPT) {
		/* Enable/disable L3 error top level interrupt */
		if (enable) {
			FUNC2(ctx->edac, PCPHPERRINTMSK,
					       L3C_UNCORR_ERR_MASK);
			FUNC2(ctx->edac, PCPLPERRINTMSK,
					       L3C_CORR_ERR_MASK);
		} else {
			FUNC3(ctx->edac, PCPHPERRINTMSK,
					       L3C_UNCORR_ERR_MASK);
			FUNC3(ctx->edac, PCPLPERRINTMSK,
					       L3C_CORR_ERR_MASK);
		}
	}
}