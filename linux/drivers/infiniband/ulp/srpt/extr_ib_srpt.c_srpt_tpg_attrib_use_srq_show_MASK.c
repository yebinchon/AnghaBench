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
struct TYPE_2__ {int use_srq; } ;
struct srpt_port {TYPE_1__ port_attrib; } ;
struct se_portal_group {int dummy; } ;
struct config_item {int dummy; } ;
typedef  int /*<<< orphan*/  ssize_t ;

/* Variables and functions */
 struct se_portal_group* FUNC0 (struct config_item*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,int) ; 
 struct srpt_port* FUNC2 (struct se_portal_group*) ; 

__attribute__((used)) static ssize_t FUNC3(struct config_item *item,
					    char *page)
{
	struct se_portal_group *se_tpg = FUNC0(item);
	struct srpt_port *sport = FUNC2(se_tpg);

	return FUNC1(page, "%d\n", sport->port_attrib.use_srq);
}