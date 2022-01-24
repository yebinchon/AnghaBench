#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct spi_device {int /*<<< orphan*/  dev; } ;
struct adcxx {int reference; int channels; int /*<<< orphan*/  lock; int /*<<< orphan*/  hwmon_dev; } ;
struct TYPE_4__ {int /*<<< orphan*/  dev_attr; } ;
struct TYPE_3__ {int driver_data; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 TYPE_2__* ad_input ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct adcxx* FUNC5 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC10 (struct spi_device*) ; 
 int /*<<< orphan*/  FUNC11 (struct spi_device*,struct adcxx*) ; 

__attribute__((used)) static int FUNC12(struct spi_device *spi)
{
	int channels = FUNC10(spi)->driver_data;
	struct adcxx *adc;
	int status;
	int i;

	adc = FUNC5(&spi->dev, sizeof(*adc), GFP_KERNEL);
	if (!adc)
		return -ENOMEM;

	/* set a default value for the reference */
	adc->reference = 3300;
	adc->channels = channels;
	FUNC7(&adc->lock);

	FUNC8(&adc->lock);

	FUNC11(spi, adc);

	for (i = 0; i < 3 + adc->channels; i++) {
		status = FUNC3(&spi->dev, &ad_input[i].dev_attr);
		if (status) {
			FUNC2(&spi->dev, "device_create_file failed.\n");
			goto out_err;
		}
	}

	adc->hwmon_dev = FUNC6(&spi->dev);
	if (FUNC0(adc->hwmon_dev)) {
		FUNC2(&spi->dev, "hwmon_device_register failed.\n");
		status = FUNC1(adc->hwmon_dev);
		goto out_err;
	}

	FUNC9(&adc->lock);
	return 0;

out_err:
	for (i--; i >= 0; i--)
		FUNC4(&spi->dev, &ad_input[i].dev_attr);

	FUNC9(&adc->lock);
	return status;
}