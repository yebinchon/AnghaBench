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
struct srpt_port {int /*<<< orphan*/  mutex; } ;
struct se_portal_group {int dummy; } ;
struct config_item {int dummy; } ;
typedef  size_t ssize_t ;

/* Variables and functions */
 size_t EINVAL ; 
 int FUNC0 (char const*,int /*<<< orphan*/ ,unsigned long*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 
 int /*<<< orphan*/  FUNC4 (struct srpt_port*,unsigned long) ; 
 struct srpt_port* FUNC5 (struct se_portal_group*) ; 
 struct se_portal_group* FUNC6 (struct config_item*) ; 

__attribute__((used)) static ssize_t FUNC7(struct config_item *item,
		const char *page, size_t count)
{
	struct se_portal_group *se_tpg = FUNC6(item);
	struct srpt_port *sport = FUNC5(se_tpg);
	unsigned long tmp;
	int ret;

	ret = FUNC0(page, 0, &tmp);
	if (ret < 0) {
		FUNC3("Unable to extract srpt_tpg_store_enable\n");
		return -EINVAL;
	}

	if ((tmp != 0) && (tmp != 1)) {
		FUNC3("Illegal value for srpt_tpg_store_enable: %lu\n", tmp);
		return -EINVAL;
	}

	FUNC1(&sport->mutex);
	FUNC4(sport, tmp);
	FUNC2(&sport->mutex);

	return count;
}