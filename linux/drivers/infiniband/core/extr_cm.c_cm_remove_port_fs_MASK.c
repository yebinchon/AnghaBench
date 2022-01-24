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
struct cm_port {TYPE_1__* counter_group; } ;
struct TYPE_2__ {int /*<<< orphan*/  obj; } ;

/* Variables and functions */
 int CM_COUNTER_GROUPS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC1(struct cm_port *port)
{
	int i;

	for (i = 0; i < CM_COUNTER_GROUPS; i++)
		FUNC0(&port->counter_group[i].obj);

}