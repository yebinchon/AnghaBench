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
struct zpa2326_private {scalar_t__ irq; int /*<<< orphan*/  timestamp; } ;
struct iio_poll_func {struct iio_dev* indio_dev; } ;
struct iio_dev {int /*<<< orphan*/  trig; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  FUNC0 (struct iio_dev*) ; 
 struct zpa2326_private* FUNC1 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC4 (struct iio_dev*,struct zpa2326_private*) ; 
 scalar_t__ FUNC5 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC6 (struct iio_dev*) ; 
 scalar_t__ FUNC7 (struct iio_dev*) ; 
 scalar_t__ FUNC8 (struct iio_dev*,struct zpa2326_private*) ; 

__attribute__((used)) static irqreturn_t FUNC9(int irq, void *data)
{
	struct iio_dev         *indio_dev = ((struct iio_poll_func *)
					     data)->indio_dev;
	struct zpa2326_private *priv = FUNC1(indio_dev);
	bool                    cont;

	/*
	 * We have been dispatched, meaning we are in triggered buffer mode.
	 * Using our own internal trigger implies we are currently in continuous
	 * hardware sampling mode.
	 */
	cont = FUNC3(indio_dev);

	if (!cont) {
		/* On demand sampling : start a one shot cycle. */
		if (FUNC7(indio_dev))
			goto out;

		/* Wait for sampling cycle to complete. */
		if (priv->irq <= 0) {
			/* No interrupt available: poll for completion. */
			if (FUNC5(indio_dev))
				goto out;

			/* Only timestamp sample once it is ready. */
			priv->timestamp = FUNC0(indio_dev);
		} else {
			/* Interrupt handlers will timestamp for us. */
			if (FUNC8(indio_dev, priv))
				goto out;
		}
	}

	/* Enqueue to IIO buffer / userspace. */
	FUNC4(indio_dev, priv);

out:
	if (!cont)
		/* Don't switch to low power if sampling continuously. */
		FUNC6(indio_dev);

	/* Inform attached trigger we are done. */
	FUNC2(indio_dev->trig);

	return IRQ_HANDLED;
}