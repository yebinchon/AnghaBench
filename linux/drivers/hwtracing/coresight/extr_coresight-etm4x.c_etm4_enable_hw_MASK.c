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
struct etmv4_config {int pe_sel; int cfg; int eventctrl0; int eventctrl1; int stall_ctrl; int ts_ctrl; int syncfreq; int ccctlr; int bb_ctrl; int vinst_ctrl; int viiectlr; int vissctlr; int vipcssctlr; int* seq_ctrl; int seq_rst; int seq_state; int ext_inp; int* cntrldvr; int* cntr_ctrl; int* cntr_val; int* res_ctrl; int* ss_ctrl; int* ss_status; int* ss_pe_cmp; int ctxid_mask0; int ctxid_mask1; int vmid_mask0; int vmid_mask1; int /*<<< orphan*/ * vmid_val; int /*<<< orphan*/ * ctxid_pid; int /*<<< orphan*/ * addr_acc; int /*<<< orphan*/ * addr_val; } ;
struct etmv4_drvdata {int trcid; int nrseqstate; int nr_cntr; int nr_resource; int nr_ss_cmp; int nr_addr_cmp; int numcidc; int numvmidc; int /*<<< orphan*/  cpu; scalar_t__ base; TYPE_1__* csdev; struct etmv4_config config; } ;
struct device {int dummy; } ;
struct TYPE_2__ {struct device dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (int) ; 
 scalar_t__ FUNC3 (int) ; 
 scalar_t__ TRCAUXCTLR ; 
 scalar_t__ TRCBBCTLR ; 
 scalar_t__ TRCCCCTLR ; 
 scalar_t__ TRCCIDCCTLR0 ; 
 scalar_t__ TRCCIDCCTLR1 ; 
 scalar_t__ FUNC4 (int) ; 
 scalar_t__ FUNC5 (int) ; 
 scalar_t__ FUNC6 (int) ; 
 scalar_t__ FUNC7 (int) ; 
 scalar_t__ TRCCONFIGR ; 
 scalar_t__ TRCEVENTCTL0R ; 
 scalar_t__ TRCEVENTCTL1R ; 
 scalar_t__ TRCEXTINSELR ; 
 scalar_t__ TRCPDCR ; 
 int TRCPDCR_PU ; 
 scalar_t__ TRCPRGCTLR ; 
 scalar_t__ TRCPROCSELR ; 
 scalar_t__ FUNC8 (int) ; 
 scalar_t__ FUNC9 (int) ; 
 scalar_t__ TRCSEQRSTEVR ; 
 scalar_t__ TRCSEQSTR ; 
 scalar_t__ FUNC10 (int) ; 
 scalar_t__ FUNC11 (int) ; 
 scalar_t__ FUNC12 (int) ; 
 scalar_t__ TRCSTALLCTLR ; 
 int /*<<< orphan*/  TRCSTATR ; 
 int /*<<< orphan*/  TRCSTATR_IDLE_BIT ; 
 scalar_t__ TRCSYNCPR ; 
 scalar_t__ TRCTRACEIDR ; 
 scalar_t__ TRCTSCTLR ; 
 scalar_t__ TRCVICTLR ; 
 scalar_t__ TRCVIIECTLR ; 
 scalar_t__ TRCVIPCSSCTLR ; 
 scalar_t__ TRCVISSCTLR ; 
 scalar_t__ TRCVMIDCCTLR0 ; 
 scalar_t__ TRCVMIDCCTLR1 ; 
 scalar_t__ FUNC13 (int) ; 
 int FUNC14 (scalar_t__) ; 
 scalar_t__ FUNC15 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC16 (struct device*,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC17 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (struct etmv4_drvdata*) ; 
 int /*<<< orphan*/  FUNC20 () ; 
 int FUNC21 (scalar_t__) ; 
 int /*<<< orphan*/  sy ; 
 int /*<<< orphan*/  FUNC22 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static int FUNC24(struct etmv4_drvdata *drvdata)
{
	int i, rc;
	struct etmv4_config *config = &drvdata->config;
	struct device *etm_dev = &drvdata->csdev->dev;

	FUNC1(drvdata->base);

	FUNC19(drvdata);

	rc = FUNC14(drvdata->base);
	if (rc)
		goto done;

	/* Disable the trace unit before programming trace registers */
	FUNC22(0, drvdata->base + TRCPRGCTLR);

	/* wait for TRCSTATR.IDLE to go up */
	if (FUNC15(drvdata->base, TRCSTATR, TRCSTATR_IDLE_BIT, 1))
		FUNC17(etm_dev,
			"timeout while waiting for Idle Trace Status\n");

	FUNC22(config->pe_sel, drvdata->base + TRCPROCSELR);
	FUNC22(config->cfg, drvdata->base + TRCCONFIGR);
	/* nothing specific implemented */
	FUNC22(0x0, drvdata->base + TRCAUXCTLR);
	FUNC22(config->eventctrl0, drvdata->base + TRCEVENTCTL0R);
	FUNC22(config->eventctrl1, drvdata->base + TRCEVENTCTL1R);
	FUNC22(config->stall_ctrl, drvdata->base + TRCSTALLCTLR);
	FUNC22(config->ts_ctrl, drvdata->base + TRCTSCTLR);
	FUNC22(config->syncfreq, drvdata->base + TRCSYNCPR);
	FUNC22(config->ccctlr, drvdata->base + TRCCCCTLR);
	FUNC22(config->bb_ctrl, drvdata->base + TRCBBCTLR);
	FUNC22(drvdata->trcid, drvdata->base + TRCTRACEIDR);
	FUNC22(config->vinst_ctrl, drvdata->base + TRCVICTLR);
	FUNC22(config->viiectlr, drvdata->base + TRCVIIECTLR);
	FUNC22(config->vissctlr,
		       drvdata->base + TRCVISSCTLR);
	FUNC22(config->vipcssctlr,
		       drvdata->base + TRCVIPCSSCTLR);
	for (i = 0; i < drvdata->nrseqstate - 1; i++)
		FUNC22(config->seq_ctrl[i],
			       drvdata->base + FUNC9(i));
	FUNC22(config->seq_rst, drvdata->base + TRCSEQRSTEVR);
	FUNC22(config->seq_state, drvdata->base + TRCSEQSTR);
	FUNC22(config->ext_inp, drvdata->base + TRCEXTINSELR);
	for (i = 0; i < drvdata->nr_cntr; i++) {
		FUNC22(config->cntrldvr[i],
			       drvdata->base + FUNC6(i));
		FUNC22(config->cntr_ctrl[i],
			       drvdata->base + FUNC5(i));
		FUNC22(config->cntr_val[i],
			       drvdata->base + FUNC7(i));
	}

	/*
	 * Resource selector pair 0 is always implemented and reserved.  As
	 * such start at 2.
	 */
	for (i = 2; i < drvdata->nr_resource * 2; i++)
		FUNC22(config->res_ctrl[i],
			       drvdata->base + FUNC8(i));

	for (i = 0; i < drvdata->nr_ss_cmp; i++) {
		FUNC22(config->ss_ctrl[i],
			       drvdata->base + FUNC10(i));
		FUNC22(config->ss_status[i],
			       drvdata->base + FUNC11(i));
		FUNC22(config->ss_pe_cmp[i],
			       drvdata->base + FUNC12(i));
	}
	for (i = 0; i < drvdata->nr_addr_cmp; i++) {
		FUNC23(config->addr_val[i],
			       drvdata->base + FUNC3(i));
		FUNC23(config->addr_acc[i],
			       drvdata->base + FUNC2(i));
	}
	for (i = 0; i < drvdata->numcidc; i++)
		FUNC23(config->ctxid_pid[i],
			       drvdata->base + FUNC4(i));
	FUNC22(config->ctxid_mask0, drvdata->base + TRCCIDCCTLR0);
	FUNC22(config->ctxid_mask1, drvdata->base + TRCCIDCCTLR1);

	for (i = 0; i < drvdata->numvmidc; i++)
		FUNC23(config->vmid_val[i],
			       drvdata->base + FUNC13(i));
	FUNC22(config->vmid_mask0, drvdata->base + TRCVMIDCCTLR0);
	FUNC22(config->vmid_mask1, drvdata->base + TRCVMIDCCTLR1);

	/*
	 * Request to keep the trace unit powered and also
	 * emulation of powerdown
	 */
	FUNC22(FUNC21(drvdata->base + TRCPDCR) | TRCPDCR_PU,
		       drvdata->base + TRCPDCR);

	/* Enable the trace unit */
	FUNC22(1, drvdata->base + TRCPRGCTLR);

	/* wait for TRCSTATR.IDLE to go back down to '0' */
	if (FUNC15(drvdata->base, TRCSTATR, TRCSTATR_IDLE_BIT, 0))
		FUNC17(etm_dev,
			"timeout while waiting for Idle Trace Status\n");

	/*
	 * As recommended by section 4.3.7 ("Synchronization when using the
	 * memory-mapped interface") of ARM IHI 0064D
	 */
	FUNC18(sy);
	FUNC20();

done:
	FUNC0(drvdata->base);

	FUNC16(etm_dev, "cpu: %d enable smp call done: %d\n",
		drvdata->cpu, rc);
	return rc;
}