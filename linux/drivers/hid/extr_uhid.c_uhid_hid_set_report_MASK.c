#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct TYPE_6__ {unsigned char rnum; size_t size; int /*<<< orphan*/  id; int /*<<< orphan*/  data; int /*<<< orphan*/  rtype; } ;
struct TYPE_7__ {TYPE_1__ set_report; } ;
struct uhid_event {TYPE_2__ u; int /*<<< orphan*/  type; } ;
struct TYPE_8__ {scalar_t__ err; } ;
struct TYPE_9__ {TYPE_3__ set_report_reply; } ;
struct TYPE_10__ {TYPE_4__ u; } ;
struct uhid_device {int /*<<< orphan*/  report_lock; TYPE_5__ report_buf; int /*<<< orphan*/  running; } ;
struct hid_device {struct uhid_device* driver_data; } ;

/* Variables and functions */
 int EIO ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 size_t UHID_DATA_MAX ; 
 int /*<<< orphan*/  UHID_SET_REPORT ; 
 int FUNC0 (struct uhid_device*,struct uhid_event*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct uhid_event*) ; 
 struct uhid_event* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*,size_t) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(struct hid_device *hid, unsigned char rnum,
			       const u8 *buf, size_t count, u8 rtype)
{
	struct uhid_device *uhid = hid->driver_data;
	struct uhid_event *ev;
	int ret;

	if (!uhid->running || count > UHID_DATA_MAX)
		return -EIO;

	ev = FUNC2(sizeof(*ev), GFP_KERNEL);
	if (!ev)
		return -ENOMEM;

	ev->type = UHID_SET_REPORT;
	ev->u.set_report.rnum = rnum;
	ev->u.set_report.rtype = rtype;
	ev->u.set_report.size = count;
	FUNC3(ev->u.set_report.data, buf, count);

	ret = FUNC4(&uhid->report_lock);
	if (ret) {
		FUNC1(ev);
		return ret;
	}

	/* this _always_ takes ownership of @ev */
	ret = FUNC0(uhid, ev, &ev->u.set_report.id);
	if (ret)
		goto unlock;

	if (uhid->report_buf.u.set_report_reply.err)
		ret = -EIO;
	else
		ret = count;

unlock:
	FUNC5(&uhid->report_lock);
	return ret;
}