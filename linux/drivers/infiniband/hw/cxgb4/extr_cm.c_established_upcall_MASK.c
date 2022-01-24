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
struct iw_cm_event {int /*<<< orphan*/  ord; int /*<<< orphan*/  ird; int /*<<< orphan*/  event; } ;
struct TYPE_3__ {int /*<<< orphan*/  history; TYPE_2__* cm_id; } ;
struct c4iw_ep {TYPE_1__ com; int /*<<< orphan*/  hwtid; int /*<<< orphan*/  ird; int /*<<< orphan*/  ord; } ;
typedef  int /*<<< orphan*/  event ;
struct TYPE_4__ {int /*<<< orphan*/  (* event_handler ) (TYPE_2__*,struct iw_cm_event*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  ESTAB_UPCALL ; 
 int /*<<< orphan*/  IW_CM_EVENT_ESTABLISHED ; 
 int /*<<< orphan*/  FUNC0 (struct iw_cm_event*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,struct c4iw_ep*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,struct iw_cm_event*) ; 

__attribute__((used)) static void FUNC4(struct c4iw_ep *ep)
{
	struct iw_cm_event event;

	FUNC1("ep %p tid %u\n", ep, ep->hwtid);
	FUNC0(&event, 0, sizeof(event));
	event.event = IW_CM_EVENT_ESTABLISHED;
	event.ird = ep->ord;
	event.ord = ep->ird;
	if (ep->com.cm_id) {
		FUNC1("ep %p tid %u\n", ep, ep->hwtid);
		ep->com.cm_id->event_handler(ep->com.cm_id, &event);
		FUNC2(ESTAB_UPCALL, &ep->com.history);
	}
}