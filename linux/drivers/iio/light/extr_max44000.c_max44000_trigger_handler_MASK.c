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
typedef  int u16 ;
struct max44000_data {int /*<<< orphan*/  lock; int /*<<< orphan*/  regmap; } ;
struct iio_poll_func {struct iio_dev* indio_dev; } ;
struct iio_dev {int /*<<< orphan*/  trig; int /*<<< orphan*/  active_scan_mask; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  MAX44000_REG_PRX_DATA ; 
 int /*<<< orphan*/  MAX44000_SCAN_INDEX_ALS ; 
 int /*<<< orphan*/  MAX44000_SCAN_INDEX_PRX ; 
 int /*<<< orphan*/  FUNC0 (struct iio_dev*) ; 
 struct max44000_data* FUNC1 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC2 (struct iio_dev*,int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (struct max44000_data*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int*) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static irqreturn_t FUNC9(int irq, void *p)
{
	struct iio_poll_func *pf = p;
	struct iio_dev *indio_dev = pf->indio_dev;
	struct max44000_data *data = FUNC1(indio_dev);
	u16 buf[8]; /* 2x u16 + padding + 8 bytes timestamp */
	int index = 0;
	unsigned int regval;
	int ret;

	FUNC5(&data->lock);
	if (FUNC8(MAX44000_SCAN_INDEX_ALS, indio_dev->active_scan_mask)) {
		ret = FUNC4(data);
		if (ret < 0)
			goto out_unlock;
		buf[index++] = ret;
	}
	if (FUNC8(MAX44000_SCAN_INDEX_PRX, indio_dev->active_scan_mask)) {
		ret = FUNC7(data->regmap, MAX44000_REG_PRX_DATA, &regval);
		if (ret < 0)
			goto out_unlock;
		buf[index] = regval;
	}
	FUNC6(&data->lock);

	FUNC2(indio_dev, buf,
					   FUNC0(indio_dev));
	FUNC3(indio_dev->trig);
	return IRQ_HANDLED;

out_unlock:
	FUNC6(&data->lock);
	FUNC3(indio_dev->trig);
	return IRQ_HANDLED;
}