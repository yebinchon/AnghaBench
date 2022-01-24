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
struct iio_dev {int /*<<< orphan*/  trig; } ;
struct as3935_state {int* buffer; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  AS3935_DATA ; 
 int AS3935_DATA_MASK ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int FUNC0 (struct as3935_state*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC1 (struct iio_dev*) ; 
 struct as3935_state* FUNC2 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC3 (struct iio_dev*,int**,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static irqreturn_t FUNC5(int irq, void *private)
{
	struct iio_poll_func *pf = private;
	struct iio_dev *indio_dev = pf->indio_dev;
	struct as3935_state *st = FUNC2(indio_dev);
	int val, ret;

	ret = FUNC0(st, AS3935_DATA, &val);
	if (ret)
		goto err_read;

	st->buffer[0] = val & AS3935_DATA_MASK;
	FUNC3(indio_dev, &st->buffer,
					   FUNC1(indio_dev));
err_read:
	FUNC4(indio_dev->trig);

	return IRQ_HANDLED;
}