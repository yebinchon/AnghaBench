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
typedef  int u8 ;
struct config_item {int dummy; } ;
struct cma_device {int dummy; } ;
struct cma_dev_port_group {int /*<<< orphan*/  port_num; } ;
typedef  scalar_t__ ssize_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct config_item*,struct cma_device**,struct cma_dev_port_group**) ; 
 int /*<<< orphan*/  FUNC1 (struct cma_device*) ; 
 int FUNC2 (struct cma_device*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (char*,char*,int) ; 

__attribute__((used)) static ssize_t FUNC4(struct config_item *item, char *buf)
{
	struct cma_device *cma_dev;
	struct cma_dev_port_group *group;
	ssize_t ret;
	u8 tos;

	ret = FUNC0(item, &cma_dev, &group);
	if (ret)
		return ret;

	tos = FUNC2(cma_dev, group->port_num);
	FUNC1(cma_dev);

	return FUNC3(buf, "%u\n", tos);
}