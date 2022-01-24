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
struct uhid_event {int /*<<< orphan*/  type; } ;
struct uhid_device {int /*<<< orphan*/  qlock; } ;
typedef  int /*<<< orphan*/  __u32 ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 struct uhid_event* FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (struct uhid_device*,struct uhid_event*) ; 

__attribute__((used)) static int FUNC4(struct uhid_device *uhid, __u32 event)
{
	unsigned long flags;
	struct uhid_event *ev;

	ev = FUNC0(sizeof(*ev), GFP_KERNEL);
	if (!ev)
		return -ENOMEM;

	ev->type = event;

	FUNC1(&uhid->qlock, flags);
	FUNC3(uhid, ev);
	FUNC2(&uhid->qlock, flags);

	return 0;
}