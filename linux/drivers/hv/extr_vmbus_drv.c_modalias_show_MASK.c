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
struct hv_device {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  VMBUS_ALIAS_LEN ; 
 struct hv_device* FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (struct hv_device*,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,char*) ; 

__attribute__((used)) static ssize_t FUNC3(struct device *dev,
			     struct device_attribute *dev_attr, char *buf)
{
	struct hv_device *hv_dev = FUNC0(dev);
	char alias_name[VMBUS_ALIAS_LEN + 1];

	FUNC1(hv_dev, alias_name);
	return FUNC2(buf, "vmbus:%s\n", alias_name);
}