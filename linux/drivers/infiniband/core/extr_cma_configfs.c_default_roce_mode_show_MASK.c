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
typedef  int ssize_t ;

/* Variables and functions */
 int FUNC0 (struct config_item*,struct cma_device**,struct cma_dev_port_group**) ; 
 int /*<<< orphan*/  FUNC1 (struct cma_device*) ; 
 int FUNC2 (struct cma_device*,int /*<<< orphan*/ ) ; 
 char* FUNC3 (int) ; 
 int FUNC4 (char*,char*,char*) ; 

__attribute__((used)) static ssize_t FUNC5(struct config_item *item,
				      char *buf)
{
	struct cma_device *cma_dev;
	struct cma_dev_port_group *group;
	int gid_type;
	ssize_t ret;

	ret = FUNC0(item, &cma_dev, &group);
	if (ret)
		return ret;

	gid_type = FUNC2(cma_dev, group->port_num);
	FUNC1(cma_dev);

	if (gid_type < 0)
		return gid_type;

	return FUNC4(buf, "%s\n", FUNC3(gid_type));
}