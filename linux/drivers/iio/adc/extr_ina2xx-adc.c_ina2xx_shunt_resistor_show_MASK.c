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
struct ina2xx_chip_info {int shunt_resistor_uohm; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  IIO_VAL_FRACTIONAL ; 
 int /*<<< orphan*/  FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int,int*) ; 
 struct ina2xx_chip_info* FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static ssize_t FUNC3(struct device *dev,
					  struct device_attribute *attr,
					  char *buf)
{
	struct ina2xx_chip_info *chip = FUNC2(FUNC0(dev));
	int vals[2] = { chip->shunt_resistor_uohm, 1000000 };

	return FUNC1(buf, IIO_VAL_FRACTIONAL, 1, vals);
}