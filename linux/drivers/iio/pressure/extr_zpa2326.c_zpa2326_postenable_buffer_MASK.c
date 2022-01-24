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
struct zpa2326_private {int /*<<< orphan*/  irq; scalar_t__ waken; } ;
struct iio_dev {int dummy; } ;

/* Variables and functions */
 struct zpa2326_private* FUNC0 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC1 (struct iio_dev*) ; 
 int FUNC2 (struct iio_dev*) ; 
 int FUNC3 (struct iio_dev*,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct iio_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct iio_dev*,char*,int) ; 

__attribute__((used)) static int FUNC6(struct iio_dev *indio_dev)
{
	const struct zpa2326_private *priv = FUNC0(indio_dev);
	int                           err;

	if (!priv->waken) {
		/*
		 * We were already power supplied. Just clear hardware FIFO to
		 * get rid of samples acquired during previous rounds (if any).
		 */
		err = FUNC3(indio_dev, 0);
		if (err)
			goto err;
	}

	if (!FUNC1(indio_dev) && priv->waken) {
		/*
		 * We are using an external trigger and we have just been
		 * powered up: reconfigure one-shot mode.
		 */
		err = FUNC4(indio_dev, priv->irq);
		if (err)
			goto err;
	}

	/* Plug our own trigger event handler. */
	err = FUNC2(indio_dev);
	if (err)
		goto err;

	return 0;

err:
	FUNC5(indio_dev, "failed to enable buffering (%d)", err);

	return err;
}