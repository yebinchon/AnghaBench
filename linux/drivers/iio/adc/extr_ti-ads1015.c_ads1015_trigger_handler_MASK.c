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
struct iio_poll_func {struct iio_dev* indio_dev; } ;
struct iio_dev {int /*<<< orphan*/  trig; int /*<<< orphan*/  masklength; int /*<<< orphan*/  active_scan_mask; } ;
struct ads1015_data {int /*<<< orphan*/  lock; } ;
typedef  int s16 ;
typedef  int /*<<< orphan*/  irqreturn_t ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int FUNC0 (struct ads1015_data*,int,int*) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct iio_dev*) ; 
 struct ads1015_data* FUNC3 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC4 (struct iio_dev*,int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static irqreturn_t FUNC9(int irq, void *p)
{
	struct iio_poll_func *pf = p;
	struct iio_dev *indio_dev = pf->indio_dev;
	struct ads1015_data *data = FUNC3(indio_dev);
	s16 buf[8]; /* 1x s16 ADC val + 3x s16 padding +  4x s16 timestamp */
	int chan, ret, res;

	FUNC6(buf, 0, sizeof(buf));

	FUNC7(&data->lock);
	chan = FUNC1(indio_dev->active_scan_mask,
			      indio_dev->masklength);
	ret = FUNC0(data, chan, &res);
	if (ret < 0) {
		FUNC8(&data->lock);
		goto err;
	}

	buf[0] = res;
	FUNC8(&data->lock);

	FUNC4(indio_dev, buf,
					   FUNC2(indio_dev));

err:
	FUNC5(indio_dev->trig);

	return IRQ_HANDLED;
}