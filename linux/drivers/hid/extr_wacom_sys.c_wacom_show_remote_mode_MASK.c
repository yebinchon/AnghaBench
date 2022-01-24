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
typedef  int u8 ;
struct TYPE_4__ {TYPE_1__* groups; } ;
struct wacom {TYPE_2__ led; } ;
struct kobject {int /*<<< orphan*/  parent; } ;
struct kobj_attribute {int dummy; } ;
struct hid_device {int dummy; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  ssize_t ;
struct TYPE_3__ {int select; } ;

/* Variables and functions */
 struct wacom* FUNC0 (struct hid_device*) ; 
 struct device* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,int) ; 
 struct hid_device* FUNC3 (struct device*) ; 

__attribute__((used)) static ssize_t FUNC4(struct kobject *kobj,
				      struct kobj_attribute *kattr,
				      char *buf, int index)
{
	struct device *dev = FUNC1(kobj->parent);
	struct hid_device *hdev = FUNC3(dev);
	struct wacom *wacom = FUNC0(hdev);
	u8 mode;

	mode = wacom->led.groups[index].select;
	return FUNC2(buf, "%d\n", mode < 3 ? mode : -1);
}