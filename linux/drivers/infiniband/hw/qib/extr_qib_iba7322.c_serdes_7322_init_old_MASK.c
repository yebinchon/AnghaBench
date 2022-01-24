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
struct qib_pportdata {TYPE_3__* dd; TYPE_1__* cpspec; int /*<<< orphan*/  hw_pidx; } ;
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
 unsigned long long FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*,int /*<<< orphan*/ ,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC5 (struct qib_pportdata*,int,int,int) ; 
 int /*<<< orphan*/  FUNC6 (struct qib_pportdata*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  krp_tx_deemph_override ; 
 int /*<<< orphan*/  FUNC8 (struct qib_pportdata*,int /*<<< orphan*/ ,unsigned long long) ; 
 int /*<<< orphan*/  reset_tx_deemphasis_override ; 
 int /*<<< orphan*/  FUNC9 (struct qib_pportdata*,int) ; 

__attribute__((used)) static int FUNC10(struct qib_pportdata *ppd)
{
	u32 le_val;

	/*
	 * Initialize the Tx DDS tables.  Also done every QSFP event,
	 * for adapters with QSFP
	 */
	FUNC6(ppd, 0);

	/* ensure no tx overrides from earlier driver loads */
	FUNC8(ppd, krp_tx_deemph_override,
		FUNC3(IBSD_TX_DEEMPHASIS_OVERRIDE_0,
		reset_tx_deemphasis_override));

	/* Patch some SerDes defaults to "Better for IB" */
	/* Timing Loop Bandwidth: cdr_timing[11:9] = 0 */
	FUNC5(ppd, 2, 0, FUNC0(11, 9));

	/* Termination: rxtermctrl_r2d addr 11 bits [12:11] = 1 */
	FUNC5(ppd, 11, (1 << 11), FUNC0(12, 11));
	/* Enable LE2: rxle2en_r2a addr 13 bit [6] = 1 */
	FUNC5(ppd, 13, (1 << 6), (1 << 6));

	/* May be overridden in qsfp_7322_event */
	le_val = FUNC2(ppd->dd) ? LE2_QME : LE2_DEFAULT;
	FUNC5(ppd, 13, (le_val << 7), FUNC0(9, 7));

	/* enable LE1 adaptation for all but QME, which is disabled */
	le_val = FUNC2(ppd->dd) ? 0 : 1;
	FUNC5(ppd, 13, (le_val << 5), (1 << 5));

	/* Clear cmode-override, may be set from older driver */
	FUNC4(ppd->dd, FUNC1(ppd->hw_pidx), 5, 10, 0 << 14, 1 << 14);

	/* Timing Recovery: rxtapsel addr 5 bits [9:8] = 0 */
	FUNC5(ppd, 5, (0 << 8), FUNC0(9, 8));

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

	FUNC9(ppd, 1);

	/* rxbistena; set 0 to avoid effects of it switch later */
	FUNC5(ppd, 9, 0 << 15, 1 << 15);

	/* Configure 4 DFE taps, and only they adapt */
	FUNC5(ppd, 16, 0 << 0, FUNC0(1, 0));

	/* gain hi stop 32 (22) (6:1) lo stop 7 (10:7) target 22 (13) (15:11) */
	le_val = (ppd->dd->cspec->r1 || FUNC2(ppd->dd)) ? 0xb6c0 : 0x6bac;
	FUNC5(ppd, 21, le_val, 0xfffe);

	/*
	 * Set receive adaptation mode.  SDR and DDR adaptation are
	 * always on, and QDR is initially enabled; later disabled.
	 */
	FUNC8(ppd, FUNC7(0), 0ULL);
	FUNC8(ppd, FUNC7(1), 0ULL);
	FUNC8(ppd, FUNC7(2),
			    ppd->dd->cspec->r1 ?
			    QDR_STATIC_ADAPT_DOWN_R1 : QDR_STATIC_ADAPT_DOWN);
	ppd->cpspec->qdr_dfe_on = 1;

	/* FLoop LOS gate: PPM filter  enabled */
	FUNC5(ppd, 38, 0 << 10, 1 << 10);

	/* rx offset center enabled */
	FUNC5(ppd, 12, 1 << 4, 1 << 4);

	if (!ppd->dd->cspec->r1) {
		FUNC5(ppd, 12, 1 << 12, 1 << 12);
		FUNC5(ppd, 12, 2 << 8, 0x0f << 8);
	}

	/* Set the frequency loop bandwidth to 15 */
	FUNC5(ppd, 2, 15 << 5, FUNC0(8, 5));

	return 0;
}