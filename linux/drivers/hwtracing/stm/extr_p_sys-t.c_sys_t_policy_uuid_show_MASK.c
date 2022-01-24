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
struct sys_t_policy_node {int /*<<< orphan*/  uuid; } ;
struct config_item {int dummy; } ;
typedef  int /*<<< orphan*/  ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char*,int /*<<< orphan*/ *) ; 
 struct sys_t_policy_node* FUNC1 (struct config_item*) ; 

__attribute__((used)) static ssize_t FUNC2(struct config_item *item,
				      char *page)
{
	struct sys_t_policy_node *pn = FUNC1(item);

	return FUNC0(page, "%pU\n", &pn->uuid);
}