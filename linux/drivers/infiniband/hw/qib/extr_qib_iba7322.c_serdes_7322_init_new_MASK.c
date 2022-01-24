#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct qib_pportdata {TYPE_1__* cpspec; TYPE_3__* dd; int /*<<< orphan*/  hw_pidx; } ;
struct TYPE_7__ {TYPE_2__* cspec; } ;
struct TYPE_6__ {scalar_t__ r1; } ;
struct TYPE_5__ {int qdr_dfe_on; } ;

/* Variables and functions */
 int FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IBSD_TX_DEEMPHASIS_OVERRIDE_0 ; 
 scalar_t__ FUNC2 (TYPE_3__*) ; 
 int LE2_DEFAULT ; 
 int LE2_QME ; 
 unsigned long long QDR_STATIC_ADAPT_DOWN ; 
 unsigned long long QDR_STATIC_ADAPT_DOWN_R1 ; 
 int SERDES_CHANS ; 
 unsigned long long FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (TYPE_3__*,int /*<<< orphan*/ ,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC5 (struct qib_pportdata*,int,int,int) ; 
 int /*<<< orphan*/  FUNC6 (struct qib_pportdata*,int /*<<< orphan*/ ) ; 
 unsigned long jiffies ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  krp_tx_deemph_override ; 
 unsigned long FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC11 (struct qib_pportdata*,int /*<<< orphan*/ ,unsigned long long) ; 
 int /*<<< orphan*/  reset_tx_deemphasis_override ; 
 int /*<<< orphan*/  FUNC12 (struct qib_pportdata*,int) ; 
 int /*<<< orphan*/  FUNC13 (unsigned long) ; 

__attribute__((used)) static int FUNC14(struct qib_pportdata *ppd)
{
	unsigned long tend;
	u32 le_val, rxcaldone;
	int chan, chan_done = (1 << SERDES_CHANS) - 1;

	/* Clear cmode-override, may be set from older driver */
	FUNC4(ppd->dd, FUNC1(ppd->hw_pidx), 5, 10, 0 << 14, 1 << 14);

	/* ensure no tx overrides from earlier driver loads */
	FUNC11(ppd, krp_tx_deemph_override,
		FUNC3(IBSD_TX_DEEMPHASIS_OVERRIDE_0,
		reset_tx_deemphasis_override));

	/* START OF LSI SUGGESTED SERDES BRINGUP */
	/* Reset - Calibration Setup */
	/*       Stop DFE adaptaion */
	FUNC5(ppd, 1, 0, FUNC0(9, 1));
	/*       Disable LE1 */
	FUNC5(ppd, 13, 0, FUNC0(5, 5));
	/*       Disable autoadapt for LE1 */
	FUNC5(ppd, 1, 0, FUNC0(15, 15));
	/*       Disable LE2 */
	FUNC5(ppd, 13, 0, FUNC0(6, 6));
	/*       Disable VGA */
	FUNC5(ppd, 5, 0, FUNC0(0, 0));
	/*       Disable AFE Offset Cancel */
	FUNC5(ppd, 12, 0, FUNC0(12, 12));
	/*       Disable Timing Loop */
	FUNC5(ppd, 2, 0, FUNC0(3, 3));
	/*       Disable Frequency Loop */
	FUNC5(ppd, 2, 0, FUNC0(4, 4));
	/*       Disable Baseline Wander Correction */
	FUNC5(ppd, 13, 0, FUNC0(13, 13));
	/*       Disable RX Calibration */
	FUNC5(ppd, 4, 0, FUNC0(10, 10));
	/*       Disable RX Offset Calibration */
	FUNC5(ppd, 12, 0, FUNC0(4, 4));
	/*       Select BB CDR */
	FUNC5(ppd, 2, (1 << 15), FUNC0(15, 15));
	/*       CDR Step Size */
	FUNC5(ppd, 5, 0, FUNC0(9, 8));
	/*       Enable phase Calibration */
	FUNC5(ppd, 12, (1 << 5), FUNC0(5, 5));
	/*       DFE Bandwidth [2:14-12] */
	FUNC5(ppd, 2, (4 << 12), FUNC0(14, 12));
	/*       DFE Config (4 taps only) */
	FUNC5(ppd, 16, 0, FUNC0(1, 0));
	/*       Gain Loop Bandwidth */
	if (!ppd->dd->cspec->r1) {
		FUNC5(ppd, 12, 1 << 12, FUNC0(12, 12));
		FUNC5(ppd, 12, 2 << 8, FUNC0(11, 8));
	} else {
		FUNC5(ppd, 19, (3 << 11), FUNC0(13, 11));
	}
	/*       Baseline Wander Correction Gain [13:4-0] (leave as default) */
	/*       Baseline Wander Correction Gain [3:7-5] (leave as default) */
	/*       Data Rate Select [5:7-6] (leave as default) */
	/*       RX Parallel Word Width [3:10-8] (leave as default) */

	/* RX REST */
	/*       Single- or Multi-channel reset */
	/*       RX Analog reset */
	/*       RX Digital reset */
	FUNC5(ppd, 0, 0, FUNC0(15, 13));
	FUNC9(20);
	/*       RX Analog reset */
	FUNC5(ppd, 0, (1 << 14), FUNC0(14, 14));
	FUNC9(20);
	/*       RX Digital reset */
	FUNC5(ppd, 0, (1 << 13), FUNC0(13, 13));
	FUNC9(20);

	/* setup LoS params; these are subsystem, so chan == 5 */
	/* LoS filter threshold_count on, ch 0-3, set to 8 */
	FUNC4(ppd->dd, FUNC1(ppd->hw_pidx), 5, 5, 8 << 11, FUNC0(14, 11));
	FUNC4(ppd->dd, FUNC1(ppd->hw_pidx), 5, 7, 8 << 4, FUNC0(7, 4));
	FUNC4(ppd->dd, FUNC1(ppd->hw_pidx), 5, 8, 8 << 11, FUNC0(14, 11));
	FUNC4(ppd->dd, FUNC1(ppd->hw_pidx), 5, 10, 8 << 4, FUNC0(7, 4));

	/* LoS filter threshold_count off, ch 0-3, set to 4 */
	FUNC4(ppd->dd, FUNC1(ppd->hw_pidx), 5, 6, 4 << 0, FUNC0(3, 0));
	FUNC4(ppd->dd, FUNC1(ppd->hw_pidx), 5, 7, 4 << 8, FUNC0(11, 8));
	FUNC4(ppd->dd, FUNC1(ppd->hw_pidx), 5, 9, 4 << 0, FUNC0(3, 0));
	FUNC4(ppd->dd, FUNC1(ppd->hw_pidx), 5, 10, 4 << 8, FUNC0(11, 8));

	/* LoS filter select enabled */
	FUNC4(ppd->dd, FUNC1(ppd->hw_pidx), 5, 9, 1 << 15, 1 << 15);

	/* LoS target data:  SDR=4, DDR=2, QDR=1 */
	FUNC5(ppd, 14, (1 << 3), FUNC0(5, 3)); /* QDR */
	FUNC5(ppd, 20, (2 << 10), FUNC0(12, 10)); /* DDR */
	FUNC5(ppd, 20, (4 << 13), FUNC0(15, 13)); /* SDR */

	/* Turn on LOS on initial SERDES init */
	FUNC12(ppd, 1);
	/* FLoop LOS gate: PPM filter  enabled */
	FUNC5(ppd, 38, 0 << 10, 1 << 10);

	/* RX LATCH CALIBRATION */
	/*       Enable Eyefinder Phase Calibration latch */
	FUNC5(ppd, 15, 1, FUNC0(0, 0));
	/*       Enable RX Offset Calibration latch */
	FUNC5(ppd, 12, (1 << 4), FUNC0(4, 4));
	FUNC9(20);
	/*       Start Calibration */
	FUNC5(ppd, 4, (1 << 10), FUNC0(10, 10));
	tend = jiffies + FUNC8(500);
	while (chan_done && !FUNC13(tend)) {
		FUNC9(20);
		for (chan = 0; chan < SERDES_CHANS; ++chan) {
			rxcaldone = FUNC4(ppd->dd, FUNC1(ppd->hw_pidx),
					    (chan + (chan >> 1)),
					    25, 0, 0);
			if ((~rxcaldone & (u32)FUNC0(9, 9)) == 0 &&
			    (~chan_done & (1 << chan)) == 0)
				chan_done &= ~(1 << chan);
		}
	}
	if (chan_done) {
		FUNC10("Serdes %d calibration not done after .5 sec: 0x%x\n",
			 FUNC1(ppd->hw_pidx), chan_done);
	} else {
		for (chan = 0; chan < SERDES_CHANS; ++chan) {
			rxcaldone = FUNC4(ppd->dd, FUNC1(ppd->hw_pidx),
					    (chan + (chan >> 1)),
					    25, 0, 0);
			if ((~rxcaldone & (u32)FUNC0(10, 10)) == 0)
				FUNC10("Serdes %d chan %d calibration failed\n",
					FUNC1(ppd->hw_pidx), chan);
		}
	}

	/*       Turn off Calibration */
	FUNC5(ppd, 4, 0, FUNC0(10, 10));
	FUNC9(20);

	/* BRING RX UP */
	/*       Set LE2 value (May be overridden in qsfp_7322_event) */
	le_val = FUNC2(ppd->dd) ? LE2_QME : LE2_DEFAULT;
	FUNC5(ppd, 13, (le_val << 7), FUNC0(9, 7));
	/*       Set LE2 Loop bandwidth */
	FUNC5(ppd, 3, (7 << 5), FUNC0(7, 5));
	/*       Enable LE2 */
	FUNC5(ppd, 13, (1 << 6), FUNC0(6, 6));
	FUNC9(20);
	/*       Enable H0 only */
	FUNC5(ppd, 1, 1, FUNC0(9, 1));
	/* gain hi stop 32 (22) (6:1) lo stop 7 (10:7) target 22 (13) (15:11) */
	le_val = (ppd->dd->cspec->r1 || FUNC2(ppd->dd)) ? 0xb6c0 : 0x6bac;
	FUNC5(ppd, 21, le_val, 0xfffe);
	/*       Enable VGA */
	FUNC5(ppd, 5, 0, FUNC0(0, 0));
	FUNC9(20);
	/*       Set Frequency Loop Bandwidth */
	FUNC5(ppd, 2, (15 << 5), FUNC0(8, 5));
	/*       Enable Frequency Loop */
	FUNC5(ppd, 2, (1 << 4), FUNC0(4, 4));
	/*       Set Timing Loop Bandwidth */
	FUNC5(ppd, 2, 0, FUNC0(11, 9));
	/*       Enable Timing Loop */
	FUNC5(ppd, 2, (1 << 3), FUNC0(3, 3));
	FUNC9(50);
	/*       Enable DFE
	 *       Set receive adaptation mode.  SDR and DDR adaptation are
	 *       always on, and QDR is initially enabled; later disabled.
	 */
	FUNC11(ppd, FUNC7(0), 0ULL);
	FUNC11(ppd, FUNC7(1), 0ULL);
	FUNC11(ppd, FUNC7(2),
			    ppd->dd->cspec->r1 ?
			    QDR_STATIC_ADAPT_DOWN_R1 : QDR_STATIC_ADAPT_DOWN);
	ppd->cpspec->qdr_dfe_on = 1;
	/*       Disable LE1  */
	FUNC5(ppd, 13, (0 << 5), (1 << 5));
	/*       Disable auto adapt for LE1 */
	FUNC5(ppd, 1, (0 << 15), FUNC0(15, 15));
	FUNC9(20);
	/*       Enable AFE Offset Cancel */
	FUNC5(ppd, 12, (1 << 12), FUNC0(12, 12));
	/*       Enable Baseline Wander Correction */
	FUNC5(ppd, 12, (1 << 13), FUNC0(13, 13));
	/* Termination: rxtermctrl_r2d addr 11 bits [12:11] = 1 */
	FUNC5(ppd, 11, (1 << 11), FUNC0(12, 11));
	/* VGA output common mode */
	FUNC5(ppd, 12, (3 << 2), FUNC0(3, 2));

	/*
	 * Initialize the Tx DDS tables.  Also done every QSFP event,
	 * for adapters with QSFP
	 */
	FUNC6(ppd, 0);

	return 0;
}