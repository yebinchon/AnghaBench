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
struct TYPE_3__ {TYPE_2__* als_device_lux; } ;
struct tsl2583_chip {TYPE_1__ als_settings; } ;
struct iio_dev {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int ssize_t ;
struct TYPE_4__ {int ratio; int ch0; int ch1; } ;

/* Variables and functions */
 unsigned int FUNC0 (TYPE_2__*) ; 
 struct iio_dev* FUNC1 (struct device*) ; 
 struct tsl2583_chip* FUNC2 (struct iio_dev*) ; 
 scalar_t__ FUNC3 (char*,char*,...) ; 

__attribute__((used)) static ssize_t FUNC4(struct device *dev,
					     struct device_attribute *attr,
					     char *buf)
{
	struct iio_dev *indio_dev = FUNC1(dev);
	struct tsl2583_chip *chip = FUNC2(indio_dev);
	unsigned int i;
	int offset = 0;

	for (i = 0; i < FUNC0(chip->als_settings.als_device_lux); i++) {
		offset += FUNC3(buf + offset, "%u,%u,%u,",
				  chip->als_settings.als_device_lux[i].ratio,
				  chip->als_settings.als_device_lux[i].ch0,
				  chip->als_settings.als_device_lux[i].ch1);
		if (chip->als_settings.als_device_lux[i].ratio == 0) {
			/*
			 * We just printed the first "0" entry.
			 * Now get rid of the extra "," and break.
			 */
			offset--;
			break;
		}
	}

	offset += FUNC3(buf + offset, "\n");

	return offset;
}