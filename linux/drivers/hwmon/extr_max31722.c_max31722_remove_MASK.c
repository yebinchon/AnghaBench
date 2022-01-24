#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct spi_device {int dummy; } ;
struct max31722_data {int /*<<< orphan*/  hwmon_dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  MAX31722_MODE_STANDBY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct max31722_data*,int /*<<< orphan*/ ) ; 
 struct max31722_data* FUNC2 (struct spi_device*) ; 

__attribute__((used)) static int FUNC3(struct spi_device *spi)
{
	struct max31722_data *data = FUNC2(spi);

	FUNC0(data->hwmon_dev);

	return FUNC1(data, MAX31722_MODE_STANDBY);
}