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
struct thermostat {scalar_t__ type; TYPE_1__* pdev; } ;
struct device {int dummy; } ;
struct TYPE_2__ {struct device dev; } ;

/* Variables and functions */
 scalar_t__ ADT7460 ; 
 int /*<<< orphan*/  dev_attr_limit_adjust ; 
 int /*<<< orphan*/  dev_attr_sensor1_fan_speed ; 
 int /*<<< orphan*/  dev_attr_sensor1_limit ; 
 int /*<<< orphan*/  dev_attr_sensor1_location ; 
 int /*<<< orphan*/  dev_attr_sensor1_temperature ; 
 int /*<<< orphan*/  dev_attr_sensor2_fan_speed ; 
 int /*<<< orphan*/  dev_attr_sensor2_limit ; 
 int /*<<< orphan*/  dev_attr_sensor2_location ; 
 int /*<<< orphan*/  dev_attr_sensor2_temperature ; 
 int /*<<< orphan*/  dev_attr_specified_fan_speed ; 
 int /*<<< orphan*/  FUNC0 (struct device*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 

__attribute__((used)) static void FUNC2(struct thermostat *th)
{
	struct device *dev;

	if (!th->pdev)
		return;
	dev = &th->pdev->dev;
	FUNC0(dev, &dev_attr_sensor1_temperature);
	FUNC0(dev, &dev_attr_sensor2_temperature);
	FUNC0(dev, &dev_attr_sensor1_limit);
	FUNC0(dev, &dev_attr_sensor2_limit);
	FUNC0(dev, &dev_attr_sensor1_location);
	FUNC0(dev, &dev_attr_sensor2_location);
	FUNC0(dev, &dev_attr_limit_adjust);
	FUNC0(dev, &dev_attr_specified_fan_speed);
	FUNC0(dev, &dev_attr_sensor1_fan_speed);	
	if (th->type == ADT7460)
		FUNC0(dev, &dev_attr_sensor2_fan_speed);
	FUNC1(th->pdev);

}