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
struct TYPE_12__ {struct adf4350_platform_data* platform_data; scalar_t__ of_node; } ;
struct spi_device {TYPE_3__ dev; } ;
struct TYPE_10__ {TYPE_3__* parent; } ;
struct iio_dev {scalar_t__* name; int num_channels; int /*<<< orphan*/ * channels; int /*<<< orphan*/  modes; int /*<<< orphan*/ * info; TYPE_1__ dev; } ;
struct clk {int dummy; } ;
struct adf4350_state {struct clk* reg; int /*<<< orphan*/  regs_hw; int /*<<< orphan*/  min_out_freq; scalar_t__ clkin; struct clk* clk; int /*<<< orphan*/  chspc; struct adf4350_platform_data* pdata; struct spi_device* spi; } ;
struct adf4350_platform_data {scalar_t__* name; scalar_t__ power_up_frequency; int /*<<< orphan*/  gpio_lock_detect; scalar_t__ clkin; int /*<<< orphan*/  channel_spacing; } ;
struct TYPE_11__ {scalar_t__* name; int driver_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  ADF4350_MIN_OUT_FREQ ; 
 int /*<<< orphan*/  ADF4351_MIN_OUT_FREQ ; 
 int EINVAL ; 
 int ENOMEM ; 
 int EPROBE_DEFER ; 
 int /*<<< orphan*/  INDIO_DIRECT_MODE ; 
 scalar_t__ FUNC0 (struct clk*) ; 
 int /*<<< orphan*/  adf4350_chan ; 
 int /*<<< orphan*/  adf4350_info ; 
 struct adf4350_platform_data* FUNC1 (TYPE_3__*) ; 
 int FUNC2 (struct adf4350_state*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct clk*) ; 
 scalar_t__ FUNC4 (struct clk*) ; 
 int FUNC5 (struct clk*) ; 
 struct adf4350_platform_data default_pdata ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*,char*) ; 
 struct clk* FUNC8 (TYPE_3__*,char*) ; 
 int FUNC9 (TYPE_3__*,int /*<<< orphan*/ ,scalar_t__*) ; 
 struct iio_dev* FUNC10 (TYPE_3__*,int) ; 
 struct clk* FUNC11 (TYPE_3__*,char*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ ) ; 
 int FUNC14 (struct iio_dev*) ; 
 struct adf4350_state* FUNC15 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC17 (struct clk*) ; 
 int FUNC18 (struct clk*) ; 
 TYPE_2__* FUNC19 (struct spi_device*) ; 
 int /*<<< orphan*/  FUNC20 (struct spi_device*,struct iio_dev*) ; 

__attribute__((used)) static int FUNC21(struct spi_device *spi)
{
	struct adf4350_platform_data *pdata;
	struct iio_dev *indio_dev;
	struct adf4350_state *st;
	struct clk *clk = NULL;
	int ret;

	if (spi->dev.of_node) {
		pdata = FUNC1(&spi->dev);
		if (pdata == NULL)
			return -EINVAL;
	} else {
		pdata = spi->dev.platform_data;
	}

	if (!pdata) {
		FUNC7(&spi->dev, "no platform data? using default\n");
		pdata = &default_pdata;
	}

	if (!pdata->clkin) {
		clk = FUNC8(&spi->dev, "clkin");
		if (FUNC0(clk))
			return -EPROBE_DEFER;

		ret = FUNC5(clk);
		if (ret < 0)
			return ret;
	}

	indio_dev = FUNC10(&spi->dev, sizeof(*st));
	if (indio_dev == NULL) {
		ret =  -ENOMEM;
		goto error_disable_clk;
	}

	st = FUNC15(indio_dev);

	st->reg = FUNC11(&spi->dev, "vcc");
	if (!FUNC0(st->reg)) {
		ret = FUNC18(st->reg);
		if (ret)
			goto error_disable_clk;
	}

	FUNC20(spi, indio_dev);
	st->spi = spi;
	st->pdata = pdata;

	indio_dev->dev.parent = &spi->dev;
	indio_dev->name = (pdata->name[0] != 0) ? pdata->name :
		FUNC19(spi)->name;

	indio_dev->info = &adf4350_info;
	indio_dev->modes = INDIO_DIRECT_MODE;
	indio_dev->channels = &adf4350_chan;
	indio_dev->num_channels = 1;

	st->chspc = pdata->channel_spacing;
	if (clk) {
		st->clk = clk;
		st->clkin = FUNC4(clk);
	} else {
		st->clkin = pdata->clkin;
	}

	st->min_out_freq = FUNC19(spi)->driver_data == 4351 ?
		ADF4351_MIN_OUT_FREQ : ADF4350_MIN_OUT_FREQ;

	FUNC16(st->regs_hw, 0xFF, sizeof(st->regs_hw));

	if (FUNC13(pdata->gpio_lock_detect)) {
		ret = FUNC9(&spi->dev, pdata->gpio_lock_detect,
					indio_dev->name);
		if (ret) {
			FUNC6(&spi->dev, "fail to request lock detect GPIO-%d",
				pdata->gpio_lock_detect);
			goto error_disable_reg;
		}
		FUNC12(pdata->gpio_lock_detect);
	}

	if (pdata->power_up_frequency) {
		ret = FUNC2(st, pdata->power_up_frequency);
		if (ret)
			goto error_disable_reg;
	}

	ret = FUNC14(indio_dev);
	if (ret)
		goto error_disable_reg;

	return 0;

error_disable_reg:
	if (!FUNC0(st->reg))
		FUNC17(st->reg);
error_disable_clk:
	if (clk)
		FUNC3(clk);

	return ret;
}