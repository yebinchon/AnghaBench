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
struct srpt_port {int enabled; } ;
struct se_portal_group {int dummy; } ;
struct config_item {int dummy; } ;
typedef  int /*<<< orphan*/  ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,char*,int) ; 
 struct srpt_port* FUNC1 (struct se_portal_group*) ; 
 struct se_portal_group* FUNC2 (struct config_item*) ; 

__attribute__((used)) static ssize_t FUNC3(struct config_item *item, char *page)
{
	struct se_portal_group *se_tpg = FUNC2(item);
	struct srpt_port *sport = FUNC1(se_tpg);

	return FUNC0(page, PAGE_SIZE, "%d\n", sport->enabled);
}