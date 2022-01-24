#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct serio_driver {int /*<<< orphan*/  description; int /*<<< orphan*/  driver; int /*<<< orphan*/  id_table; } ;
struct TYPE_3__ {int /*<<< orphan*/ * driver; } ;
struct serio {TYPE_1__ dev; int /*<<< orphan*/  name; int /*<<< orphan*/  phys; } ;

/* Variables and functions */
 int ENODEV ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC1 (TYPE_1__*) ; 
 scalar_t__ FUNC2 (struct serio*,struct serio_driver*) ; 
 int /*<<< orphan*/  FUNC3 (struct serio*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,struct serio*) ; 

__attribute__((used)) static int FUNC5(struct serio *serio, struct serio_driver *drv)
{
	int error;

	if (FUNC4(drv->id_table, serio)) {

		serio->dev.driver = &drv->driver;
		if (FUNC2(serio, drv)) {
			serio->dev.driver = NULL;
			return -ENODEV;
		}

		error = FUNC1(&serio->dev);
		if (error) {
			FUNC0(&serio->dev,
				 "device_bind_driver() failed for %s (%s) and %s, error: %d\n",
				 serio->phys, serio->name,
				 drv->description, error);
			FUNC3(serio);
			serio->dev.driver = NULL;
			return error;
		}
	}
	return 0;
}