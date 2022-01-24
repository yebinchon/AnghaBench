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
struct spi_device_id {char* name; scalar_t__ driver_data; } ;
struct TYPE_5__ {TYPE_1__* driver; } ;
struct spi_device {int /*<<< orphan*/  irq; TYPE_2__ dev; } ;
struct regmap {int dummy; } ;
struct acpi_device_id {scalar_t__ driver_data; } ;
typedef  enum inv_devices { ____Placeholder_inv_devices } inv_devices ;
struct TYPE_4__ {int /*<<< orphan*/  acpi_match_table; } ;

/* Variables and functions */
 int ENODEV ; 
 scalar_t__ FUNC0 (struct regmap*) ; 
 int FUNC1 (struct regmap*) ; 
 struct acpi_device_id* FUNC2 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,char*,int) ; 
 struct regmap* FUNC4 (struct spi_device*,int /*<<< orphan*/ *) ; 
 int FUNC5 (struct regmap*,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  inv_mpu_i2c_disable ; 
 int /*<<< orphan*/  inv_mpu_regmap_config ; 
 struct spi_device_id* FUNC6 (struct spi_device*) ; 

__attribute__((used)) static int FUNC7(struct spi_device *spi)
{
	struct regmap *regmap;
	const struct spi_device_id *spi_id;
	const struct acpi_device_id *acpi_id;
	const char *name = NULL;
	enum inv_devices chip_type;

	if ((spi_id = FUNC6(spi))) {
		chip_type = (enum inv_devices)spi_id->driver_data;
		name = spi_id->name;
	} else if ((acpi_id = FUNC2(spi->dev.driver->acpi_match_table, &spi->dev))) {
		chip_type = (enum inv_devices)acpi_id->driver_data;
	} else {
		return -ENODEV;
	}

	regmap = FUNC4(spi, &inv_mpu_regmap_config);
	if (FUNC0(regmap)) {
		FUNC3(&spi->dev, "Failed to register spi regmap %d\n",
			(int)FUNC1(regmap));
		return FUNC1(regmap);
	}

	return FUNC5(regmap, spi->irq, name,
				  inv_mpu_i2c_disable, chip_type);
}