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
struct mcb_device {int /*<<< orphan*/  id; } ;
struct kobj_uevent_env {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int FUNC0 (struct kobj_uevent_env*,char*,int /*<<< orphan*/ ) ; 
 struct mcb_device* FUNC1 (struct device*) ; 

__attribute__((used)) static int FUNC2(struct device *dev, struct kobj_uevent_env *env)
{
	struct mcb_device *mdev = FUNC1(dev);
	int ret;

	ret = FUNC0(env, "MODALIAS=mcb:16z%03d", mdev->id);
	if (ret)
		return -ENOMEM;

	return 0;
}