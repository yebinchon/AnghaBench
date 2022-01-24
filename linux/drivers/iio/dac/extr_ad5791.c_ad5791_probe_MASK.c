#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_6__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {struct ad5791_platform_data* platform_data; } ;
struct spi_device {TYPE_3__ dev; } ;
struct TYPE_7__ {TYPE_3__* parent; } ;
struct iio_dev {int num_channels; int /*<<< orphan*/  name; int /*<<< orphan*/ * channels; int /*<<< orphan*/  modes; int /*<<< orphan*/ * info; TYPE_1__ dev; } ;
struct ad5791_state {int pwr_down; int vref_mv; int vref_neg_mv; int ctrl; void* reg_vdd; void* reg_vss; struct spi_device* spi; TYPE_6__* chip_info; } ;
struct ad5791_platform_data {int vref_pos_mv; int vref_neg_mv; scalar_t__ use_rbuf_gain2; } ;
struct TYPE_10__ {int /*<<< orphan*/  (* get_lin_comp ) (int) ;} ;
struct TYPE_8__ {size_t driver_data; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AD5791_ADDR_CTRL ; 
 int /*<<< orphan*/  AD5791_ADDR_SW_CTRL ; 
 int AD5791_CTRL_BIN2SC ; 
 int AD5791_CTRL_DACTRI ; 
 int AD5791_CTRL_OPGND ; 
 int AD5791_CTRL_RBUF ; 
 int AD5791_SWCTRL_RESET ; 
 int ENOMEM ; 
 int /*<<< orphan*/  INDIO_DIRECT_MODE ; 
 int /*<<< orphan*/  FUNC1 (void*) ; 
 int /*<<< orphan*/ * ad5791_channels ; 
 TYPE_6__* ad5791_chip_info_tbl ; 
 int /*<<< orphan*/  ad5791_info ; 
 int FUNC2 (struct ad5791_state*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,char*) ; 
 struct iio_dev* FUNC4 (TYPE_3__*,int) ; 
 void* FUNC5 (TYPE_3__*,char*) ; 
 int FUNC6 (struct iio_dev*) ; 
 struct ad5791_state* FUNC7 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC8 (void*) ; 
 int FUNC9 (void*) ; 
 int FUNC10 (void*) ; 
 TYPE_2__* FUNC11 (struct spi_device*) ; 
 int /*<<< orphan*/  FUNC12 (struct spi_device*,struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC13 (int) ; 

__attribute__((used)) static int FUNC14(struct spi_device *spi)
{
	struct ad5791_platform_data *pdata = spi->dev.platform_data;
	struct iio_dev *indio_dev;
	struct ad5791_state *st;
	int ret, pos_voltage_uv = 0, neg_voltage_uv = 0;

	indio_dev = FUNC4(&spi->dev, sizeof(*st));
	if (!indio_dev)
		return -ENOMEM;
	st = FUNC7(indio_dev);
	st->reg_vdd = FUNC5(&spi->dev, "vdd");
	if (!FUNC1(st->reg_vdd)) {
		ret = FUNC9(st->reg_vdd);
		if (ret)
			return ret;

		ret = FUNC10(st->reg_vdd);
		if (ret < 0)
			goto error_disable_reg_pos;

		pos_voltage_uv = ret;
	}

	st->reg_vss = FUNC5(&spi->dev, "vss");
	if (!FUNC1(st->reg_vss)) {
		ret = FUNC9(st->reg_vss);
		if (ret)
			goto error_disable_reg_pos;

		ret = FUNC10(st->reg_vss);
		if (ret < 0)
			goto error_disable_reg_neg;

		neg_voltage_uv = ret;
	}

	st->pwr_down = true;
	st->spi = spi;

	if (!FUNC1(st->reg_vss) && !FUNC1(st->reg_vdd)) {
		st->vref_mv = (pos_voltage_uv + neg_voltage_uv) / 1000;
		st->vref_neg_mv = neg_voltage_uv / 1000;
	} else if (pdata) {
		st->vref_mv = pdata->vref_pos_mv + pdata->vref_neg_mv;
		st->vref_neg_mv = pdata->vref_neg_mv;
	} else {
		FUNC3(&spi->dev, "reference voltage unspecified\n");
	}

	ret = FUNC2(st, AD5791_ADDR_SW_CTRL, AD5791_SWCTRL_RESET);
	if (ret)
		goto error_disable_reg_neg;

	st->chip_info =	&ad5791_chip_info_tbl[FUNC11(spi)
					      ->driver_data];


	st->ctrl = FUNC0(st->chip_info->get_lin_comp(st->vref_mv))
		  | ((pdata && pdata->use_rbuf_gain2) ? 0 : AD5791_CTRL_RBUF) |
		  AD5791_CTRL_BIN2SC;

	ret = FUNC2(st, AD5791_ADDR_CTRL, st->ctrl |
		AD5791_CTRL_OPGND | AD5791_CTRL_DACTRI);
	if (ret)
		goto error_disable_reg_neg;

	FUNC12(spi, indio_dev);
	indio_dev->dev.parent = &spi->dev;
	indio_dev->info = &ad5791_info;
	indio_dev->modes = INDIO_DIRECT_MODE;
	indio_dev->channels
		= &ad5791_channels[FUNC11(spi)->driver_data];
	indio_dev->num_channels = 1;
	indio_dev->name = FUNC11(st->spi)->name;
	ret = FUNC6(indio_dev);
	if (ret)
		goto error_disable_reg_neg;

	return 0;

error_disable_reg_neg:
	if (!FUNC1(st->reg_vss))
		FUNC8(st->reg_vss);
error_disable_reg_pos:
	if (!FUNC1(st->reg_vdd))
		FUNC8(st->reg_vdd);
	return ret;
}