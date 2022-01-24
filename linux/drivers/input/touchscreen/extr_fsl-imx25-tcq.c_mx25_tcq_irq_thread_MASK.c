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
typedef  int /*<<< orphan*/  u32 ;
struct mx25_tcq_priv {unsigned int sample_count; int /*<<< orphan*/  regs; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  MX25_ADCQ_FIFO ; 
 int /*<<< orphan*/  MX25_ADCQ_SR ; 
 unsigned int FUNC0 (int /*<<< orphan*/ ) ; 
 int TSC_MAX_SAMPLES ; 
 int /*<<< orphan*/  FUNC1 (struct mx25_tcq_priv*,int /*<<< orphan*/ *,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static irqreturn_t FUNC3(int irq, void *dev_id)
{
	struct mx25_tcq_priv *priv = dev_id;
	u32 sample_buf[TSC_MAX_SAMPLES];
	unsigned int samples;
	u32 stats;
	unsigned int i;

	/*
	 * Check how many samples are available. We always have to read exactly
	 * sample_count samples from the fifo, or a multiple of sample_count.
	 * Otherwise we mixup samples into different touch events.
	 */
	FUNC2(priv->regs, MX25_ADCQ_SR, &stats);
	samples = FUNC0(stats);
	samples -= samples % priv->sample_count;

	if (!samples)
		return IRQ_HANDLED;

	for (i = 0; i != samples; ++i)
		FUNC2(priv->regs, MX25_ADCQ_FIFO, &sample_buf[i]);

	FUNC1(priv, sample_buf, samples);

	return IRQ_HANDLED;
}