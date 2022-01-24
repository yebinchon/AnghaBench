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
struct zynqmp_ipi_message {int dummy; } ;
struct zynqmp_ipi_mchan {int req_buf_size; int resp_buf_size; size_t chan_type; void* rx_buf; void* resp_buf; void* req_buf; } ;
struct mbox_controller {int num_chans; int txdone_irq; int txdone_poll; int txpoll_period; struct mbox_chan* chans; int /*<<< orphan*/  of_xlate; int /*<<< orphan*/ * ops; struct device* dev; } ;
struct device {int /*<<< orphan*/ * driver; int /*<<< orphan*/ * release; struct device_node* of_node; struct device* parent; } ;
struct zynqmp_ipi_mbox {struct zynqmp_ipi_mchan* mchans; struct mbox_controller mbox; int /*<<< orphan*/  remote_id; struct device dev; TYPE_1__* pdata; } ;
struct resource {int /*<<< orphan*/  start; } ;
struct mbox_chan {struct zynqmp_ipi_mchan* con_priv; } ;
struct device_node {int dummy; } ;
struct TYPE_2__ {struct device* dev; } ;

/* Variables and functions */
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 size_t IPI_MB_CHNL_RX ; 
 size_t IPI_MB_CHNL_TX ; 
 scalar_t__ FUNC0 (void*) ; 
 int FUNC1 (void*) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct device*,struct zynqmp_ipi_mbox*) ; 
 int /*<<< orphan*/  FUNC5 (struct device*,char*,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct device*) ; 
 void* FUNC7 (struct device*,int /*<<< orphan*/ ,int) ; 
 void* FUNC8 (struct device*,int,int /*<<< orphan*/ ) ; 
 int FUNC9 (struct device*,struct mbox_controller*) ; 
 int /*<<< orphan*/  FUNC10 (struct device_node*) ; 
 int FUNC11 (struct device_node*,char*,int /*<<< orphan*/ *) ; 
 void* FUNC12 (struct resource*) ; 
 int /*<<< orphan*/  zynqmp_ipi_chan_ops ; 
 int /*<<< orphan*/ * zynqmp_ipi_mbox_dev_release ; 
 int /*<<< orphan*/  zynqmp_ipi_mbox_driver ; 
 int FUNC13 (struct device_node*,char const*,struct resource*) ; 
 int /*<<< orphan*/  zynqmp_ipi_of_xlate ; 

__attribute__((used)) static int FUNC14(struct zynqmp_ipi_mbox *ipi_mbox,
				 struct device_node *node)
{
	struct zynqmp_ipi_mchan *mchan;
	struct mbox_chan *chans;
	struct mbox_controller *mbox;
	struct resource res;
	struct device *dev, *mdev;
	const char *name;
	int ret;

	dev = ipi_mbox->pdata->dev;
	/* Initialize dev for IPI mailbox */
	ipi_mbox->dev.parent = dev;
	ipi_mbox->dev.release = NULL;
	ipi_mbox->dev.of_node = node;
	FUNC5(&ipi_mbox->dev, "%s", FUNC10(node));
	FUNC4(&ipi_mbox->dev, ipi_mbox);
	ipi_mbox->dev.release = zynqmp_ipi_mbox_dev_release;
	ipi_mbox->dev.driver = &zynqmp_ipi_mbox_driver;
	ret = FUNC6(&ipi_mbox->dev);
	if (ret) {
		FUNC2(dev, "Failed to register ipi mbox dev.\n");
		return ret;
	}
	mdev = &ipi_mbox->dev;

	mchan = &ipi_mbox->mchans[IPI_MB_CHNL_TX];
	name = "local_request_region";
	ret = FUNC13(node, name, &res);
	if (!ret) {
		mchan->req_buf_size = FUNC12(&res);
		mchan->req_buf = FUNC7(mdev, res.start,
					      mchan->req_buf_size);
		if (FUNC0(mchan->req_buf)) {
			FUNC2(mdev, "Unable to map IPI buffer I/O memory\n");
			ret = FUNC1(mchan->req_buf);
			return ret;
		}
	} else if (ret != -ENODEV) {
		FUNC2(mdev, "Unmatched resource %s, %d.\n", name, ret);
		return ret;
	}

