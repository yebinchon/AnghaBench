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
struct iio_poll_func {struct iio_dev* indio_dev; } ;
struct iio_dev {int /*<<< orphan*/  trig; } ;
struct TYPE_2__ {int /*<<< orphan*/  d32; } ;
struct ad7768_state {int /*<<< orphan*/  lock; TYPE_1__ data; int /*<<< orphan*/  spi; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  FUNC0 (struct iio_dev*) ; 
 struct ad7768_state* FUNC1 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC2 (struct iio_dev*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static irqreturn_t FUNC7(int irq, void *p)
{
	struct iio_poll_func *pf = p;
	struct iio_dev *indio_dev = pf->indio_dev;
	struct ad7768_state *st = FUNC1(indio_dev);
	int ret;

	FUNC4(&st->lock);

	ret = FUNC6(st->spi, &st->data.d32, 3);
	if (ret < 0)
		goto err_unlock;

	FUNC2(indio_dev, &st->data.d32,
					   FUNC0(indio_dev));

	FUNC3(indio_dev->trig);
err_unlock:
	FUNC5(&st->lock);

	return IRQ_HANDLED;
}