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
struct altr_i2c_dev {int isr_status; scalar_t__ msg_len; int /*<<< orphan*/  dev; int /*<<< orphan*/  msg_complete; scalar_t__ base; int /*<<< orphan*/  msg_err; TYPE_1__* msg; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;
struct TYPE_2__ {int flags; } ;

/* Variables and functions */
 int ALTR_I2C_ALL_IRQ ; 
 int ALTR_I2C_ISR_ARB ; 
 int ALTR_I2C_ISR_NACK ; 
 int ALTR_I2C_ISR_RXOF ; 
 int ALTR_I2C_ISR_RXRDY ; 
 int ALTR_I2C_ISR_TXRDY ; 
 scalar_t__ ALTR_I2C_STATUS ; 
 int ALTR_I2C_STAT_CORE ; 
 int /*<<< orphan*/  ALTR_I2C_TIMEOUT ; 
 int /*<<< orphan*/  EAGAIN ; 
 int /*<<< orphan*/  ENXIO ; 
 int I2C_M_RD ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  FUNC0 (struct altr_i2c_dev*) ; 
 int /*<<< orphan*/  FUNC1 (struct altr_i2c_dev*) ; 
 int /*<<< orphan*/  FUNC2 (struct altr_i2c_dev*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct altr_i2c_dev*,int,int) ; 
 int /*<<< orphan*/  FUNC4 (struct altr_i2c_dev*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,...) ; 
 int FUNC9 (scalar_t__,int,int,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (int) ; 

__attribute__((used)) static irqreturn_t FUNC11(int irq, void *_dev)
{
	int ret;
	bool read, finish = false;
	struct altr_i2c_dev *idev = _dev;
	u32 status = idev->isr_status;

	if (!idev->msg) {
		FUNC8(idev->dev, "unexpected interrupt\n");
		FUNC2(idev, ALTR_I2C_ALL_IRQ);
		return IRQ_HANDLED;
	}
	read = (idev->msg->flags & I2C_M_RD) != 0;

	/* handle Lost Arbitration */
	if (FUNC10(status & ALTR_I2C_ISR_ARB)) {
		FUNC2(idev, ALTR_I2C_ISR_ARB);
		idev->msg_err = -EAGAIN;
		finish = true;
	} else if (FUNC10(status & ALTR_I2C_ISR_NACK)) {
		FUNC6(idev->dev, "Could not get ACK\n");
		idev->msg_err = -ENXIO;
		FUNC2(idev, ALTR_I2C_ISR_NACK);
		FUNC4(idev);
		finish = true;
	} else if (read && FUNC10(status & ALTR_I2C_ISR_RXOF)) {
		/* handle RX FIFO Overflow */
		FUNC0(idev);
		FUNC2(idev, ALTR_I2C_ISR_RXRDY);
		FUNC4(idev);
		FUNC7(idev->dev, "RX FIFO Overflow\n");
		finish = true;
	} else if (read && (status & ALTR_I2C_ISR_RXRDY)) {
		/* RX FIFO needs service? */
		FUNC0(idev);
		FUNC2(idev, ALTR_I2C_ISR_RXRDY);
		if (!idev->msg_len)
			finish = true;
	} else if (!read && (status & ALTR_I2C_ISR_TXRDY)) {
		/* TX FIFO needs service? */
		FUNC2(idev, ALTR_I2C_ISR_TXRDY);
		if (idev->msg_len > 0)
			FUNC1(idev);
		else
			finish = true;
	} else {
		FUNC8(idev->dev, "Unexpected interrupt: 0x%x\n", status);
		FUNC2(idev, ALTR_I2C_ALL_IRQ);
	}

	if (finish) {
		/* Wait for the Core to finish */
		ret = FUNC9(idev->base + ALTR_I2C_STATUS,
						status,
						!(status & ALTR_I2C_STAT_CORE),
						1, ALTR_I2C_TIMEOUT);
		if (ret)
			FUNC7(idev->dev, "message timeout\n");
		FUNC3(idev, ALTR_I2C_ALL_IRQ, false);
		FUNC2(idev, ALTR_I2C_ALL_IRQ);
		FUNC5(&idev->msg_complete);
		FUNC6(idev->dev, "Message Complete\n");
	}

	return IRQ_HANDLED;
}