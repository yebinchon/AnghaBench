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
struct wacom {int /*<<< orphan*/  lock; int /*<<< orphan*/  hdev; } ;
struct kobject {int /*<<< orphan*/  parent; } ;
struct kobj_attribute {int dummy; } ;
struct hid_device {int dummy; } ;
struct device {int dummy; } ;
typedef  int ssize_t ;

/* Variables and functions */
 unsigned char WAC_CMD_UNPAIR_ALL ; 
 struct wacom* FUNC0 (struct hid_device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char const*) ; 
 struct device* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char const*,char*,int) ; 
 struct hid_device* FUNC6 (struct device*) ; 
 int FUNC7 (struct wacom*,unsigned char) ; 

__attribute__((used)) static ssize_t FUNC8(struct kobject *kobj,
					 struct kobj_attribute *attr,
					 const char *buf, size_t count)
{
	unsigned char selector = 0;
	struct device *dev = FUNC2(kobj->parent);
	struct hid_device *hdev = FUNC6(dev);
	struct wacom *wacom = FUNC0(hdev);
	int err;

	if (!FUNC5(buf, "*\n", 2)) {
		selector = WAC_CMD_UNPAIR_ALL;
	} else {
		FUNC1(wacom->hdev, "remote: unrecognized unpair code: %s\n",
			 buf);
		return -1;
	}

	FUNC3(&wacom->lock);

	err = FUNC7(wacom, selector);
	FUNC4(&wacom->lock);

	return err < 0 ? err : count;
}