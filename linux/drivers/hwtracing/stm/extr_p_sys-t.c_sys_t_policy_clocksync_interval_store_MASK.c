#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct sys_t_policy_node {int /*<<< orphan*/  clocksync_interval; } ;
struct mutex {int dummy; } ;
struct config_item {TYPE_2__* ci_group; } ;
typedef  size_t ssize_t ;
struct TYPE_4__ {TYPE_1__* cg_subsys; } ;
struct TYPE_3__ {struct mutex su_mutex; } ;

/* Variables and functions */
 int FUNC0 (char const*,int,unsigned int*) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (struct mutex*) ; 
 int /*<<< orphan*/  FUNC3 (struct mutex*) ; 
 struct sys_t_policy_node* FUNC4 (struct config_item*) ; 

__attribute__((used)) static ssize_t
FUNC5(struct config_item *item,
				      const char *page, size_t count)
{
	struct mutex *mutexp = &item->ci_group->cg_subsys->su_mutex;
	struct sys_t_policy_node *pn = FUNC4(item);
	unsigned int ms;
	int ret;

	FUNC2(mutexp);
	ret = FUNC0(page, 10, &ms);
	FUNC3(mutexp);

	if (!ret) {
		pn->clocksync_interval = FUNC1(ms);
		return count;
	}

	return ret;
}