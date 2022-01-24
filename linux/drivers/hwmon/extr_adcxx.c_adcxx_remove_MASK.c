#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct spi_device {int /*<<< orphan*/  dev; } ;
struct adcxx {int channels; int /*<<< orphan*/  lock; int /*<<< orphan*/  hwmon_dev; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev_attr; } ;

/* Variables and functions */
 TYPE_1__* ad_input ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 struct adcxx* FUNC4 (struct spi_device*) ; 

__attribute__((used)) static int FUNC5(struct spi_device *spi)
{
	struct adcxx *adc = FUNC4(spi);
	int i;

	FUNC2(&adc->lock);
	FUNC1(adc->hwmon_dev);
	for (i = 0; i < 3 + adc->channels; i++)
		FUNC0(&spi->dev, &ad_input[i].dev_attr);

	FUNC3(&adc->lock);

	return 0;
}