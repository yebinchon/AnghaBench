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
struct input_device_id {scalar_t__ flags; } ;
struct input_dev {int /*<<< orphan*/  name; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct input_dev*,struct input_device_id const*) ; 
 struct input_device_id* joydev_blacklist ; 

__attribute__((used)) static bool FUNC2(struct input_dev *dev)
{
	const struct input_device_id *id;

	for (id = joydev_blacklist; id->flags; id++) {
		if (FUNC1(dev, id)) {
			FUNC0(&dev->dev,
				"joydev: blacklisting '%s'\n", dev->name);
			return true;
		}
	}

	return false;
}