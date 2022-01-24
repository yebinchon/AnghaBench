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
struct config_item {int dummy; } ;
struct cma_device {int dummy; } ;
struct cma_dev_port_group {int /*<<< orphan*/  port_num; } ;
typedef  scalar_t__ ssize_t ;

/* Variables and functions */
 scalar_t__ EINVAL ; 
 scalar_t__ FUNC0 (struct config_item*,struct cma_device**,struct cma_dev_port_group**) ; 
 int /*<<< orphan*/  FUNC1 (struct cma_device*) ; 
 scalar_t__ FUNC2 (struct cma_device*,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (char const*) ; 
 scalar_t__ FUNC4 (char const*,size_t) ; 

__attribute__((used)) static ssize_t FUNC5(struct config_item *item,
				       const char *buf, size_t count)
{
	struct cma_device *cma_dev;
	struct cma_dev_port_group *group;
	int gid_type = FUNC3(buf);
	ssize_t ret;

	if (gid_type < 0)
		return -EINVAL;

	ret = FUNC0(item, &cma_dev, &group);
	if (ret)
		return ret;

	ret = FUNC2(cma_dev, group->port_num, gid_type);

	FUNC1(cma_dev);

	return !ret ? FUNC4(buf, count) : ret;
}