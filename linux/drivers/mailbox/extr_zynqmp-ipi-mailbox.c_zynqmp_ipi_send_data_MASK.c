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
typedef  int /*<<< orphan*/  u64 ;
struct zynqmp_ipi_message {scalar_t__ len; int /*<<< orphan*/  data; } ;
struct zynqmp_ipi_mchan {scalar_t__ chan_type; scalar_t__ req_buf_size; scalar_t__ resp_buf_size; int /*<<< orphan*/  resp_buf; int /*<<< orphan*/  req_buf; } ;
struct zynqmp_ipi_mbox {int dummy; } ;
struct mbox_chan {struct zynqmp_ipi_mchan* con_priv; TYPE_1__* mbox; } ;
struct device {int dummy; } ;
struct arm_smccc_res {int dummy; } ;
struct TYPE_2__ {struct device* dev; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ IPI_MB_CHNL_TX ; 
 int /*<<< orphan*/  IPI_SMC_ACK_EIRQ_MASK ; 
 int /*<<< orphan*/  SMC_IPI_MAILBOX_ACK ; 
 int /*<<< orphan*/  SMC_IPI_MAILBOX_NOTIFY ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*,...) ; 
 struct zynqmp_ipi_mbox* FUNC2 (struct device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct zynqmp_ipi_mbox*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct arm_smccc_res*) ; 

__attribute__((used)) static int FUNC5(struct mbox_chan *chan, void *data)
{
	struct device *dev = chan->mbox->dev;
	struct zynqmp_ipi_mbox *ipi_mbox = FUNC2(dev);
	struct zynqmp_ipi_mchan *mchan = chan->con_priv;
	struct zynqmp_ipi_message *msg = data;
	u64 arg0;
	struct arm_smccc_res res;

	if (FUNC0(!ipi_mbox)) {
		FUNC1(dev, "no platform drv data??\n");
		return -EINVAL;
	}

	if (mchan->chan_type == IPI_MB_CHNL_TX) {
		/* Send request message */
		if (msg && msg->len > mchan->req_buf_size) {
			FUNC1(dev, "channel %d message length %u > max %lu\n",
				mchan->chan_type, (unsigned int)msg->len,
				mchan->req_buf_size);
			return -EINVAL;
		}
		if (msg && msg->len)
			FUNC3(mchan->req_buf, msg->data, msg->len);
		/* Kick IPI mailbox to send message */
		arg0 = SMC_IPI_MAILBOX_NOTIFY;
		FUNC4(ipi_mbox, arg0, 0, &res);
	} else {
		/* Send response message */
		if (msg && msg->len > mchan->resp_buf_size) {
			FUNC1(dev, "channel %d message length %u > max %lu\n",
				mchan->chan_type, (unsigned int)msg->len,
				mchan->resp_buf_size);
			return -EINVAL;
		}
		if (msg && msg->len)
			FUNC3(mchan->resp_buf, msg->data, msg->len);
		arg0 = SMC_IPI_MAILBOX_ACK;
		FUNC4(ipi_mbox, arg0, IPI_SMC_ACK_EIRQ_MASK,
				   &res);
	}
	return 0;
}