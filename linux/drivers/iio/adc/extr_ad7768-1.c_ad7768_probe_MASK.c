#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct spi_device {int /*<<< orphan*/  dev; int /*<<< orphan*/  irq; } ;
struct TYPE_8__ {int /*<<< orphan*/ * parent; } ;
struct iio_dev {int modes; int /*<<< orphan*/  name; int /*<<< orphan*/  trig; int /*<<< orphan*/  id; int /*<<< orphan*/ * info; TYPE_1__ dev; int /*<<< orphan*/  num_channels; int /*<<< orphan*/  channels; } ;
struct ad7768_state {int /*<<< orphan*/  completion; TYPE_4__* trig; int /*<<< orphan*/  lock; int /*<<< orphan*/  mclk; int /*<<< orphan*/  mclk_freq; int /*<<< orphan*/  vref; struct spi_device* spi; } ;
struct TYPE_9__ {int /*<<< orphan*/ * parent; } ;
struct TYPE_11__ {TYPE_2__ dev; int /*<<< orphan*/ * ops; } ;
struct TYPE_10__ {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int ENOMEM ; 
 int INDIO_BUFFER_TRIGGERED ; 
 int INDIO_DIRECT_MODE ; 
 int IRQF_ONESHOT ; 
 int IRQF_TRIGGER_RISING ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ad7768_buffer_ops ; 
 int /*<<< orphan*/  ad7768_channels ; 
 int /*<<< orphan*/  ad7768_clk_disable ; 
 int /*<<< orphan*/  ad7768_info ; 
 int /*<<< orphan*/  ad7768_interrupt ; 
 int /*<<< orphan*/  ad7768_regulator_disable ; 
 int FUNC3 (struct ad7768_state*) ; 
 int /*<<< orphan*/  ad7768_trigger_handler ; 
 int /*<<< orphan*/  ad7768_trigger_ops ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*) ; 
 int FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct ad7768_state*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,char*) ; 
 struct iio_dev* FUNC9 (int /*<<< orphan*/ *,int) ; 
 int FUNC10 (int /*<<< orphan*/ *,struct iio_dev*) ; 
 TYPE_4__* FUNC11 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC12 (int /*<<< orphan*/ *,TYPE_4__*) ; 
 int FUNC13 (int /*<<< orphan*/ *,struct iio_dev*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,char*) ; 
 int FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,struct iio_dev*) ; 
 int /*<<< orphan*/  iio_pollfunc_store_time ; 
 struct ad7768_state* FUNC16 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC18 (TYPE_4__*,struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *) ; 
 int FUNC21 (int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC22 (struct spi_device*) ; 
 int /*<<< orphan*/  FUNC23 (struct spi_device*,struct iio_dev*) ; 

__attribute__((used)) static int FUNC24(struct spi_device *spi)
{
	struct ad7768_state *st;
	struct iio_dev *indio_dev;
	int ret;

	indio_dev = FUNC9(&spi->dev, sizeof(*st));
	if (!indio_dev)
		return -ENOMEM;

	st = FUNC16(indio_dev);
	st->spi = spi;

	st->vref = FUNC14(&spi->dev, "vref");
	if (FUNC1(st->vref))
		return FUNC2(st->vref);

	ret = FUNC21(st->vref);
	if (ret) {
		FUNC6(&spi->dev, "Failed to enable specified vref supply\n");
		return ret;
	}

	ret = FUNC7(&spi->dev, ad7768_regulator_disable, st);
	if (ret)
		return ret;

	st->mclk = FUNC8(&spi->dev, "mclk");
	if (FUNC1(st->mclk))
		return FUNC2(st->mclk);

	ret = FUNC5(st->mclk);
	if (ret < 0)
		return ret;

	ret = FUNC7(&spi->dev, ad7768_clk_disable, st);
	if (ret)
		return ret;

	st->mclk_freq = FUNC4(st->mclk);

	FUNC23(spi, indio_dev);
	FUNC20(&st->lock);

	indio_dev->channels = ad7768_channels;
	indio_dev->num_channels = FUNC0(ad7768_channels);
	indio_dev->dev.parent = &spi->dev;
	indio_dev->name = FUNC22(spi)->name;
	indio_dev->info = &ad7768_info;
	indio_dev->modes = INDIO_DIRECT_MODE | INDIO_BUFFER_TRIGGERED;

	ret = FUNC3(st);
	if (ret < 0) {
		FUNC6(&spi->dev, "AD7768 setup failed\n");
		return ret;
	}

	st->trig = FUNC11(&spi->dev, "%s-dev%d",
					  indio_dev->name, indio_dev->id);
	if (!st->trig)
		return -ENOMEM;

	st->trig->ops = &ad7768_trigger_ops;
	st->trig->dev.parent = &spi->dev;
	FUNC18(st->trig, indio_dev);
	ret = FUNC12(&spi->dev, st->trig);
	if (ret)
		return ret;

	indio_dev->trig = FUNC17(st->trig);

	FUNC19(&st->completion);

	ret = FUNC15(&spi->dev, spi->irq,
			       &ad7768_interrupt,
			       IRQF_TRIGGER_RISING | IRQF_ONESHOT,
			       indio_dev->name, indio_dev);
	if (ret)
		return ret;

	ret = FUNC13(&spi->dev, indio_dev,
					      &iio_pollfunc_store_time,
					      &ad7768_trigger_handler,
					      &ad7768_buffer_ops);
	if (ret)
		return ret;

	return FUNC10(&spi->dev, indio_dev);
}