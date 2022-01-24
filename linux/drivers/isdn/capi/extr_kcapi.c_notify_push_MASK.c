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
typedef  int /*<<< orphan*/  u32 ;
struct capictr_event {unsigned int type; int /*<<< orphan*/  work; int /*<<< orphan*/  controller; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  do_notify_work ; 
 int /*<<< orphan*/  kcapi_wq ; 
 struct capictr_event* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(unsigned int event_type, u32 controller)
{
	struct capictr_event *event = FUNC1(sizeof(*event), GFP_ATOMIC);

	if (!event)
		return -ENOMEM;

	FUNC0(&event->work, do_notify_work);
	event->type = event_type;
	event->controller = controller;

	FUNC2(kcapi_wq, &event->work);
	return 0;
}