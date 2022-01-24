#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct thunderx_lmc {int /*<<< orphan*/  ring_tail; TYPE_1__* pdev; struct lmc_err_ctx* err_ctx; int /*<<< orphan*/  ring_head; } ;
struct mem_ctl_info {struct thunderx_lmc* pvt_info; } ;
struct lmc_err_ctx {int reg_int; int reg_fadr; int reg_nxm_fadr; int reg_scram_fadr; int reg_ecc_synd; } ;
typedef  int /*<<< orphan*/  phys_addr_t ;
typedef  int /*<<< orphan*/  irqreturn_t ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct lmc_err_ctx*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  HW_EVENT_ERR_CORRECTED ; 
 int /*<<< orphan*/  HW_EVENT_ERR_UNCORRECTED ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  IRQ_NONE ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int LMC_INT_CE ; 
 int LMC_INT_UE ; 
 int /*<<< orphan*/  LMC_MESSAGE_SIZE ; 
 int /*<<< orphan*/  LMC_OTHER_SIZE ; 
 int /*<<< orphan*/  FUNC7 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,struct mem_ctl_info*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int,char*,char*) ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 
 char* FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  lmc_errors ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 unsigned long FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (char*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int,struct thunderx_lmc*) ; 

__attribute__((used)) static irqreturn_t FUNC17(int irq, void *dev_id)
{
	struct mem_ctl_info *mci = dev_id;
	struct thunderx_lmc *lmc = mci->pvt_info;
	phys_addr_t phys_addr;

	unsigned long tail;
	struct lmc_err_ctx *ctx;

	irqreturn_t ret = IRQ_NONE;

	char *msg;
	char *other;

	msg = FUNC11(LMC_MESSAGE_SIZE, GFP_KERNEL);
	other =  FUNC11(LMC_OTHER_SIZE, GFP_KERNEL);

	if (!msg || !other)
		goto err_free;

	while (FUNC1(lmc->ring_head, lmc->ring_tail,
		FUNC0(lmc->err_ctx))) {
		tail = FUNC14(lmc->ring_tail, FUNC0(lmc->err_ctx));

		ctx = &lmc->err_ctx[tail];

		FUNC8(&lmc->pdev->dev, "LMC_INT: %016llx\n",
			ctx->reg_int);
		FUNC8(&lmc->pdev->dev, "LMC_FADR: %016llx\n",
			ctx->reg_fadr);
		FUNC8(&lmc->pdev->dev, "LMC_NXM_FADR: %016llx\n",
			ctx->reg_nxm_fadr);
		FUNC8(&lmc->pdev->dev, "LMC_SCRAM_FADR: %016llx\n",
			ctx->reg_scram_fadr);
		FUNC8(&lmc->pdev->dev, "LMC_ECC_SYND: %016llx\n",
			ctx->reg_ecc_synd);

		FUNC15(msg, LMC_MESSAGE_SIZE,
			 "DIMM %lld rank %lld bank %lld row %lld col %lld",
			 FUNC5(ctx->reg_scram_fadr),
			 FUNC3(ctx->reg_scram_fadr),
			 FUNC2(ctx->reg_scram_fadr),
			 FUNC6(ctx->reg_scram_fadr),
			 FUNC4(ctx->reg_scram_fadr));

		FUNC7(other, LMC_OTHER_SIZE, lmc_errors,
				ctx->reg_int);

		phys_addr = FUNC16(ctx->reg_fadr, lmc);

		if (ctx->reg_int & LMC_INT_UE)
			FUNC9(HW_EVENT_ERR_UNCORRECTED, mci, 1,
					     FUNC13(phys_addr),
					     FUNC12(phys_addr),
					     0, -1, -1, -1, msg, other);
		else if (ctx->reg_int & LMC_INT_CE)
			FUNC9(HW_EVENT_ERR_CORRECTED, mci, 1,
					     FUNC13(phys_addr),
					     FUNC12(phys_addr),
					     0, -1, -1, -1, msg, other);

		lmc->ring_tail++;
	}

	ret = IRQ_HANDLED;

err_free:
	FUNC10(msg);
	FUNC10(other);

	return ret;
}