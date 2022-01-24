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
struct ad7606_state {int /*<<< orphan*/  lock; int /*<<< orphan*/  gpio_convst; int /*<<< orphan*/  data; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int FUNC0 (struct ad7606_state*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct iio_dev*) ; 
 struct ad7606_state* FUNC3 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC4 (struct iio_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static irqreturn_t FUNC8(int irq, void *p)
{
	struct iio_poll_func *pf = p;
	struct iio_dev *indio_dev = pf->indio_dev;
	struct ad7606_state *st = FUNC3(indio_dev);
	int ret;

	FUNC6(&st->lock);

	ret = FUNC0(st);
	if (ret == 0)
		FUNC4(indio_dev, st->data,
						   FUNC2(indio_dev));

	FUNC5(indio_dev->trig);
	/* The rising edge of the CONVST signal starts a new conversion. */
	FUNC1(st->gpio_convst, 1);

	FUNC7(&st->lock);

	return IRQ_HANDLED;
}