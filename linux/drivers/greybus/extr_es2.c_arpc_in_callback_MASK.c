#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct urb {int actual_length; struct arpc_response_message* transfer_buffer; TYPE_1__* dev; struct es2_ap_dev* context; } ;
struct es2_ap_dev {int /*<<< orphan*/  arpc_lock; } ;
struct device {int dummy; } ;
struct arpc_response_message {int /*<<< orphan*/  id; } ;
struct arpc {int /*<<< orphan*/  response_received; int /*<<< orphan*/  resp; } ;
struct TYPE_2__ {struct device dev; } ;

/* Variables and functions */
 int EAGAIN ; 
 int ENOENT ; 
 int EPROTO ; 
 int ESHUTDOWN ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  FUNC0 (struct es2_ap_dev*,struct arpc*) ; 
 struct arpc* FUNC1 (struct es2_ap_dev*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct urb*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct device*,char*,...) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,struct arpc_response_message*,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 
 int FUNC9 (struct urb*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC10(struct urb *urb)
{
	struct es2_ap_dev *es2 = urb->context;
	struct device *dev = &urb->dev->dev;
	int status = FUNC2(urb);
	struct arpc *rpc;
	struct arpc_response_message *resp;
	unsigned long flags;
	int retval;

	if (status) {
		if ((status == -EAGAIN) || (status == -EPROTO))
			goto exit;

		/* The urb is being unlinked */
		if (status == -ENOENT || status == -ESHUTDOWN)
			return;

		FUNC4(dev, "arpc in-urb error %d (dropped)\n", status);
		return;
	}

	if (urb->actual_length < sizeof(*resp)) {
		FUNC4(dev, "short aprc response received\n");
		goto exit;
	}

	resp = urb->transfer_buffer;
	FUNC7(&es2->arpc_lock, flags);
	rpc = FUNC1(es2, resp->id);
	if (!rpc) {
		FUNC4(dev, "invalid arpc response id received: %u\n",
			FUNC5(resp->id));
		FUNC8(&es2->arpc_lock, flags);
		goto exit;
	}

	FUNC0(es2, rpc);
	FUNC6(rpc->resp, resp, sizeof(*resp));
	FUNC3(&rpc->response_received);
	FUNC8(&es2->arpc_lock, flags);

exit:
	/* put our urb back in the request pool */
	retval = FUNC9(urb, GFP_ATOMIC);
	if (retval)
		FUNC4(dev, "failed to resubmit arpc in-urb: %d\n", retval);
}