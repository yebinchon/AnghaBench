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
struct kxsd9_state {int /*<<< orphan*/  dev; } ;
struct iio_dev {int dummy; } ;
struct iio_chan_spec {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 long IIO_CHAN_INFO_SCALE ; 
 struct kxsd9_state* FUNC0 (struct iio_dev*) ; 
 int FUNC1 (struct iio_dev*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct iio_dev *indio_dev,
			   struct iio_chan_spec const *chan,
			   int val,
			   int val2,
			   long mask)
{
	int ret = -EINVAL;
	struct kxsd9_state *st = FUNC0(indio_dev);

	FUNC2(st->dev);

	if (mask == IIO_CHAN_INFO_SCALE) {
		/* Check no integer component */
		if (val)
			return -EINVAL;
		ret = FUNC1(indio_dev, val2);
	}

	FUNC3(st->dev);
	FUNC4(st->dev);

	return ret;
}