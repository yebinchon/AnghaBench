#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct iio_dev {int /*<<< orphan*/  trig; int /*<<< orphan*/  name; int /*<<< orphan*/  id; } ;
struct adis {TYPE_3__* trig; TYPE_2__* spi; } ;
struct TYPE_10__ {int /*<<< orphan*/ * parent; } ;
struct TYPE_12__ {int /*<<< orphan*/ * ops; TYPE_1__ dev; } ;
struct TYPE_11__ {int /*<<< orphan*/  irq; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  IRQF_TRIGGER_RISING ; 
 int /*<<< orphan*/  adis_trigger_ops ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,TYPE_3__*) ; 
 TYPE_3__* FUNC1 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*) ; 
 int /*<<< orphan*/  iio_trigger_generic_data_rdy_poll ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*) ; 
 int FUNC4 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*,struct adis*) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_3__*) ; 

int FUNC7(struct adis *adis, struct iio_dev *indio_dev)
{
	int ret;

	adis->trig = FUNC1("%s-dev%d", indio_dev->name,
					indio_dev->id);
	if (adis->trig == NULL)
		return -ENOMEM;

	adis->trig->dev.parent = &adis->spi->dev;
	adis->trig->ops = &adis_trigger_ops;
	FUNC5(adis->trig, adis);

	ret = FUNC6(adis->spi->irq,
			  &iio_trigger_generic_data_rdy_poll,
			  IRQF_TRIGGER_RISING,
			  indio_dev->name,
			  adis->trig);
	if (ret)
		goto error_free_trig;

	ret = FUNC4(adis->trig);

	indio_dev->trig = FUNC3(adis->trig);
	if (ret)
		goto error_free_irq;

	return 0;

error_free_irq:
	FUNC0(adis->spi->irq, adis->trig);
error_free_trig:
	FUNC2(adis->trig);
	return ret;
}