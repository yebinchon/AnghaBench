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
struct imx_sc_rpc_msg {int func; } ;
struct imx_sc_ipc {int /*<<< orphan*/  dev; int /*<<< orphan*/  lock; int /*<<< orphan*/  done; scalar_t__ count; void* msg; } ;

/* Variables and functions */
 int EINVAL ; 
 int ETIMEDOUT ; 
 int /*<<< orphan*/  MAX_RX_TIMEOUT ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,...) ; 
 int FUNC3 (int) ; 
 int FUNC4 (struct imx_sc_ipc*,void*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

int FUNC9(struct imx_sc_ipc *sc_ipc, void *msg, bool have_resp)
{
	struct imx_sc_rpc_msg *hdr;
	int ret;

	if (FUNC0(!sc_ipc || !msg))
		return -EINVAL;

	FUNC5(&sc_ipc->lock);
	FUNC7(&sc_ipc->done);

	sc_ipc->msg = msg;
	sc_ipc->count = 0;
	ret = FUNC4(sc_ipc, msg);
	if (ret < 0) {
		FUNC2(sc_ipc->dev, "RPC send msg failed: %d\n", ret);
		goto out;
	}

	if (have_resp) {
		if (!FUNC8(&sc_ipc->done,
						 MAX_RX_TIMEOUT)) {
			FUNC2(sc_ipc->dev, "RPC send msg timeout\n");
			FUNC6(&sc_ipc->lock);
			return -ETIMEDOUT;
		}

		/* response status is stored in hdr->func field */
		hdr = msg;
		ret = hdr->func;
	}

out:
	FUNC6(&sc_ipc->lock);

	FUNC1(sc_ipc->dev, "RPC SVC done\n");

	return FUNC3(ret);
}