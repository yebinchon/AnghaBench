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
struct mcp3911 {int /*<<< orphan*/  lock; int /*<<< orphan*/  vref; } ;
struct TYPE_2__ {int /*<<< orphan*/  parent; } ;
struct iio_dev {TYPE_1__ dev; } ;
struct iio_chan_spec {int /*<<< orphan*/  channel; } ;

/* Variables and functions */
 int EINVAL ; 
#define  IIO_CHAN_INFO_OFFSET 130 
#define  IIO_CHAN_INFO_RAW 129 
#define  IIO_CHAN_INFO_SCALE 128 
 int IIO_VAL_FRACTIONAL_LOG2 ; 
 int IIO_VAL_INT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int MCP3911_INT_VREF_UV ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int) ; 
 struct mcp3911* FUNC3 (struct iio_dev*) ; 
 int FUNC4 (struct mcp3911*,int /*<<< orphan*/ ,int*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(struct iio_dev *indio_dev,
			    struct iio_chan_spec const *channel, int *val,
			    int *val2, long mask)
{
	struct mcp3911 *adc = FUNC3(indio_dev);
	int ret = -EINVAL;

	FUNC5(&adc->lock);
	switch (mask) {
	case IIO_CHAN_INFO_RAW:
		ret = FUNC4(adc,
				   FUNC0(channel->channel), val, 3);
		if (ret)
			goto out;

		ret = IIO_VAL_INT;
		break;

	case IIO_CHAN_INFO_OFFSET:
		ret = FUNC4(adc,
				   FUNC1(channel->channel), val, 3);
		if (ret)
			goto out;

		ret = IIO_VAL_INT;
		break;

	case IIO_CHAN_INFO_SCALE:
		if (adc->vref) {
			ret = FUNC7(adc->vref);
			if (ret < 0) {
				FUNC2(indio_dev->dev.parent,
					"failed to get vref voltage: %d\n",
				       ret);
				goto out;
			}

			*val = ret / 1000;
		} else {
			*val = MCP3911_INT_VREF_UV;
		}

		*val2 = 24;
		ret = IIO_VAL_FRACTIONAL_LOG2;
		break;
	}

out:
	FUNC6(&adc->lock);
	return ret;
}