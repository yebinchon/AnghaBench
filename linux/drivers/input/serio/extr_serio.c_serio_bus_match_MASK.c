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
struct serio_driver {int /*<<< orphan*/  id_table; scalar_t__ manual_bind; } ;
struct serio {scalar_t__ manual_bind; } ;
struct device_driver {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,struct serio*) ; 
 struct serio_driver* FUNC1 (struct device_driver*) ; 
 struct serio* FUNC2 (struct device*) ; 

__attribute__((used)) static int FUNC3(struct device *dev, struct device_driver *drv)
{
	struct serio *serio = FUNC2(dev);
	struct serio_driver *serio_drv = FUNC1(drv);

	if (serio->manual_bind || serio_drv->manual_bind)
		return 0;

	return FUNC0(serio_drv->id_table, serio);
}