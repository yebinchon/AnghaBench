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
struct serio_driver {char* description; } ;
struct device_driver {int dummy; } ;
typedef  int /*<<< orphan*/  ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char*,char*) ; 
 struct serio_driver* FUNC1 (struct device_driver*) ; 

__attribute__((used)) static ssize_t FUNC2(struct device_driver *drv, char *buf)
{
	struct serio_driver *driver = FUNC1(drv);
	return FUNC0(buf, "%s\n", driver->description ? driver->description : "(none)");
}