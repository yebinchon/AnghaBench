#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_4__ ;
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
struct TYPE_17__ {struct device_node* of_node; } ;
struct spi_device {TYPE_4__ dev; int /*<<< orphan*/  irq; } ;
struct TYPE_14__ {TYPE_4__* parent; } ;
struct iio_trigger {int /*<<< orphan*/ * ops; TYPE_1__ dev; } ;
struct TYPE_15__ {TYPE_4__* parent; } ;
struct iio_dev {TYPE_2__ dev; int /*<<< orphan*/  id; int /*<<< orphan*/  name; int /*<<< orphan*/ * info; int /*<<< orphan*/  modes; int /*<<< orphan*/  num_channels; int /*<<< orphan*/  channels; } ;
struct device_node {int dummy; } ;
struct as3935_state {scalar_t__ tune_cap; scalar_t__ nflwdth_reg; int /*<<< orphan*/  work; scalar_t__ noise_tripped; struct iio_trigger* trig; int /*<<< orphan*/  lock; struct spi_device* spi; } ;
struct TYPE_16__ {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ AS3935_NFLWDTH_MASK ; 
 int EINVAL ; 
 int ENOMEM ; 
 scalar_t__ HZ ; 
 int /*<<< orphan*/  INDIO_DIRECT_MODE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IRQF_TRIGGER_RISING ; 
 scalar_t__ MAX_PF_CAP ; 
 int /*<<< orphan*/  as3935_channels ; 
 int /*<<< orphan*/  as3935_event_work ; 
 int /*<<< orphan*/  as3935_info ; 
 int /*<<< orphan*/  as3935_interrupt_handler ; 
 int /*<<< orphan*/  as3935_stop_work ; 
 int /*<<< orphan*/  as3935_trigger_handler ; 
 int /*<<< orphan*/  FUNC2 (struct as3935_state*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_4__*,char*,scalar_t__) ; 
 int FUNC6 (TYPE_4__*,int /*<<< orphan*/ ,struct iio_dev*) ; 
 struct iio_dev* FUNC7 (TYPE_4__*,int) ; 
 int FUNC8 (TYPE_4__*,struct iio_dev*) ; 
 struct iio_trigger* FUNC9 (TYPE_4__*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC10 (TYPE_4__*,struct iio_trigger*) ; 
 int FUNC11 (TYPE_4__*,struct iio_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC12 (TYPE_4__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct iio_dev*) ; 
 int /*<<< orphan*/  iio_interrupt_trigger_ops ; 
 int /*<<< orphan*/  iio_pollfunc_store_time ; 
 struct as3935_state* FUNC13 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC14 (struct iio_trigger*,struct iio_dev*) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int FUNC16 (struct device_node*,char*,scalar_t__*) ; 
 TYPE_3__* FUNC17 (struct spi_device*) ; 
 int /*<<< orphan*/  FUNC18 (struct spi_device*,struct iio_dev*) ; 

__attribute__((used)) static int FUNC19(struct spi_device *spi)
{
	struct iio_dev *indio_dev;
	struct iio_trigger *trig;
	struct as3935_state *st;
	struct device_node *np = spi->dev.of_node;
	int ret;

	/* Be sure lightning event interrupt is specified */
	if (!spi->irq) {
		FUNC3(&spi->dev, "unable to get event interrupt\n");
		return -EINVAL;
	}

	indio_dev = FUNC7(&spi->dev, sizeof(*st));
	if (!indio_dev)
		return -ENOMEM;

	st = FUNC13(indio_dev);
	st->spi = spi;

	FUNC18(spi, indio_dev);
	FUNC15(&st->lock);

	ret = FUNC16(np,
			"ams,tuning-capacitor-pf", &st->tune_cap);
	if (ret) {
		st->tune_cap = 0;
		FUNC5(&spi->dev,
			"no tuning-capacitor-pf set, defaulting to %d",
			st->tune_cap);
	}

	if (st->tune_cap > MAX_PF_CAP) {
		FUNC3(&spi->dev,
			"wrong tuning-capacitor-pf setting of %d\n",
			st->tune_cap);
		return -EINVAL;
	}

	ret = FUNC16(np,
			"ams,nflwdth", &st->nflwdth_reg);
	if (!ret && st->nflwdth_reg > AS3935_NFLWDTH_MASK) {
		FUNC3(&spi->dev,
			"invalid nflwdth setting of %d\n",
			st->nflwdth_reg);
		return -EINVAL;
	}

	indio_dev->dev.parent = &spi->dev;
	indio_dev->name = FUNC17(spi)->name;
	indio_dev->channels = as3935_channels;
	indio_dev->num_channels = FUNC0(as3935_channels);
	indio_dev->modes = INDIO_DIRECT_MODE;
	indio_dev->info = &as3935_info;

	trig = FUNC9(&spi->dev, "%s-dev%d",
				      indio_dev->name, indio_dev->id);

	if (!trig)
		return -ENOMEM;

	st->trig = trig;
	st->noise_tripped = jiffies - HZ;
	trig->dev.parent = indio_dev->dev.parent;
	FUNC14(trig, indio_dev);
	trig->ops = &iio_interrupt_trigger_ops;

	ret = FUNC10(&spi->dev, trig);
	if (ret) {
		FUNC3(&spi->dev, "failed to register trigger\n");
		return ret;
	}

	ret = FUNC11(&spi->dev, indio_dev,
					      iio_pollfunc_store_time,
					      as3935_trigger_handler, NULL);

	if (ret) {
		FUNC3(&spi->dev, "cannot setup iio trigger\n");
		return ret;
	}

	FUNC2(st);

	FUNC1(&st->work, as3935_event_work);
	ret = FUNC6(&spi->dev, as3935_stop_work, indio_dev);
	if (ret)
		return ret;

	ret = FUNC12(&spi->dev, spi->irq,
				&as3935_interrupt_handler,
				IRQF_TRIGGER_RISING,
				FUNC4(&spi->dev),
				indio_dev);

	if (ret) {
		FUNC3(&spi->dev, "unable to request irq\n");
		return ret;
	}

	ret = FUNC8(&spi->dev, indio_dev);
	if (ret < 0) {
		FUNC3(&spi->dev, "unable to register device\n");
		return ret;
	}
	return 0;
}