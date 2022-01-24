#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct zpa2326_private {TYPE_1__* frequency; } ;
struct iio_dev {int dummy; } ;
struct TYPE_3__ {int hz; } ;

/* Variables and functions */
 int FUNC0 (TYPE_1__*) ; 
 int EINVAL ; 
 int FUNC1 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC2 (struct iio_dev*) ; 
 struct zpa2326_private* FUNC3 (struct iio_dev*) ; 
 TYPE_1__* zpa2326_sampling_frequencies ; 

__attribute__((used)) static int FUNC4(struct iio_dev *indio_dev, int hz)
{
	struct zpa2326_private *priv = FUNC3(indio_dev);
	int                     freq;
	int                     err;

	/* Check if requested frequency is supported. */
	for (freq = 0; freq < FUNC0(zpa2326_sampling_frequencies); freq++)
		if (zpa2326_sampling_frequencies[freq].hz == hz)
			break;
	if (freq == FUNC0(zpa2326_sampling_frequencies))
		return -EINVAL;

	/* Don't allow changing frequency if buffered sampling is ongoing. */
	err = FUNC1(indio_dev);
	if (err)
		return err;

	priv->frequency = &zpa2326_sampling_frequencies[freq];

	FUNC2(indio_dev);

	return 0;
}