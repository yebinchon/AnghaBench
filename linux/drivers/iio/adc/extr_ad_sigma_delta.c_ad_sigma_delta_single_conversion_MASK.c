#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct iio_dev {int /*<<< orphan*/  mlock; } ;
struct TYPE_6__ {int realbits; int shift; } ;
struct iio_chan_spec {TYPE_3__ scan_type; int /*<<< orphan*/  address; } ;
struct ad_sigma_delta {int bus_locked; int keep_cs_asserted; int irq_dis; TYPE_2__* spi; TYPE_1__* info; int /*<<< orphan*/  completion; } ;
struct TYPE_5__ {int /*<<< orphan*/  master; int /*<<< orphan*/  irq; } ;
struct TYPE_4__ {unsigned int data_reg; } ;

/* Variables and functions */
 int /*<<< orphan*/  AD_SD_MODE_IDLE ; 
 int /*<<< orphan*/  AD_SD_MODE_SINGLE ; 
 unsigned int AD_SD_REG_DATA ; 
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 int EBUSY ; 
 int EIO ; 
 int /*<<< orphan*/  HZ ; 
 int IIO_VAL_INT ; 
 int FUNC1 (struct ad_sigma_delta*,unsigned int,int /*<<< orphan*/ ,unsigned int*) ; 
 int FUNC2 (struct ad_sigma_delta*,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (struct ad_sigma_delta*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct ad_sigma_delta*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (struct iio_dev*) ; 
 struct ad_sigma_delta* FUNC8 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

int FUNC15(struct iio_dev *indio_dev,
	const struct iio_chan_spec *chan, int *val)
{
	struct ad_sigma_delta *sigma_delta = FUNC8(indio_dev);
	unsigned int sample, raw_sample;
	unsigned int data_reg;
	int ret = 0;

	if (FUNC7(indio_dev))
		return -EBUSY;

	FUNC9(&indio_dev->mlock);
	FUNC3(sigma_delta, chan->address);

	FUNC12(sigma_delta->spi->master);
	sigma_delta->bus_locked = true;
	sigma_delta->keep_cs_asserted = true;
	FUNC11(&sigma_delta->completion);

	FUNC4(sigma_delta, AD_SD_MODE_SINGLE);

	sigma_delta->irq_dis = false;
	FUNC6(sigma_delta->spi->irq);
	ret = FUNC14(
			&sigma_delta->completion, HZ);

	if (ret == 0)
		ret = -EIO;
	if (ret < 0)
		goto out;

	if (sigma_delta->info->data_reg != 0)
		data_reg = sigma_delta->info->data_reg;
	else
		data_reg = AD_SD_REG_DATA;

	ret = FUNC1(sigma_delta, data_reg,
		FUNC0(chan->scan_type.realbits + chan->scan_type.shift, 8),
		&raw_sample);

out:
	if (!sigma_delta->irq_dis) {
		FUNC5(sigma_delta->spi->irq);
		sigma_delta->irq_dis = true;
	}

	sigma_delta->keep_cs_asserted = false;
	FUNC4(sigma_delta, AD_SD_MODE_IDLE);
	sigma_delta->bus_locked = false;
	FUNC13(sigma_delta->spi->master);
	FUNC10(&indio_dev->mlock);

	if (ret)
		return ret;

	sample = raw_sample >> chan->scan_type.shift;
	sample &= (1 << chan->scan_type.realbits) - 1;
	*val = sample;

	ret = FUNC2(sigma_delta, raw_sample);
	if (ret)
		return ret;

	return IIO_VAL_INT;
}