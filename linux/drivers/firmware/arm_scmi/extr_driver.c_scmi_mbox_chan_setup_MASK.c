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
struct idr {int dummy; } ;
struct scmi_info {int /*<<< orphan*/  handle; int /*<<< orphan*/  dev; struct idr rx_idr; struct idr tx_idr; } ;
struct mbox_client {int tx_block; int knows_txdone; int /*<<< orphan*/ * tx_prepare; int /*<<< orphan*/  rx_callback; struct device* dev; } ;
struct scmi_chan_info {int /*<<< orphan*/ * handle; int /*<<< orphan*/  chan; int /*<<< orphan*/  payload; struct mbox_client cl; struct device* dev; } ;
struct resource {int /*<<< orphan*/  start; } ;
struct device_node {int dummy; } ;
struct device {struct device_node* of_node; } ;
typedef  int /*<<< orphan*/  resource_size_t ;

/* Variables and functions */
 int EADDRNOTAVAIL ; 
 int EINVAL ; 
 int ENOMEM ; 
 int EPROBE_DEFER ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SCMI_PROTOCOL_BASE ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct scmi_chan_info* FUNC4 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct idr*,struct scmi_chan_info*,int,int,int /*<<< orphan*/ ) ; 
 struct scmi_chan_info* FUNC6 (struct idr*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct mbox_client*,int) ; 
 int FUNC8 (struct device_node*,int /*<<< orphan*/ ,struct resource*) ; 
 int /*<<< orphan*/  FUNC9 (struct device_node*) ; 
 struct device_node* FUNC10 (struct device_node*,char*,int) ; 
 int /*<<< orphan*/  FUNC11 (struct resource*) ; 
 scalar_t__ FUNC12 (struct device_node*,int) ; 
 int /*<<< orphan*/  scmi_rx_callback ; 
 int /*<<< orphan*/ * scmi_tx_prepare ; 
 scalar_t__ FUNC13 (int) ; 

__attribute__((used)) static int FUNC14(struct scmi_info *info, struct device *dev,
				int prot_id, bool tx)
{
	int ret, idx;
	struct resource res;
	resource_size_t size;
	struct device_node *shmem, *np = dev->of_node;
	struct scmi_chan_info *cinfo;
	struct mbox_client *cl;
	struct idr *idr;
	const char *desc = tx ? "Tx" : "Rx";

	/* Transmit channel is first entry i.e. index 0 */
	idx = tx ? 0 : 1;
	idr = tx ? &info->tx_idr : &info->rx_idr;

	if (FUNC12(np, idx)) {
		cinfo = FUNC6(idr, SCMI_PROTOCOL_BASE);
		if (FUNC13(!cinfo)) /* Possible only if platform has no Rx */
			return -EINVAL;
		goto idr_alloc;
	}

	cinfo = FUNC4(info->dev, sizeof(*cinfo), GFP_KERNEL);
	if (!cinfo)
		return -ENOMEM;

	cinfo->dev = dev;

	cl = &cinfo->cl;
	cl->dev = dev;
	cl->rx_callback = scmi_rx_callback;
	cl->tx_prepare = tx ? scmi_tx_prepare : NULL;
	cl->tx_block = false;
	cl->knows_txdone = tx;

	shmem = FUNC10(np, "shmem", idx);
	ret = FUNC8(shmem, 0, &res);
	FUNC9(shmem);
	if (ret) {
		FUNC2(dev, "failed to get SCMI %s payload memory\n", desc);
		return ret;
	}

	size = FUNC11(&res);
	cinfo->payload = FUNC3(info->dev, res.start, size);
	if (!cinfo->payload) {
		FUNC2(dev, "failed to ioremap SCMI %s payload\n", desc);
		return -EADDRNOTAVAIL;
	}

	cinfo->chan = FUNC7(cl, idx);
	if (FUNC0(cinfo->chan)) {
		ret = FUNC1(cinfo->chan);
		if (ret != -EPROBE_DEFER)
			FUNC2(dev, "failed to request SCMI %s mailbox\n",
				desc);
		return ret;
	}

idr_alloc:
	ret = FUNC5(idr, cinfo, prot_id, prot_id + 1, GFP_KERNEL);
	if (ret != prot_id) {
		FUNC2(dev, "unable to allocate SCMI idr slot err %d\n", ret);
		return ret;
	}

	cinfo->handle = &info->handle;
	return 0;
}