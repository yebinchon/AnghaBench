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
struct TYPE_2__ {unsigned long use_srq; } ;
struct srpt_port {int enabled; int /*<<< orphan*/  mutex; TYPE_1__ port_attrib; struct srpt_device* sdev; } ;
struct srpt_device {int /*<<< orphan*/  sdev_mutex; } ;
struct se_portal_group {int dummy; } ;
struct config_item {int dummy; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int EINVAL ; 
 struct se_portal_group* FUNC0 (struct config_item*) ; 
 int FUNC1 (char const*,int /*<<< orphan*/ ,unsigned long*) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct srpt_port*,int) ; 
 struct srpt_port* FUNC5 (struct se_portal_group*) ; 
 int /*<<< orphan*/  FUNC6 (struct srpt_device*,unsigned long) ; 

__attribute__((used)) static ssize_t FUNC7(struct config_item *item,
					     const char *page, size_t count)
{
	struct se_portal_group *se_tpg = FUNC0(item);
	struct srpt_port *sport = FUNC5(se_tpg);
	struct srpt_device *sdev = sport->sdev;
	unsigned long val;
	bool enabled;
	int ret;

	ret = FUNC1(page, 0, &val);
	if (ret < 0)
		return ret;
	if (val != !!val)
		return -EINVAL;

	ret = FUNC2(&sdev->sdev_mutex);
	if (ret < 0)
		return ret;
	ret = FUNC2(&sport->mutex);
	if (ret < 0)
		goto unlock_sdev;
	enabled = sport->enabled;
	/* Log out all initiator systems before changing 'use_srq'. */
	FUNC4(sport, false);
	sport->port_attrib.use_srq = val;
	FUNC6(sdev, sport->port_attrib.use_srq);
	FUNC4(sport, enabled);
	ret = count;
	FUNC3(&sport->mutex);
unlock_sdev:
	FUNC3(&sdev->sdev_mutex);

	return ret;
}