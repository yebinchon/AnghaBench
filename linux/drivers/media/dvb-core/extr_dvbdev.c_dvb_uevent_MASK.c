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
struct kobj_uevent_env {int dummy; } ;
struct dvb_device {size_t type; int /*<<< orphan*/  id; TYPE_1__* adapter; } ;
struct device {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  num; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct kobj_uevent_env*,char*,int /*<<< orphan*/ ) ; 
 struct dvb_device* FUNC1 (struct device*) ; 
 int /*<<< orphan*/ * dnames ; 

__attribute__((used)) static int FUNC2(struct device *dev, struct kobj_uevent_env *env)
{
	struct dvb_device *dvbdev = FUNC1(dev);

	FUNC0(env, "DVB_ADAPTER_NUM=%d", dvbdev->adapter->num);
	FUNC0(env, "DVB_DEVICE_TYPE=%s", dnames[dvbdev->type]);
	FUNC0(env, "DVB_DEVICE_NUM=%d", dvbdev->id);
	return 0;
}