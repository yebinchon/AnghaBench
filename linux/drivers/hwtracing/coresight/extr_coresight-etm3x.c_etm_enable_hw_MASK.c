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
typedef  int u32 ;
struct etm_config {int ctrl; int trigger_event; int startstop_ctrl; int enable_event; int enable_ctrl1; int fifofull_level; int* addr_val; int* addr_acctype; int* cntr_rld_val; int* cntr_event; int* cntr_rld_event; int* cntr_val; int seq_12_event; int seq_21_event; int seq_23_event; int seq_31_event; int seq_32_event; int seq_13_event; int seq_curr_state; int* ctxid_pid; int ctxid_mask; int sync_freq; int timestamp_event; } ;
struct etm_drvdata {int port_size; int nr_addr_cmp; int nr_cntr; int nr_ext_out; int nr_ctxid_cmp; int traceid; int /*<<< orphan*/  cpu; TYPE_1__* csdev; int /*<<< orphan*/  base; struct etm_config config; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int ETM3X_SUPPORTED_OPTIONS ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  ETMAUXCR ; 
 int /*<<< orphan*/  ETMCIDCMR ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int /*<<< orphan*/  ETMCR ; 
 int ETMCR_ETM_EN ; 
 int /*<<< orphan*/  ETMEXTINSELR ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 int /*<<< orphan*/  ETMFFLR ; 
 int /*<<< orphan*/  ETMSQ12EVR ; 
 int /*<<< orphan*/  ETMSQ13EVR ; 
 int /*<<< orphan*/  ETMSQ21EVR ; 
 int /*<<< orphan*/  ETMSQ23EVR ; 
 int /*<<< orphan*/  ETMSQ31EVR ; 
 int /*<<< orphan*/  ETMSQ32EVR ; 
 int /*<<< orphan*/  ETMSQR ; 
 int /*<<< orphan*/  ETMSYNCFR ; 
 int /*<<< orphan*/  ETMTECR1 ; 
 int /*<<< orphan*/  ETMTEEVR ; 
 int /*<<< orphan*/  ETMTRACEIDR ; 
 int /*<<< orphan*/  ETMTRIGGER ; 
 int /*<<< orphan*/  ETMTSEVR ; 
 int /*<<< orphan*/  ETMTSSCR ; 
 int /*<<< orphan*/  ETMVMIDCVR ; 
 int ETM_DEFAULT_EVENT_VAL ; 
 int FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC12 (struct etm_drvdata*) ; 
 int /*<<< orphan*/  FUNC13 (struct etm_drvdata*) ; 
 int /*<<< orphan*/  FUNC14 (struct etm_drvdata*) ; 
 int FUNC15 (struct etm_drvdata*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (struct etm_drvdata*) ; 
 int /*<<< orphan*/  FUNC17 (struct etm_drvdata*) ; 
 int /*<<< orphan*/  FUNC18 (struct etm_drvdata*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC19(struct etm_drvdata *drvdata)
{
	int i, rc;
	u32 etmcr;
	struct etm_config *config = &drvdata->config;

	FUNC1(drvdata->base);

	rc = FUNC10(drvdata->base);
	if (rc)
		goto done;

	/* Turn engine on */
	FUNC13(drvdata);
	/* Apply power to trace registers */
	FUNC17(drvdata);
	/* Make sure all registers are accessible */
	FUNC14(drvdata);

	FUNC16(drvdata);

	etmcr = FUNC15(drvdata, ETMCR);
	/* Clear setting from a previous run if need be */
	etmcr &= ~ETM3X_SUPPORTED_OPTIONS;
	etmcr |= drvdata->port_size;
	etmcr |= ETMCR_ETM_EN;
	FUNC18(drvdata, config->ctrl | etmcr, ETMCR);
	FUNC18(drvdata, config->trigger_event, ETMTRIGGER);
	FUNC18(drvdata, config->startstop_ctrl, ETMTSSCR);
	FUNC18(drvdata, config->enable_event, ETMTEEVR);
	FUNC18(drvdata, config->enable_ctrl1, ETMTECR1);
	FUNC18(drvdata, config->fifofull_level, ETMFFLR);
	for (i = 0; i < drvdata->nr_addr_cmp; i++) {
		FUNC18(drvdata, config->addr_val[i], FUNC3(i));
		FUNC18(drvdata, config->addr_acctype[i], FUNC2(i));
	}
	for (i = 0; i < drvdata->nr_cntr; i++) {
		FUNC18(drvdata, config->cntr_rld_val[i], FUNC7(i));
		FUNC18(drvdata, config->cntr_event[i], FUNC5(i));
		FUNC18(drvdata, config->cntr_rld_event[i],
			   FUNC6(i));
		FUNC18(drvdata, config->cntr_val[i], FUNC8(i));
	}
	FUNC18(drvdata, config->seq_12_event, ETMSQ12EVR);
	FUNC18(drvdata, config->seq_21_event, ETMSQ21EVR);
	FUNC18(drvdata, config->seq_23_event, ETMSQ23EVR);
	FUNC18(drvdata, config->seq_31_event, ETMSQ31EVR);
	FUNC18(drvdata, config->seq_32_event, ETMSQ32EVR);
	FUNC18(drvdata, config->seq_13_event, ETMSQ13EVR);
	FUNC18(drvdata, config->seq_curr_state, ETMSQR);
	for (i = 0; i < drvdata->nr_ext_out; i++)
		FUNC18(drvdata, ETM_DEFAULT_EVENT_VAL, FUNC9(i));
	for (i = 0; i < drvdata->nr_ctxid_cmp; i++)
		FUNC18(drvdata, config->ctxid_pid[i], FUNC4(i));
	FUNC18(drvdata, config->ctxid_mask, ETMCIDCMR);
	FUNC18(drvdata, config->sync_freq, ETMSYNCFR);
	/* No external input selected */
	FUNC18(drvdata, 0x0, ETMEXTINSELR);
	FUNC18(drvdata, config->timestamp_event, ETMTSEVR);
	/* No auxiliary control selected */
	FUNC18(drvdata, 0x0, ETMAUXCR);
	FUNC18(drvdata, drvdata->traceid, ETMTRACEIDR);
	/* No VMID comparator value selected */
	FUNC18(drvdata, 0x0, ETMVMIDCVR);

	FUNC12(drvdata);

done:
	FUNC0(drvdata->base);

	FUNC11(&drvdata->csdev->dev, "cpu: %d enable smp call done: %d\n",
		drvdata->cpu, rc);
	return rc;
}