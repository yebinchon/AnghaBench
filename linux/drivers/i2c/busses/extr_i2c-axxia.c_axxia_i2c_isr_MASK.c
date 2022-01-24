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
typedef  int u32 ;
struct axxia_i2c_dev {scalar_t__ msg_xfrd_r; scalar_t__ base; int /*<<< orphan*/  msg_complete; int /*<<< orphan*/  msg_err; TYPE_1__* msg_r; scalar_t__ last; TYPE_1__* msg; int /*<<< orphan*/  dev; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;
struct TYPE_2__ {scalar_t__ len; int /*<<< orphan*/  addr; } ;

/* Variables and functions */
 int /*<<< orphan*/  EAGAIN ; 
 int /*<<< orphan*/  EIO ; 
 int /*<<< orphan*/  ENXIO ; 
 int /*<<< orphan*/  ETIMEDOUT ; 
 scalar_t__ INTERRUPT_STATUS ; 
 int INT_MST ; 
 int INT_SLV ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  IRQ_NONE ; 
 scalar_t__ MST_INT_STATUS ; 
 scalar_t__ MST_RX_BYTES_XFRD ; 
 scalar_t__ MST_RX_XFER ; 
 int MST_STATUS_AL ; 
 int MST_STATUS_ERR ; 
 int MST_STATUS_NAK ; 
 int MST_STATUS_RFL ; 
 int MST_STATUS_SCC ; 
 int MST_STATUS_SNS ; 
 int MST_STATUS_SS ; 
 int MST_STATUS_TFL ; 
 int MST_STATUS_TSS ; 
 scalar_t__ MST_TX_BYTES_XFRD ; 
 scalar_t__ MST_TX_XFER ; 
 int /*<<< orphan*/  FUNC0 (struct axxia_i2c_dev*) ; 
 scalar_t__ FUNC1 (struct axxia_i2c_dev*) ; 
 int /*<<< orphan*/  FUNC2 (struct axxia_i2c_dev*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ ,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC6 (struct axxia_i2c_dev*,int) ; 
 scalar_t__ FUNC7 (TYPE_1__*) ; 
 int FUNC8 (scalar_t__) ; 
 scalar_t__ FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (int,scalar_t__) ; 

__attribute__((used)) static irqreturn_t FUNC11(int irq, void *_dev)
{
	struct axxia_i2c_dev *idev = _dev;
	irqreturn_t ret = IRQ_NONE;
	u32 status;

	status = FUNC8(idev->base + INTERRUPT_STATUS);

	if (status & INT_SLV)
		ret = FUNC2(idev);
	if (!(status & INT_MST))
		return ret;

	/* Read interrupt status bits */
	status = FUNC8(idev->base + MST_INT_STATUS);

	if (!idev->msg) {
		FUNC5(idev->dev, "unexpected interrupt\n");
		goto out;
	}

	/* RX FIFO needs service? */
	if (FUNC7(idev->msg_r) && (status & MST_STATUS_RFL))
		FUNC0(idev);

	/* TX FIFO needs service? */
	if (!FUNC7(idev->msg) && (status & MST_STATUS_TFL)) {
		if (FUNC1(idev) == 0)
			FUNC6(idev, MST_STATUS_TFL);
	}

	if (FUNC9(status & MST_STATUS_ERR)) {
		/* Transfer error */
		FUNC6(idev, ~0);
		if (status & MST_STATUS_AL)
			idev->msg_err = -EAGAIN;
		else if (status & MST_STATUS_NAK)
			idev->msg_err = -ENXIO;
		else
			idev->msg_err = -EIO;
		FUNC4(idev->dev, "error %#x, addr=%#x rx=%u/%u tx=%u/%u\n",
			status,
			idev->msg->addr,
			FUNC8(idev->base + MST_RX_BYTES_XFRD),
			FUNC8(idev->base + MST_RX_XFER),
			FUNC8(idev->base + MST_TX_BYTES_XFRD),
			FUNC8(idev->base + MST_TX_XFER));
		FUNC3(&idev->msg_complete);
	} else if (status & MST_STATUS_SCC) {
		/* Stop completed */
		FUNC6(idev, ~MST_STATUS_TSS);
		FUNC3(&idev->msg_complete);
	} else if (status & (MST_STATUS_SNS | MST_STATUS_SS)) {
		/* Transfer done */
		int mask = idev->last ? ~0 : ~MST_STATUS_TSS;

		FUNC6(idev, mask);
		if (FUNC7(idev->msg_r) && idev->msg_xfrd_r < idev->msg_r->len)
			FUNC0(idev);
		FUNC3(&idev->msg_complete);
	} else if (status & MST_STATUS_TSS) {
		/* Transfer timeout */
		idev->msg_err = -ETIMEDOUT;
		FUNC6(idev, ~MST_STATUS_TSS);
		FUNC3(&idev->msg_complete);
	}

out:
	/* Clear interrupt */
	FUNC10(INT_MST, idev->base + INTERRUPT_STATUS);

	return IRQ_HANDLED;
}