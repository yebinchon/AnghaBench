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
struct xenkbd_info {int gref; int irq; int /*<<< orphan*/  page; } ;
struct xenbus_transaction {int dummy; } ;
struct xenbus_device {int /*<<< orphan*/  nodename; int /*<<< orphan*/  devicetype; int /*<<< orphan*/  otherend_id; } ;

/* Variables and functions */
 int EAGAIN ; 
 int /*<<< orphan*/  XENKBD_FIELD_EVT_CHANNEL ; 
 int /*<<< orphan*/  XENKBD_FIELD_RING_GREF ; 
 int /*<<< orphan*/  XENKBD_FIELD_RING_REF ; 
 int /*<<< orphan*/  XenbusStateInitialised ; 
 int FUNC0 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct xenkbd_info*) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ,unsigned long) ; 
 int FUNC2 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  input_handler ; 
 int /*<<< orphan*/  FUNC3 (int,struct xenkbd_info*) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (struct xenbus_device*,int*) ; 
 int /*<<< orphan*/  FUNC6 (struct xenbus_device*,int,char*) ; 
 int /*<<< orphan*/  FUNC7 (struct xenbus_device*,int) ; 
 int FUNC8 (struct xenbus_transaction,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC9 (struct xenbus_device*,int /*<<< orphan*/ ) ; 
 int FUNC10 (struct xenbus_transaction,int) ; 
 int FUNC11 (struct xenbus_transaction*) ; 

__attribute__((used)) static int FUNC12(struct xenbus_device *dev,
				  struct xenkbd_info *info)
{
	int ret, evtchn;
	struct xenbus_transaction xbt;

	ret = FUNC2(dev->otherend_id,
	                                  FUNC4(info->page), 0);
	if (ret < 0)
		return ret;
	info->gref = ret;

	ret = FUNC5(dev, &evtchn);
	if (ret)
		goto error_grant;
	ret = FUNC0(evtchn, input_handler,
					0, dev->devicetype, info);
	if (ret < 0) {
		FUNC6(dev, ret, "bind_evtchn_to_irqhandler");
		goto error_evtchan;
	}
	info->irq = ret;

 again:
	ret = FUNC11(&xbt);
	if (ret) {
		FUNC6(dev, ret, "starting transaction");
		goto error_irqh;
	}
	ret = FUNC8(xbt, dev->nodename, XENKBD_FIELD_RING_REF, "%lu",
			    FUNC4(info->page));
	if (ret)
		goto error_xenbus;
	ret = FUNC8(xbt, dev->nodename, XENKBD_FIELD_RING_GREF,
			    "%u", info->gref);
	if (ret)
		goto error_xenbus;
	ret = FUNC8(xbt, dev->nodename, XENKBD_FIELD_EVT_CHANNEL, "%u",
			    evtchn);
	if (ret)
		goto error_xenbus;
	ret = FUNC10(xbt, 0);
	if (ret) {
		if (ret == -EAGAIN)
			goto again;
		FUNC6(dev, ret, "completing transaction");
		goto error_irqh;
	}

	FUNC9(dev, XenbusStateInitialised);
	return 0;

 error_xenbus:
	FUNC10(xbt, 1);
	FUNC6(dev, ret, "writing xenstore");
 error_irqh:
	FUNC3(info->irq, info);
	info->irq = -1;
 error_evtchan:
	FUNC7(dev, evtchn);
 error_grant:
	FUNC1(info->gref, 0, 0UL);
	info->gref = -1;
	return ret;
}