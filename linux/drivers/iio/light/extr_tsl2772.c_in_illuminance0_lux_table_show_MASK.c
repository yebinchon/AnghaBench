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
struct tsl2772_chip {TYPE_1__* tsl2772_device_lux; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int ssize_t ;
struct TYPE_2__ {int ch0; int ch1; } ;

/* Variables and functions */
 int /*<<< orphan*/  PAGE_SIZE ; 
 int TSL2772_MAX_LUX_TABLE_SIZE ; 
 int /*<<< orphan*/  FUNC0 (struct device*) ; 
 struct tsl2772_chip* FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (char*,int /*<<< orphan*/ ,char*,...) ; 

__attribute__((used)) static ssize_t FUNC3(struct device *dev,
					      struct device_attribute *attr,
					      char *buf)
{
	struct tsl2772_chip *chip = FUNC1(FUNC0(dev));
	int i = 0;
	int offset = 0;

	while (i < TSL2772_MAX_LUX_TABLE_SIZE) {
		offset += FUNC2(buf + offset, PAGE_SIZE, "%u,%u,",
			chip->tsl2772_device_lux[i].ch0,
			chip->tsl2772_device_lux[i].ch1);
		if (chip->tsl2772_device_lux[i].ch0 == 0) {
			/*
			 * We just printed the first "0" entry.
			 * Now get rid of the extra "," and break.
			 */
			offset--;
			break;
		}
		i++;
	}

	offset += FUNC2(buf + offset, PAGE_SIZE, "\n");
	return offset;
}