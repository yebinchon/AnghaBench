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
struct serio {int dummy; } ;
struct psmouse_attribute {int /*<<< orphan*/  data; int /*<<< orphan*/  (* show ) (struct psmouse*,int /*<<< orphan*/ ,char*) ;} ;
struct psmouse {TYPE_1__* protocol; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  ssize_t ;
struct TYPE_4__ {struct device_attribute dattr; } ;
struct TYPE_3__ {scalar_t__ smbus_companion; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENOENT ; 
 TYPE_2__ psmouse_attr_protocol ; 
 struct psmouse* FUNC0 (struct serio*) ; 
 int /*<<< orphan*/  FUNC1 (struct psmouse*,int /*<<< orphan*/ ,char*) ; 
 struct psmouse_attribute* FUNC2 (struct device_attribute*) ; 
 struct serio* FUNC3 (struct device*) ; 

ssize_t FUNC4(struct device *dev, struct device_attribute *devattr,
				 char *buf)
{
	struct serio *serio = FUNC3(dev);
	struct psmouse_attribute *attr = FUNC2(devattr);
	struct psmouse *psmouse = FUNC0(serio);

	if (psmouse->protocol->smbus_companion &&
			devattr != &psmouse_attr_protocol.dattr)
		return -ENOENT;

	return attr->show(psmouse, attr->data, buf);
}