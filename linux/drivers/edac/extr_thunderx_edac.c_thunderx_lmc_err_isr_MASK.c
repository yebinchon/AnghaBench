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
struct thunderx_lmc {scalar_t__ regs; int /*<<< orphan*/  ecc_int; int /*<<< orphan*/  ring_head; struct lmc_err_ctx* err_ctx; } ;
struct mem_ctl_info {struct thunderx_lmc* pvt_info; } ;
struct lmc_err_ctx {int reg_int; void* reg_ecc_synd; void* reg_scram_fadr; void* reg_nxm_fadr; void* reg_fadr; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct lmc_err_ctx*) ; 
 int /*<<< orphan*/  IRQ_WAKE_THREAD ; 
 scalar_t__ LMC_CHAR_MASK0 ; 
 scalar_t__ LMC_CHAR_MASK2 ; 
 scalar_t__ LMC_ECC_PARITY_TEST ; 
 scalar_t__ LMC_ECC_SYND ; 
 scalar_t__ LMC_FADR ; 
 scalar_t__ LMC_INT ; 
 scalar_t__ LMC_NXM_FADR ; 
 scalar_t__ LMC_SCRAM_FADR ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 void* FUNC2 (scalar_t__) ; 
 unsigned long FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int,scalar_t__) ; 

__attribute__((used)) static irqreturn_t FUNC5(int irq, void *dev_id)
{
	struct mem_ctl_info *mci = dev_id;
	struct thunderx_lmc *lmc = mci->pvt_info;

	unsigned long head = FUNC3(lmc->ring_head, FUNC0(lmc->err_ctx));
	struct lmc_err_ctx *ctx = &lmc->err_ctx[head];

	FUNC4(0, lmc->regs + LMC_CHAR_MASK0);
	FUNC4(0, lmc->regs + LMC_CHAR_MASK2);
	FUNC4(0x2, lmc->regs + LMC_ECC_PARITY_TEST);

	ctx->reg_int = FUNC2(lmc->regs + LMC_INT);
	ctx->reg_fadr = FUNC2(lmc->regs + LMC_FADR);
	ctx->reg_nxm_fadr = FUNC2(lmc->regs + LMC_NXM_FADR);
	ctx->reg_scram_fadr = FUNC2(lmc->regs + LMC_SCRAM_FADR);
	ctx->reg_ecc_synd = FUNC2(lmc->regs + LMC_ECC_SYND);

	lmc->ring_head++;

	FUNC1(&lmc->ecc_int, 1);

	/* Clear the interrupt */
	FUNC4(ctx->reg_int, lmc->regs + LMC_INT);

	return IRQ_WAKE_THREAD;
}