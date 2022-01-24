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
typedef  int /*<<< orphan*/  u8 ;
struct uhid_get_report_reply_req {int /*<<< orphan*/  data; scalar_t__ size; scalar_t__ err; } ;
struct TYPE_5__ {unsigned char rnum; int /*<<< orphan*/  id; int /*<<< orphan*/  rtype; } ;
struct TYPE_6__ {TYPE_1__ get_report; } ;
struct uhid_event {TYPE_2__ u; int /*<<< orphan*/  type; } ;
struct TYPE_7__ {struct uhid_get_report_reply_req get_report_reply; } ;
struct TYPE_8__ {TYPE_3__ u; } ;
struct uhid_device {int /*<<< orphan*/  report_lock; TYPE_4__ report_buf; int /*<<< orphan*/  running; } ;
struct hid_device {struct uhid_device* driver_data; } ;

/* Variables and functions */
 int EIO ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ UHID_DATA_MAX ; 
 int /*<<< orphan*/  UHID_GET_REPORT ; 
 int FUNC0 (struct uhid_device*,struct uhid_event*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct uhid_event*) ; 
 struct uhid_event* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int FUNC4 (size_t,size_t,size_t) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7(struct hid_device *hid, unsigned char rnum,
			       u8 *buf, size_t count, u8 rtype)
{
	struct uhid_device *uhid = hid->driver_data;
	struct uhid_get_report_reply_req *req;
	struct uhid_event *ev;
	int ret;

	if (!uhid->running)
		return -EIO;

	ev = FUNC2(sizeof(*ev), GFP_KERNEL);
	if (!ev)
		return -ENOMEM;

	ev->type = UHID_GET_REPORT;
	ev->u.get_report.rnum = rnum;
	ev->u.get_report.rtype = rtype;

	ret = FUNC5(&uhid->report_lock);
	if (ret) {
		FUNC1(ev);
		return ret;
	}

	/* this _always_ takes ownership of @ev */
	ret = FUNC0(uhid, ev, &ev->u.get_report.id);
	if (ret)
		goto unlock;

	req = &uhid->report_buf.u.get_report_reply;
	if (req->err) {
		ret = -EIO;
	} else {
		ret = FUNC4(count, (size_t)req->size, (size_t)UHID_DATA_MAX);
		FUNC3(buf, req->data, ret);
	}

unlock:
	FUNC6(&uhid->report_lock);
	return ret;
}