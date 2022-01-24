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
typedef  long u16 ;
struct pmbus_sensor {size_t class; int /*<<< orphan*/  convert; } ;
struct pmbus_data {TYPE_1__* info; } ;
struct TYPE_2__ {int* format; } ;

/* Variables and functions */
#define  direct 130 
#define  linear 129 
 long FUNC0 (struct pmbus_data*,struct pmbus_sensor*,long) ; 
 long FUNC1 (struct pmbus_data*,struct pmbus_sensor*,long) ; 
 long FUNC2 (struct pmbus_data*,struct pmbus_sensor*,long) ; 
#define  vid 128 

__attribute__((used)) static u16 FUNC3(struct pmbus_data *data,
			  struct pmbus_sensor *sensor, long val)
{
	u16 regval;

	if (!sensor->convert)
		return val;

	switch (data->info->format[sensor->class]) {
	case direct:
		regval = FUNC0(data, sensor, val);
		break;
	case vid:
		regval = FUNC2(data, sensor, val);
		break;
	case linear:
	default:
		regval = FUNC1(data, sensor, val);
		break;
	}
	return regval;
}