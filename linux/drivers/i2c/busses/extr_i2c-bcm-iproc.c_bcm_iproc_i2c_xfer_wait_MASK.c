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
typedef  int u32 ;
struct i2c_msg {int dummy; } ;
struct bcm_iproc_i2c_dev {int /*<<< orphan*/  device; int /*<<< orphan*/  xfer_is_done; scalar_t__ irq; int /*<<< orphan*/  done; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int ETIMEDOUT ; 
 int /*<<< orphan*/  I2C_TIMEOUT_MSEC ; 
 int /*<<< orphan*/  IE_OFFSET ; 
 int ISR_MASK ; 
 int /*<<< orphan*/  IS_OFFSET ; 
 int /*<<< orphan*/  M_CMD_OFFSET ; 
 int /*<<< orphan*/  M_FIFO_CTRL_OFFSET ; 
 int /*<<< orphan*/  M_FIFO_RX_FLUSH_SHIFT ; 
 int /*<<< orphan*/  M_FIFO_TX_FLUSH_SHIFT ; 
 int FUNC1 (struct bcm_iproc_i2c_dev*,struct i2c_msg*) ; 
 int /*<<< orphan*/  FUNC2 (struct bcm_iproc_i2c_dev*,int) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 
 int FUNC6 (struct bcm_iproc_i2c_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct bcm_iproc_i2c_dev*,int /*<<< orphan*/ ,int) ; 
 unsigned long jiffies ; 
 unsigned long FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__) ; 
 scalar_t__ FUNC10 (unsigned long,unsigned long) ; 
 unsigned long FUNC11 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC12(struct bcm_iproc_i2c_dev *iproc_i2c,
				   struct i2c_msg *msg,
				   u32 cmd)
{
	unsigned long time_left = FUNC8(I2C_TIMEOUT_MSEC);
	u32 val, status;
	int ret;

	FUNC7(iproc_i2c, M_CMD_OFFSET, cmd);

	if (iproc_i2c->irq) {
		time_left = FUNC11(&iproc_i2c->done,
							time_left);
		/* disable all interrupts */
		FUNC7(iproc_i2c, IE_OFFSET, 0);
		/* read it back to flush the write */
		FUNC6(iproc_i2c, IE_OFFSET);
		/* make sure the interrupt handler isn't running */
		FUNC9(iproc_i2c->irq);

	} else { /* polling mode */
		unsigned long timeout = jiffies + time_left;

		do {
			status = FUNC6(iproc_i2c,
						  IS_OFFSET) & ISR_MASK;
			FUNC2(iproc_i2c, status);
			FUNC7(iproc_i2c, IS_OFFSET, status);

			if (FUNC10(jiffies, timeout)) {
				time_left = 0;
				break;
			}

			FUNC4();
			FUNC3();
		} while (!iproc_i2c->xfer_is_done);
	}

	if (!time_left && !iproc_i2c->xfer_is_done) {
		FUNC5(iproc_i2c->device, "transaction timed out\n");

		/* flush both TX/RX FIFOs */
		val = FUNC0(M_FIFO_RX_FLUSH_SHIFT) | FUNC0(M_FIFO_TX_FLUSH_SHIFT);
		FUNC7(iproc_i2c, M_FIFO_CTRL_OFFSET, val);
		return -ETIMEDOUT;
	}

	ret = FUNC1(iproc_i2c, msg);
	if (ret) {
		/* flush both TX/RX FIFOs */
		val = FUNC0(M_FIFO_RX_FLUSH_SHIFT) | FUNC0(M_FIFO_TX_FLUSH_SHIFT);
		FUNC7(iproc_i2c, M_FIFO_CTRL_OFFSET, val);
		return ret;
	}

	return 0;
}