	name = "remote_response_region";
	ret = FUNC13(node, name, &res);
	if (!ret) {
		mchan->resp_buf_size = FUNC12(&res);
		mchan->resp_buf = FUNC7(mdev, res.start,
					       mchan->resp_buf_size);
		if (FUNC0(mchan->resp_buf)) {
			FUNC2(mdev, "Unable to map IPI buffer I/O memory\n");
			ret = FUNC1(mchan->resp_buf);
			return ret;
		}
	} else if (ret != -ENODEV) {
		FUNC2(mdev, "Unmatched resource %s.\n", name);
		return ret;
	}
	mchan->rx_buf = FUNC8(mdev,
				     mchan->resp_buf_size +
				     sizeof(struct zynqmp_ipi_message),
				     GFP_KERNEL);
	if (!mchan->rx_buf)
		return -ENOMEM;

	mchan = &ipi_mbox->mchans[IPI_MB_CHNL_RX];
	name = "remote_request_region";
	ret = FUNC13(node, name, &res);
	if (!ret) {
		mchan->req_buf_size = FUNC12(&res);
		mchan->req_buf = FUNC7(mdev, res.start,
					      mchan->req_buf_size);
		if (FUNC0(mchan->req_buf)) {
			FUNC2(mdev, "Unable to map IPI buffer I/O memory\n");
			ret = FUNC1(mchan->req_buf);
			return ret;
		}
	} else if (ret != -ENODEV) {
		FUNC2(mdev, "Unmatched resource %s.\n", name);
		return ret;
	}

	name = "local_response_region";
	ret = FUNC13(node, name, &res);
	if (!ret) {
		mchan->resp_buf_size = FUNC12(&res);
		mchan->resp_buf = FUNC7(mdev, res.start,
					       mchan->resp_buf_size);
		if (FUNC0(mchan->resp_buf)) {
			FUNC2(mdev, "Unable to map IPI buffer I/O memory\n");
			ret = FUNC1(mchan->resp_buf);
			return ret;
		}
	} else if (ret != -ENODEV) {
		FUNC2(mdev, "Unmatched resource %s.\n", name);
		return ret;
	}
	mchan->rx_buf = FUNC8(mdev,
				     mchan->resp_buf_size +
				     sizeof(struct zynqmp_ipi_message),
				     GFP_KERNEL);
	if (!mchan->rx_buf)
		return -ENOMEM;

	/* Get the IPI remote agent ID */
	ret = FUNC11(node, "xlnx,ipi-id", &ipi_mbox->remote_id);
	if (ret < 0) {
		FUNC2(dev, "No IPI remote ID is specified.\n");
		return ret;
	}

	mbox = &ipi_mbox->mbox;
	mbox->dev = mdev;
	mbox->ops = &zynqmp_ipi_chan_ops;
	mbox->num_chans = 2;
	mbox->txdone_irq = false;
	mbox->txdone_poll = true;
	mbox->txpoll_period = 5;
	mbox->of_xlate = zynqmp_ipi_of_xlate;
	chans = FUNC8(mdev, 2 * sizeof(*chans), GFP_KERNEL);
	if (!chans)
		return -ENOMEM;
	mbox->chans = chans;
	chans[IPI_MB_CHNL_TX].con_priv = &ipi_mbox->mchans[IPI_MB_CHNL_TX];
	chans[IPI_MB_CHNL_RX].con_priv = &ipi_mbox->mchans[IPI_MB_CHNL_RX];
	ipi_mbox->mchans[IPI_MB_CHNL_TX].chan_type = IPI_MB_CHNL_TX;
	ipi_mbox->mchans[IPI_MB_CHNL_RX].chan_type = IPI_MB_CHNL_RX;
	ret = FUNC9(mdev, mbox);
	if (ret)
		FUNC2(mdev,
			"Failed to register mbox_controller(%d)\n", ret);
	else
		FUNC3(mdev,
			 "Registered ZynqMP IPI mbox with TX/RX channels.\n");
	return ret;
}