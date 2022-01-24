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
struct max31722_data {int /*<<< orphan*/  spi_device; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  scalar_t__ ssize_t ;
typedef  int s16 ;

/* Variables and functions */
 int /*<<< orphan*/  MAX31722_REG_TEMP_LSB ; 
 struct max31722_data* FUNC0 (struct device*) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (char*,char*,int) ; 

__attribute__((used)) static ssize_t FUNC4(struct device *dev,
				  struct device_attribute *attr, char *buf)
{
	ssize_t ret;
	struct max31722_data *data = FUNC0(dev);

	ret = FUNC2(data->spi_device, MAX31722_REG_TEMP_LSB);
	if (ret < 0)
		return ret;
	/* Keep 12 bits and multiply by the scale of 62.5 millidegrees/bit. */
	return FUNC3(buf, "%d\n", (s16)FUNC1(ret) * 125 / 32);
}