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
struct gnss_device {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct kobj_uevent_env*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct gnss_device*) ; 
 struct gnss_device* FUNC2 (struct device*) ; 

__attribute__((used)) static int FUNC3(struct device *dev, struct kobj_uevent_env *env)
{
	struct gnss_device *gdev = FUNC2(dev);
	int ret;

	ret = FUNC0(env, "GNSS_TYPE=%s", FUNC1(gdev));
	if (ret)
		return ret;

	return 0;
}