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
struct zpa2326_private {scalar_t__ irq; } ;
struct iio_dev {int dummy; } ;
typedef  enum iio_chan_type { ____Placeholder_iio_chan_type } iio_chan_type ;

/* Variables and functions */
 int IIO_PRESSURE ; 
 int FUNC0 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC1 (struct iio_dev*) ; 
 struct zpa2326_private* FUNC2 (struct iio_dev*) ; 
 int FUNC3 (struct iio_dev*,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct iio_dev*,scalar_t__) ; 
 int FUNC5 (struct iio_dev*,int,int*) ; 
 int FUNC6 (struct iio_dev*) ; 
 int FUNC7 (struct iio_dev*) ; 
 int FUNC8 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC9 (struct iio_dev*) ; 
 int FUNC10 (struct iio_dev*,struct zpa2326_private*) ; 

__attribute__((used)) static int FUNC11(struct iio_dev     *indio_dev,
				  enum iio_chan_type  type,
				  int                *value)
{
	int                     ret;
	struct zpa2326_private *priv;

	ret = FUNC0(indio_dev);
	if (ret)
		return ret;

	ret = FUNC7(indio_dev);
	if (ret < 0)
		goto release;

	priv = FUNC2(indio_dev);

	if (ret > 0) {
		/*
		 * We were already power supplied. Just clear hardware FIFO to
		 * get rid of samples acquired during previous rounds (if any).
		 * Sampling operation always generates both temperature and
		 * pressure samples. The latter are always enqueued into
		 * hardware FIFO. This may lead to situations were pressure
		 * samples still sit into FIFO when previous cycle(s) fetched
		 * temperature data only.
		 * Hence, we need to clear hardware FIFO content to prevent from
		 * getting outdated values at the end of current cycle.
		 */
		if (type == IIO_PRESSURE) {
			ret = FUNC3(indio_dev, 0);
			if (ret)
				goto suspend;
		}
	} else {
		/*
		 * We have just been power supplied, i.e. device is in default
		 * "out of reset" state, meaning we need to reconfigure it
		 * entirely.
		 */
		ret = FUNC4(indio_dev, priv->irq);
		if (ret)
			goto suspend;
	}

	/* Start a sampling cycle in oneshot mode. */
	ret = FUNC8(indio_dev);
	if (ret)
		goto suspend;

	/* Wait for sampling cycle to complete. */
	if (priv->irq > 0)
		ret = FUNC10(indio_dev, priv);
	else
		ret = FUNC6(indio_dev);

	if (ret)
		goto suspend;

	/* Retrieve raw sample value and convert it to CPU endianness. */
	ret = FUNC5(indio_dev, type, value);

suspend:
	FUNC9(indio_dev);
release:
	FUNC1(indio_dev);

	return ret;
}