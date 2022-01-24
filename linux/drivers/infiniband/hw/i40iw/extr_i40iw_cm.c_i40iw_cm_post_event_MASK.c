#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {TYPE_4__* cm_id; } ;
struct i40iw_cm_event {int /*<<< orphan*/  event_work; TYPE_2__* cm_node; TYPE_1__ cm_info; } ;
struct TYPE_8__ {int /*<<< orphan*/  (* add_ref ) (TYPE_4__*) ;} ;
struct TYPE_7__ {int /*<<< orphan*/  event_wq; } ;
struct TYPE_6__ {TYPE_3__* cm_core; int /*<<< orphan*/  ref_count; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  i40iw_cm_event_handler ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*) ; 

__attribute__((used)) static void FUNC4(struct i40iw_cm_event *event)
{
	FUNC1(&event->cm_node->ref_count);
	event->cm_info.cm_id->add_ref(event->cm_info.cm_id);
	FUNC0(&event->event_work, i40iw_cm_event_handler);

	FUNC2(event->cm_node->cm_core->event_wq, &event->event_work);
}