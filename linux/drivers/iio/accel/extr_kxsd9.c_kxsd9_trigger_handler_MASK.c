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
struct kxsd9_state {int /*<<< orphan*/  dev; int /*<<< orphan*/  map; } ;
struct iio_poll_func {struct iio_dev* indio_dev; } ;
struct iio_dev {int /*<<< orphan*/  trig; } ;
typedef  int irqreturn_t ;
typedef  int /*<<< orphan*/  __be16 ;

/* Variables and functions */
 int IRQ_HANDLED ; 
 int /*<<< orphan*/  KXSD9_REG_X ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct iio_dev*) ; 
 struct kxsd9_state* FUNC2 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC3 (struct iio_dev*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ **,int) ; 

__attribute__((used)) static irqreturn_t FUNC6(int irq, void *p)
{
	const struct iio_poll_func *pf = p;
	struct iio_dev *indio_dev = pf->indio_dev;
	struct kxsd9_state *st = FUNC2(indio_dev);
	int ret;
	/* 4 * 16bit values AND timestamp */
	__be16 hw_values[8];

	ret = FUNC5(st->map,
			       KXSD9_REG_X,
			       &hw_values,
			       8);
	if (ret) {
		FUNC0(st->dev,
			"error reading data\n");
		return ret;
	}

	FUNC3(indio_dev,
					   hw_values,
					   FUNC1(indio_dev));
	FUNC4(indio_dev->trig);

	return IRQ_HANDLED;
}