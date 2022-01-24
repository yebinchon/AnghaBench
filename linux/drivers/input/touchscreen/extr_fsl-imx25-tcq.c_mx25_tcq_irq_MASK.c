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
struct mx25_tcq_priv {int /*<<< orphan*/  regs; } ;
typedef  int irqreturn_t ;

/* Variables and functions */
 int IRQ_HANDLED ; 
 int IRQ_WAKE_THREAD ; 
 int /*<<< orphan*/  MX25_ADCQ_SR ; 
 int MX25_ADCQ_SR_FDRY ; 
 int MX25_ADCQ_SR_FOR ; 
 int MX25_ADCQ_SR_FRR ; 
 int MX25_ADCQ_SR_FUR ; 
 int MX25_ADCQ_SR_PD ; 
 int /*<<< orphan*/  FUNC0 (struct mx25_tcq_priv*) ; 
 int /*<<< orphan*/  FUNC1 (struct mx25_tcq_priv*) ; 
 int /*<<< orphan*/  FUNC2 (struct mx25_tcq_priv*) ; 
 int /*<<< orphan*/  FUNC3 (struct mx25_tcq_priv*) ; 
 int /*<<< orphan*/  FUNC4 (struct mx25_tcq_priv*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static irqreturn_t FUNC7(int irq, void *dev_id)
{
	struct mx25_tcq_priv *priv = dev_id;
	u32 stat;
	int ret = IRQ_HANDLED;

	FUNC5(priv->regs, MX25_ADCQ_SR, &stat);

	if (stat & (MX25_ADCQ_SR_FRR | MX25_ADCQ_SR_FUR | MX25_ADCQ_SR_FOR))
		FUNC4(priv);

	if (stat & MX25_ADCQ_SR_PD) {
		FUNC1(priv);
		FUNC3(priv);
		FUNC2(priv);
	}

	if (stat & MX25_ADCQ_SR_FDRY) {
		FUNC0(priv);
		ret = IRQ_WAKE_THREAD;
	}

	FUNC6(priv->regs, MX25_ADCQ_SR, MX25_ADCQ_SR_FRR |
			   MX25_ADCQ_SR_FUR | MX25_ADCQ_SR_FOR |
			   MX25_ADCQ_SR_PD,
			   MX25_ADCQ_SR_FRR | MX25_ADCQ_SR_FUR |
			   MX25_ADCQ_SR_FOR | MX25_ADCQ_SR_PD);

	return ret;
}