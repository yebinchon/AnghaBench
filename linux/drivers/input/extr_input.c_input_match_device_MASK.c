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
struct input_handler {scalar_t__ (* match ) (struct input_handler*,struct input_dev*) ;struct input_device_id* id_table; } ;
struct input_device_id {scalar_t__ driver_info; scalar_t__ flags; } ;
struct input_dev {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct input_dev*,struct input_device_id const*) ; 
 scalar_t__ FUNC1 (struct input_handler*,struct input_dev*) ; 

__attribute__((used)) static const struct input_device_id *FUNC2(struct input_handler *handler,
							struct input_dev *dev)
{
	const struct input_device_id *id;

	for (id = handler->id_table; id->flags || id->driver_info; id++) {
		if (FUNC0(dev, id) &&
		    (!handler->match || handler->match(handler, dev))) {
			return id;
		}
	}

	return NULL;
}