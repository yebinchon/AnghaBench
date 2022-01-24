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
typedef  int u8 ;
typedef  int u16 ;
struct opt3001 {int high_thresh_mantissa; int high_thresh_exp; int low_thresh_mantissa; int low_thresh_exp; int /*<<< orphan*/  lock; int /*<<< orphan*/  dev; int /*<<< orphan*/  client; } ;
struct iio_dev {int dummy; } ;
struct iio_chan_spec {int dummy; } ;
typedef  enum iio_event_type { ____Placeholder_iio_event_type } iio_event_type ;
typedef  enum iio_event_info { ____Placeholder_iio_event_info } iio_event_info ;
typedef  enum iio_event_direction { ____Placeholder_iio_event_direction } iio_event_direction ;

/* Variables and functions */
 int EINVAL ; 
#define  IIO_EV_DIR_FALLING 129 
#define  IIO_EV_DIR_RISING 128 
 int OPT3001_HIGH_LIMIT ; 
 int OPT3001_LOW_LIMIT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int,...) ; 
 int FUNC1 (int /*<<< orphan*/ ,int,int) ; 
 struct opt3001* FUNC2 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (struct opt3001*,int,int,int*) ; 

__attribute__((used)) static int FUNC6(struct iio_dev *iio,
		const struct iio_chan_spec *chan, enum iio_event_type type,
		enum iio_event_direction dir, enum iio_event_info info,
		int val, int val2)
{
	struct opt3001 *opt = FUNC2(iio);
	int ret;

	u16 mantissa;
	u16 value;
	u16 reg;

	u8 exponent;

	if (val < 0)
		return -EINVAL;

	FUNC3(&opt->lock);

	ret = FUNC5(opt, val, val2, &exponent);
	if (ret < 0) {
		FUNC0(opt->dev, "can't find scale for %d.%06u\n", val, val2);
		goto err;
	}

	mantissa = (((val * 1000) + (val2 / 1000)) / 10) >> exponent;
	value = (exponent << 12) | mantissa;

	switch (dir) {
	case IIO_EV_DIR_RISING:
		reg = OPT3001_HIGH_LIMIT;
		opt->high_thresh_mantissa = mantissa;
		opt->high_thresh_exp = exponent;
		break;
	case IIO_EV_DIR_FALLING:
		reg = OPT3001_LOW_LIMIT;
		opt->low_thresh_mantissa = mantissa;
		opt->low_thresh_exp = exponent;
		break;
	default:
		ret = -EINVAL;
		goto err;
	}

	ret = FUNC1(opt->client, reg, value);
	if (ret < 0) {
		FUNC0(opt->dev, "failed to write register %02x\n", reg);
		goto err;
	}

err:
	FUNC4(&opt->lock);

	return ret;
}