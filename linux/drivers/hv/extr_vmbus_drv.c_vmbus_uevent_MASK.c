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
struct kobj_uevent_env {int dummy; } ;
struct hv_device {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  VMBUS_ALIAS_LEN ; 
 int FUNC0 (struct kobj_uevent_env*,char*,char*) ; 
 struct hv_device* FUNC1 (struct device*) ; 
 int /*<<< orphan*/  FUNC2 (struct hv_device*,char*) ; 

__attribute__((used)) static int FUNC3(struct device *device, struct kobj_uevent_env *env)
{
	struct hv_device *dev = FUNC1(device);
	int ret;
	char alias_name[VMBUS_ALIAS_LEN + 1];

	FUNC2(dev, alias_name);
	ret = FUNC0(env, "MODALIAS=vmbus:%s", alias_name);
	return ret;
}