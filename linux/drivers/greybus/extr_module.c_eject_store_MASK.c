#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct gb_module {size_t num_interfaces; int /*<<< orphan*/  module_id; TYPE_1__* hd; struct gb_interface** interfaces; } ;
struct gb_interface {int ejected; int /*<<< orphan*/  mutex; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int ssize_t ;
struct TYPE_2__ {int /*<<< orphan*/  svc; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct gb_interface*) ; 
 int /*<<< orphan*/  FUNC1 (struct gb_interface*) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (char const*,int /*<<< orphan*/ ,long*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 struct gb_module* FUNC6 (struct device*) ; 

__attribute__((used)) static ssize_t FUNC7(struct device *dev,
			   struct device_attribute *attr,
			   const char *buf, size_t len)
{
	struct gb_module *module = FUNC6(dev);
	struct gb_interface *intf;
	size_t i;
	long val;
	int ret;

	ret = FUNC3(buf, 0, &val);
	if (ret)
		return ret;

	if (!val)
		return len;

	for (i = 0; i < module->num_interfaces; ++i) {
		intf = module->interfaces[i];

		FUNC4(&intf->mutex);
		/* Set flag to prevent concurrent activation. */
		intf->ejected = true;
		FUNC1(intf);
		FUNC0(intf);
		FUNC5(&intf->mutex);
	}

	/* Tell the SVC to eject the primary interface. */
	ret = FUNC2(module->hd->svc, module->module_id);
	if (ret)
		return ret;

	return len;
}