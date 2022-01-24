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
typedef  int /*<<< orphan*/  u8 ;
struct es2_ap_dev {TYPE_2__* usb_dev; int /*<<< orphan*/  arpc_lock; } ;
struct arpc {TYPE_1__* resp; int /*<<< orphan*/  response_received; } ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;
struct TYPE_3__ {int result; } ;

/* Variables and functions */
 int ENOMEM ; 
 int EREMOTEIO ; 
 int ETIMEDOUT ; 
 int /*<<< orphan*/  FUNC0 (struct es2_ap_dev*,struct arpc*) ; 
 struct arpc* FUNC1 (void*,size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct es2_ap_dev*,struct arpc*) ; 
 int /*<<< orphan*/  FUNC3 (struct arpc*) ; 
 int FUNC4 (struct es2_ap_dev*,struct arpc*,unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC6 (unsigned int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 
 int FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC10(struct es2_ap_dev *es2, u8 type, void *payload,
		     size_t size, int *result, unsigned int timeout)
{
	struct arpc *rpc;
	unsigned long flags;
	int retval;

	if (result)
		*result = 0;

	rpc = FUNC1(payload, size, type);
	if (!rpc)
		return -ENOMEM;

	FUNC7(&es2->arpc_lock, flags);
	FUNC0(es2, rpc);
	FUNC8(&es2->arpc_lock, flags);

	retval = FUNC4(es2, rpc, timeout);
	if (retval)
		goto out_arpc_del;

	retval = FUNC9(
						&rpc->response_received,
						FUNC6(timeout));
	if (retval <= 0) {
		if (!retval)
			retval = -ETIMEDOUT;
		goto out_arpc_del;
	}

	if (rpc->resp->result) {
		retval = -EREMOTEIO;
		if (result)
			*result = rpc->resp->result;
	} else {
		retval = 0;
	}

out_arpc_del:
	FUNC7(&es2->arpc_lock, flags);
	FUNC2(es2, rpc);
	FUNC8(&es2->arpc_lock, flags);
	FUNC3(rpc);

	if (retval < 0 && retval != -EREMOTEIO) {
		FUNC5(&es2->usb_dev->dev,
			"failed to execute ARPC: %d\n", retval);
	}

	return retval;
}