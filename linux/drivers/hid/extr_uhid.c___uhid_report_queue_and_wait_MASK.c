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
struct uhid_event {scalar_t__ type; } ;
struct uhid_device {int report_running; int /*<<< orphan*/  running; int /*<<< orphan*/  report_wait; int /*<<< orphan*/  qlock; scalar_t__ report_type; scalar_t__ report_id; } ;
typedef  scalar_t__ __u32 ;

/* Variables and functions */
 int EIO ; 
 int ERESTARTSYS ; 
 int HZ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (struct uhid_device*,struct uhid_event*) ; 
 int FUNC3 (int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static int FUNC4(struct uhid_device *uhid,
					struct uhid_event *ev,
					__u32 *report_id)
{
	unsigned long flags;
	int ret;

	FUNC0(&uhid->qlock, flags);
	*report_id = ++uhid->report_id;
	uhid->report_type = ev->type + 1;
	uhid->report_running = true;
	FUNC2(uhid, ev);
	FUNC1(&uhid->qlock, flags);

	ret = FUNC3(uhid->report_wait,
				!uhid->report_running || !uhid->running,
				5 * HZ);
	if (!ret || !uhid->running || uhid->report_running)
		ret = -EIO;
	else if (ret < 0)
		ret = -ERESTARTSYS;
	else
		ret = 0;

	uhid->report_running = false;

	return ret;
}