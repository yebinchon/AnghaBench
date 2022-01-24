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
struct TYPE_3__ {TYPE_2__* groups; } ;
struct wacom {int /*<<< orphan*/  lock; TYPE_1__ led; } ;
struct hid_device {int dummy; } ;
struct device {int dummy; } ;
typedef  int ssize_t ;
struct TYPE_4__ {unsigned int select; } ;

/* Variables and functions */
 struct wacom* FUNC0 (struct hid_device*) ; 
 int FUNC1 (char const*,int,unsigned int*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 struct hid_device* FUNC4 (struct device*) ; 
 int FUNC5 (struct wacom*) ; 

__attribute__((used)) static ssize_t FUNC6(struct device *dev, int set_id,
				      const char *buf, size_t count)
{
	struct hid_device *hdev = FUNC4(dev);
	struct wacom *wacom = FUNC0(hdev);
	unsigned int id;
	int err;

	err = FUNC1(buf, 10, &id);
	if (err)
		return err;

	FUNC2(&wacom->lock);

	wacom->led.groups[set_id].select = id & 0x3;
	err = FUNC5(wacom);

	FUNC3(&wacom->lock);

	return err < 0 ? err : count;
}