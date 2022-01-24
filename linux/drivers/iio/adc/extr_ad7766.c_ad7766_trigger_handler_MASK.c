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
struct iio_poll_func {int /*<<< orphan*/  timestamp; struct iio_dev* indio_dev; } ;
struct iio_dev {int /*<<< orphan*/  trig; } ;
struct ad7766 {int /*<<< orphan*/  data; int /*<<< orphan*/  msg; int /*<<< orphan*/  spi; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 struct ad7766* FUNC0 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC1 (struct iio_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static irqreturn_t FUNC4(int irq, void *p)
{
	struct iio_poll_func *pf = p;
	struct iio_dev *indio_dev = pf->indio_dev;
	struct ad7766 *ad7766 = FUNC0(indio_dev);
	int ret;

	ret = FUNC3(ad7766->spi, &ad7766->msg);
	if (ret < 0)
		goto done;

	FUNC1(indio_dev, ad7766->data,
		pf->timestamp);
done:
	FUNC2(indio_dev->trig);

	return IRQ_HANDLED;
}