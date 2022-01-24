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
struct TYPE_2__ {int /*<<< orphan*/  kobj; } ;
struct spi_device {TYPE_1__ dev; } ;
struct max1111_data {int /*<<< orphan*/  drvdata_lock; int /*<<< orphan*/  hwmon_dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  max1110_attr_group ; 
 int /*<<< orphan*/  max1111_attr_group ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct max1111_data* FUNC2 (struct spi_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * the_max1111 ; 

__attribute__((used)) static int FUNC4(struct spi_device *spi)
{
	struct max1111_data *data = FUNC2(spi);

#ifdef CONFIG_SHARPSL_PM
	the_max1111 = NULL;
#endif
	FUNC0(data->hwmon_dev);
	FUNC3(&spi->dev.kobj, &max1110_attr_group);
	FUNC3(&spi->dev.kobj, &max1111_attr_group);
	FUNC1(&data->drvdata_lock);
	return 0;
}