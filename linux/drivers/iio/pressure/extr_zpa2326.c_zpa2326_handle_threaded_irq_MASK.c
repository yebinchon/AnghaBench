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
struct zpa2326_private {int /*<<< orphan*/  data_ready; int /*<<< orphan*/  trigger; int /*<<< orphan*/  result; int /*<<< orphan*/  regmap; } ;
struct iio_dev {int dummy; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  ENODATA ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  IRQ_NONE ; 
 unsigned int ZPA2326_INT_SOURCE_DATA_READY ; 
 int /*<<< orphan*/  ZPA2326_INT_SOURCE_REG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (struct iio_dev*) ; 
 struct zpa2326_private* FUNC2 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int*) ; 
 int /*<<< orphan*/  FUNC6 (struct iio_dev*,char*,unsigned int) ; 

__attribute__((used)) static irqreturn_t FUNC7(int irq, void *data)
{
	struct iio_dev         *indio_dev = data;
	struct zpa2326_private *priv = FUNC2(indio_dev);
	unsigned int            val;
	bool                    cont;
	irqreturn_t             ret = IRQ_NONE;

	/*
	 * Are we using our own internal trigger in triggered buffer mode, i.e.,
	 * currently working in continuous sampling mode ?
	 */
	cont = (FUNC1(indio_dev) &&
		FUNC4(indio_dev));

	/*
	 * Device works according to a level interrupt scheme: reading interrupt
	 * status de-asserts interrupt line.
	 */
	priv->result = FUNC5(priv->regmap, ZPA2326_INT_SOURCE_REG, &val);
	if (priv->result < 0) {
		if (cont)
			return IRQ_NONE;

		goto complete;
	}

	/* Data ready is the only interrupt source we requested. */
	if (!(val & ZPA2326_INT_SOURCE_DATA_READY)) {
		/*
		 * Interrupt happened but no new sample available: likely caused
		 * by spurious interrupts, in which case, returning IRQ_NONE
		 * allows to benefit from the generic spurious interrupts
		 * handling.
		 */
		FUNC6(indio_dev, "unexpected interrupt status %02x",
			     val);

		if (cont)
			return IRQ_NONE;

		priv->result = -ENODATA;
		goto complete;
	}

	/* New sample available: dispatch internal trigger consumers. */
	FUNC3(priv->trigger);

	if (cont)
		/*
		 * Internal hardware trigger has been scheduled above : it will
		 * fetch data on its own.
		 */
		return IRQ_HANDLED;

	ret = IRQ_HANDLED;

complete:
	/*
	 * Wake up direct or externaly triggered buffer mode waiters: see
	 * zpa2326_sample_oneshot() and zpa2326_trigger_handler().
	 */
	FUNC0(&priv->data_ready);

	return ret;
}