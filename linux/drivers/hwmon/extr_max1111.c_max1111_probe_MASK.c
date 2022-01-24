#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  kobj; } ;
struct spi_device {int bits_per_word; TYPE_2__ dev; int /*<<< orphan*/  mode; } ;
struct max1111_data {int lsb; int /*<<< orphan*/  hwmon_dev; struct spi_device* spi; int /*<<< orphan*/  drvdata_lock; void* sel_sh; } ;
typedef  enum chips { ____Placeholder_chips } chips ;
struct TYPE_5__ {int driver_data; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 void* MAX1110_CTRL_SEL_SH ; 
 void* MAX1111_CTRL_SEL_SH ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SPI_MODE_0 ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,char*) ; 
 struct max1111_data* FUNC3 (TYPE_2__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
#define  max1110 131 
 int /*<<< orphan*/  max1110_attr_group ; 
#define  max1111 130 
 int /*<<< orphan*/  max1111_attr_group ; 
#define  max1112 129 
#define  max1113 128 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (struct max1111_data*) ; 
 TYPE_1__* FUNC7 (struct spi_device*) ; 
 int /*<<< orphan*/  FUNC8 (struct spi_device*,struct max1111_data*) ; 
 int FUNC9 (struct spi_device*) ; 
 int FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct max1111_data* the_max1111 ; 

__attribute__((used)) static int FUNC12(struct spi_device *spi)
{
	enum chips chip = FUNC7(spi)->driver_data;
	struct max1111_data *data;
	int err;

	spi->bits_per_word = 8;
	spi->mode = SPI_MODE_0;
	err = FUNC9(spi);
	if (err < 0)
		return err;

	data = FUNC3(&spi->dev, sizeof(struct max1111_data), GFP_KERNEL);
	if (data == NULL)
		return -ENOMEM;

	switch (chip) {
	case max1110:
		data->lsb = 8;
		data->sel_sh = MAX1110_CTRL_SEL_SH;
		break;
	case max1111:
		data->lsb = 8;
		data->sel_sh = MAX1111_CTRL_SEL_SH;
		break;
	case max1112:
		data->lsb = 16;
		data->sel_sh = MAX1110_CTRL_SEL_SH;
		break;
	case max1113:
		data->lsb = 16;
		data->sel_sh = MAX1111_CTRL_SEL_SH;
		break;
	}
	err = FUNC6(data);
	if (err)
		return err;

	FUNC5(&data->drvdata_lock);

	data->spi = spi;
	FUNC8(spi, data);

	err = FUNC10(&spi->dev.kobj, &max1111_attr_group);
	if (err) {
		FUNC2(&spi->dev, "failed to create attribute group\n");
		return err;
	}
	if (chip == max1110 || chip == max1112) {
		err = FUNC10(&spi->dev.kobj, &max1110_attr_group);
		if (err) {
			FUNC2(&spi->dev,
				"failed to create extended attribute group\n");
			goto err_remove;
		}
	}

	data->hwmon_dev = FUNC4(&spi->dev);
	if (FUNC0(data->hwmon_dev)) {
		FUNC2(&spi->dev, "failed to create hwmon device\n");
		err = FUNC1(data->hwmon_dev);
		goto err_remove;
	}

#ifdef CONFIG_SHARPSL_PM
	the_max1111 = data;
#endif
	return 0;

err_remove:
	FUNC11(&spi->dev.kobj, &max1110_attr_group);
	FUNC11(&spi->dev.kobj, &max1111_attr_group);
	return err;
}