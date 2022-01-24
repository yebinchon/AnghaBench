#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct iio_dev {int dummy; } ;
struct iio_chan_spec {int address; } ;
struct ak8974 {TYPE_1__* i2c; int /*<<< orphan*/  lock; } ;
typedef  int /*<<< orphan*/  __le16 ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EINVAL ; 
 int EIO ; 
#define  IIO_CHAN_INFO_RAW 128 
 int IIO_VAL_INT ; 
 int FUNC0 (struct ak8974*,int /*<<< orphan*/ *) ; 
 int FUNC1 (struct ak8974*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 struct ak8974* FUNC3 (struct iio_dev*) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC10(struct iio_dev *indio_dev,
			   struct iio_chan_spec const *chan,
			   int *val, int *val2,
			   long mask)
{
	struct ak8974 *ak8974 = FUNC3(indio_dev);
	__le16 hw_values[3];
	int ret = -EINVAL;

	FUNC7(&ak8974->i2c->dev);
	FUNC5(&ak8974->lock);

	switch (mask) {
	case IIO_CHAN_INFO_RAW:
		if (chan->address > 2) {
			FUNC2(&ak8974->i2c->dev, "faulty channel address\n");
			ret = -EIO;
			goto out_unlock;
		}
		ret = FUNC1(ak8974);
		if (ret)
			goto out_unlock;
		ret = FUNC0(ak8974, hw_values);
		if (ret)
			goto out_unlock;

		/*
		 * We read all axes and discard all but one, for optimized
		 * reading, use the triggered buffer.
		 */
		*val = FUNC4(hw_values[chan->address]);

		ret = IIO_VAL_INT;
	}

 out_unlock:
	FUNC6(&ak8974->lock);
	FUNC8(&ak8974->i2c->dev);
	FUNC9(&ak8974->i2c->dev);

	return ret;
}