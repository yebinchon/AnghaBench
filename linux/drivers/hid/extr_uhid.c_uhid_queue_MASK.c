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
struct uhid_event {int dummy; } ;
struct uhid_device {int head; int tail; int /*<<< orphan*/  hid; int /*<<< orphan*/  waitq; struct uhid_event** outq; } ;
typedef  int __u8 ;

/* Variables and functions */
 int UHID_BUFSIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct uhid_event*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct uhid_device *uhid, struct uhid_event *ev)
{
	__u8 newhead;

	newhead = (uhid->head + 1) % UHID_BUFSIZE;

	if (newhead != uhid->tail) {
		uhid->outq[uhid->head] = ev;
		uhid->head = newhead;
		FUNC2(&uhid->waitq);
	} else {
		FUNC0(uhid->hid, "Output queue is full\n");
		FUNC1(ev);
	}
}