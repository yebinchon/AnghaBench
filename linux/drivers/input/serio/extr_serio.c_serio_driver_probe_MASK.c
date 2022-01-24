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
struct serio_driver {int dummy; } ;
struct serio {int dummy; } ;
struct device {int /*<<< orphan*/  driver; } ;

/* Variables and functions */
 int FUNC0 (struct serio*,struct serio_driver*) ; 
 struct serio_driver* FUNC1 (int /*<<< orphan*/ ) ; 
 struct serio* FUNC2 (struct device*) ; 

__attribute__((used)) static int FUNC3(struct device *dev)
{
	struct serio *serio = FUNC2(dev);
	struct serio_driver *drv = FUNC1(dev->driver);

	return FUNC0(serio, drv);
}