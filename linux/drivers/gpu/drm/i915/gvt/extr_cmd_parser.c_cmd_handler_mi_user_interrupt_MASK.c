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
struct parser_exec_state {size_t ring_id; TYPE_1__* workload; } ;
struct TYPE_4__ {int /*<<< orphan*/  mi_user_interrupt; } ;
struct TYPE_3__ {int /*<<< orphan*/  pending_events; } ;

/* Variables and functions */
 int /*<<< orphan*/  MI_NOOP ; 
 TYPE_2__* cmd_interrupt_events ; 
 int /*<<< orphan*/  FUNC0 (struct parser_exec_state*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct parser_exec_state*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct parser_exec_state *s)
{
	FUNC2(cmd_interrupt_events[s->ring_id].mi_user_interrupt,
			s->workload->pending_events);
	FUNC1(s, FUNC0(s, 0), MI_NOOP);
	return 0;
}