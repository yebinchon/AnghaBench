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
struct mx25_gcq_priv {int /*<<< orphan*/  regs; int /*<<< orphan*/  completed; } ;
struct iio_chan_spec {int /*<<< orphan*/  channel; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int ETIMEDOUT ; 
 int IIO_VAL_INT ; 
 int /*<<< orphan*/  MX25_ADCQ_CR ; 
 int /*<<< orphan*/  MX25_ADCQ_CR_FQS ; 
 int /*<<< orphan*/  MX25_ADCQ_FIFO ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MX25_ADCQ_ITEM_7_0 ; 
 int /*<<< orphan*/  MX25_ADCQ_MR ; 
 int /*<<< orphan*/  MX25_ADCQ_MR_EOQ_IRQ ; 
 int /*<<< orphan*/  MX25_GCQ_TIMEOUT ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 long FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct device *dev,
				  struct iio_chan_spec const *chan,
				  struct mx25_gcq_priv *priv,
				  int *val)
{
	long timeout;
	u32 data;

	/* Setup the configuration we want to use */
	FUNC5(priv->regs, MX25_ADCQ_ITEM_7_0,
		     FUNC1(0, chan->channel));

	FUNC4(priv->regs, MX25_ADCQ_MR, MX25_ADCQ_MR_EOQ_IRQ, 0);

	/* Trigger queue for one run */
	FUNC4(priv->regs, MX25_ADCQ_CR, MX25_ADCQ_CR_FQS,
			   MX25_ADCQ_CR_FQS);

	timeout = FUNC6(
		&priv->completed, MX25_GCQ_TIMEOUT);
	if (timeout < 0) {
		FUNC2(dev, "ADC wait for measurement failed\n");
		return timeout;
	} else if (timeout == 0) {
		FUNC2(dev, "ADC timed out\n");
		return -ETIMEDOUT;
	}

	FUNC3(priv->regs, MX25_ADCQ_FIFO, &data);

	*val = FUNC0(data);

	return IIO_VAL_INT;
}