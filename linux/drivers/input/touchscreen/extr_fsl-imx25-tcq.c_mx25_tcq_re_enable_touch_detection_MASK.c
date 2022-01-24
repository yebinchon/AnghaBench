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
struct mx25_tcq_priv {int /*<<< orphan*/  regs; int /*<<< orphan*/  core_regs; } ;

/* Variables and functions */
 int MX25_ADCQ_CFG_IGS ; 
 int /*<<< orphan*/  MX25_ADCQ_MR ; 
 int /*<<< orphan*/  MX25_ADCQ_MR_PD_IRQ ; 
 int /*<<< orphan*/  MX25_ADCQ_SR ; 
 int /*<<< orphan*/  MX25_ADCQ_SR_PD ; 
 int MX25_PRECHARGE_VALUE ; 
 int MX25_TOUCH_DETECT_VALUE ; 
 int /*<<< orphan*/  MX25_TSC_TICR ; 
 int /*<<< orphan*/  FUNC0 (struct mx25_tcq_priv*) ; 
 int /*<<< orphan*/  FUNC1 (struct mx25_tcq_priv*) ; 
 int /*<<< orphan*/  FUNC2 (struct mx25_tcq_priv*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC5(struct mx25_tcq_priv *priv)
{
	/* stop the queue from looping */
	FUNC2(priv);

	/* for a clean touch detection, preload the X plane */
	FUNC4(priv->core_regs, MX25_TSC_TICR, MX25_PRECHARGE_VALUE);

	/* waste some time now to pre-load the X plate to high voltage */
	FUNC1(priv);

	/* re-enable the detection right now */
	FUNC4(priv->core_regs, MX25_TSC_TICR,
		     MX25_TOUCH_DETECT_VALUE | MX25_ADCQ_CFG_IGS);

	FUNC3(priv->regs, MX25_ADCQ_SR, MX25_ADCQ_SR_PD,
			   MX25_ADCQ_SR_PD);

	/* enable the pen down event to be a source for the interrupt */
	FUNC3(priv->regs, MX25_ADCQ_MR, MX25_ADCQ_MR_PD_IRQ, 0);

	/* lets fire the next IRQ if someone touches the touchscreen */
	FUNC0(priv);
}