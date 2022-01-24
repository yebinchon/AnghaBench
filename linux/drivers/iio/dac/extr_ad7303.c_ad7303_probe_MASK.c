#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct spi_device_id {int /*<<< orphan*/  name; } ;
struct TYPE_5__ {struct ad7303_platform_data* platform_data; scalar_t__ of_node; } ;
struct spi_device {TYPE_2__ dev; } ;
struct TYPE_4__ {TYPE_2__* parent; } ;
struct iio_dev {int /*<<< orphan*/  num_channels; int /*<<< orphan*/  channels; int /*<<< orphan*/  modes; int /*<<< orphan*/ * info; int /*<<< orphan*/  name; TYPE_1__ dev; } ;
struct ad7303_state {void* vdd_reg; void* vref_reg; int /*<<< orphan*/  config; struct spi_device* spi; } ;
struct ad7303_platform_data {scalar_t__ use_external_ref; } ;

/* Variables and functions */
 int /*<<< orphan*/  AD7303_CFG_EXTERNAL_VREF ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  INDIO_DIRECT_MODE ; 
 scalar_t__ FUNC1 (void*) ; 
 int FUNC2 (void*) ; 
 int /*<<< orphan*/  ad7303_channels ; 
 int /*<<< orphan*/  ad7303_info ; 
 struct iio_dev* FUNC3 (TYPE_2__*,int) ; 
 void* FUNC4 (TYPE_2__*,char*) ; 
 int FUNC5 (struct iio_dev*) ; 
 struct ad7303_state* FUNC6 (struct iio_dev*) ; 
 int FUNC7 (scalar_t__,char*) ; 
 int /*<<< orphan*/  FUNC8 (void*) ; 
 int FUNC9 (void*) ; 
 struct spi_device_id* FUNC10 (struct spi_device*) ; 
 int /*<<< orphan*/  FUNC11 (struct spi_device*,struct iio_dev*) ; 

__attribute__((used)) static int FUNC12(struct spi_device *spi)
{
	const struct spi_device_id *id = FUNC10(spi);
	struct iio_dev *indio_dev;
	struct ad7303_state *st;
	bool ext_ref;
	int ret;

	indio_dev = FUNC3(&spi->dev, sizeof(*st));
	if (indio_dev == NULL)
		return -ENOMEM;

	st = FUNC6(indio_dev);
	FUNC11(spi, indio_dev);

	st->spi = spi;

	st->vdd_reg = FUNC4(&spi->dev, "Vdd");
	if (FUNC1(st->vdd_reg))
		return FUNC2(st->vdd_reg);

	ret = FUNC9(st->vdd_reg);
	if (ret)
		return ret;

	if (spi->dev.of_node) {
		ext_ref = FUNC7(spi->dev.of_node,
				"REF-supply");
	} else {
		struct ad7303_platform_data *pdata = spi->dev.platform_data;
		if (pdata && pdata->use_external_ref)
			ext_ref = true;
		else
		    ext_ref = false;
	}

	if (ext_ref) {
		st->vref_reg = FUNC4(&spi->dev, "REF");
		if (FUNC1(st->vref_reg)) {
			ret = FUNC2(st->vref_reg);
			goto err_disable_vdd_reg;
		}

		ret = FUNC9(st->vref_reg);
		if (ret)
			goto err_disable_vdd_reg;

		st->config |= AD7303_CFG_EXTERNAL_VREF;
	}

	indio_dev->dev.parent = &spi->dev;
	indio_dev->name = id->name;
	indio_dev->info = &ad7303_info;
	indio_dev->modes = INDIO_DIRECT_MODE;
	indio_dev->channels = ad7303_channels;
	indio_dev->num_channels = FUNC0(ad7303_channels);

	ret = FUNC5(indio_dev);
	if (ret)
		goto err_disable_vref_reg;

	return 0;

err_disable_vref_reg:
	if (st->vref_reg)
		FUNC8(st->vref_reg);
err_disable_vdd_reg:
	FUNC8(st->vdd_reg);
	return ret;
}