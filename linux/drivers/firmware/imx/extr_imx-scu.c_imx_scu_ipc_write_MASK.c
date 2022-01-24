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
typedef  int /*<<< orphan*/  u32 ;
struct imx_sc_rpc_msg {int size; int /*<<< orphan*/  func; int /*<<< orphan*/  svc; } ;
struct imx_sc_ipc {struct imx_sc_chan* chans; int /*<<< orphan*/  dev; } ;
struct imx_sc_chan {int /*<<< orphan*/  ch; } ;

/* Variables and functions */
 int EINVAL ; 
 int IMX_SC_RPC_MAX_MSG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC2(struct imx_sc_ipc *sc_ipc, void *msg)
{
	struct imx_sc_rpc_msg *hdr = msg;
	struct imx_sc_chan *sc_chan;
	u32 *data = msg;
	int ret;
	int i;

	/* Check size */
	if (hdr->size > IMX_SC_RPC_MAX_MSG)
		return -EINVAL;

	FUNC0(sc_ipc->dev, "RPC SVC %u FUNC %u SIZE %u\n", hdr->svc,
		hdr->func, hdr->size);

	for (i = 0; i < hdr->size; i++) {
		sc_chan = &sc_ipc->chans[i % 4];
		ret = FUNC1(sc_chan->ch, &data[i]);
		if (ret < 0)
			return ret;
	}

	return 0;
}