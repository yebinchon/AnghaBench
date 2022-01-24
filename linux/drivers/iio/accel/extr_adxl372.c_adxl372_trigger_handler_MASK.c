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
typedef  int /*<<< orphan*/  u8 ;
typedef  int u16 ;
struct iio_poll_func {struct iio_dev* indio_dev; } ;
struct iio_dev {int /*<<< orphan*/  trig; } ;
struct adxl372_state {scalar_t__ fifo_mode; int /*<<< orphan*/ * fifo_buf; scalar_t__ fifo_set_size; int /*<<< orphan*/  regmap; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 scalar_t__ ADXL372_FIFO_BYPASSED ; 
 int /*<<< orphan*/  ADXL372_FIFO_DATA ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int FUNC1 (struct adxl372_state*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int*) ; 
 struct adxl372_state* FUNC2 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC3 (struct iio_dev*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static irqreturn_t FUNC6(int irq, void  *p)
{
	struct iio_poll_func *pf = p;
	struct iio_dev *indio_dev = pf->indio_dev;
	struct adxl372_state *st = FUNC2(indio_dev);
	u8 status1, status2;
	u16 fifo_entries;
	int i, ret;

	ret = FUNC1(st, &status1, &status2, &fifo_entries);
	if (ret < 0)
		goto err;

	if (st->fifo_mode != ADXL372_FIFO_BYPASSED &&
	    FUNC0(status1)) {
		/*
		 * When reading data from multiple axes from the FIFO,
		 * to ensure that data is not overwritten and stored out
		 * of order at least one sample set must be left in the
		 * FIFO after every read.
		 */
		fifo_entries -= st->fifo_set_size;

		/* Read data from the FIFO */
		ret = FUNC5(st->regmap, ADXL372_FIFO_DATA,
					st->fifo_buf,
					fifo_entries * sizeof(u16));
		if (ret < 0)
			goto err;

		/* Each sample is 2 bytes */
		for (i = 0; i < fifo_entries; i += st->fifo_set_size)
			FUNC3(indio_dev, &st->fifo_buf[i]);
	}
err:
	FUNC4(indio_dev->trig);
	return IRQ_HANDLED;
}