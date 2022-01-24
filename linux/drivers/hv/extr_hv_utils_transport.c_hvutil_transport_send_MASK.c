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
struct TYPE_4__ {int /*<<< orphan*/  val; int /*<<< orphan*/  idx; } ;
struct hvutil_transport {scalar_t__ mode; int outmsg_len; void (* on_read ) () ;int /*<<< orphan*/  lock; int /*<<< orphan*/  outmsg_q; void* outmsg; TYPE_2__ cn_id; } ;
struct TYPE_3__ {int /*<<< orphan*/  val; int /*<<< orphan*/  idx; } ;
struct cn_msg {int len; void* data; TYPE_1__ id; } ;

/* Variables and functions */
 int EFAULT ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ HVUTIL_TRANSPORT_CHARDEV ; 
 scalar_t__ HVUTIL_TRANSPORT_DESTROY ; 
 scalar_t__ HVUTIL_TRANSPORT_INIT ; 
 scalar_t__ HVUTIL_TRANSPORT_NETLINK ; 
 int FUNC0 (struct cn_msg*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct cn_msg*) ; 
 void* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (void*,void*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

int FUNC7(struct hvutil_transport *hvt, void *msg, int len,
			  void (*on_read_cb)(void))
{
	struct cn_msg *cn_msg;
	int ret = 0;

	if (hvt->mode == HVUTIL_TRANSPORT_INIT ||
	    hvt->mode == HVUTIL_TRANSPORT_DESTROY) {
		return -EINVAL;
	} else if (hvt->mode == HVUTIL_TRANSPORT_NETLINK) {
		cn_msg = FUNC2(sizeof(*cn_msg) + len, GFP_ATOMIC);
		if (!cn_msg)
			return -ENOMEM;
		cn_msg->id.idx = hvt->cn_id.idx;
		cn_msg->id.val = hvt->cn_id.val;
		cn_msg->len = len;
		FUNC3(cn_msg->data, msg, len);
		ret = FUNC0(cn_msg, 0, 0, GFP_ATOMIC);
		FUNC1(cn_msg);
		/*
		 * We don't know when netlink messages are delivered but unlike
		 * in CHARDEV mode we're not blocked and we can send next
		 * messages right away.
		 */
		if (on_read_cb)
			on_read_cb();
		return ret;
	}
	/* HVUTIL_TRANSPORT_CHARDEV */
	FUNC4(&hvt->lock);
	if (hvt->mode != HVUTIL_TRANSPORT_CHARDEV) {
		ret = -EINVAL;
		goto out_unlock;
	}

	if (hvt->outmsg) {
		/* Previous message wasn't received */
		ret = -EFAULT;
		goto out_unlock;
	}
	hvt->outmsg = FUNC2(len, GFP_KERNEL);
	if (hvt->outmsg) {
		FUNC3(hvt->outmsg, msg, len);
		hvt->outmsg_len = len;
		hvt->on_read = on_read_cb;
		FUNC6(&hvt->outmsg_q);
	} else
		ret = -ENOMEM;
out_unlock:
	FUNC5(&hvt->lock);
	return ret;
}