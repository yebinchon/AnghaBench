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
typedef  scalar_t__ u8 ;
struct xiic_i2c {int nmsgs; int tx_pos; struct i2c_msg* tx_msg; struct i2c_msg* rx_msg; } ;
struct i2c_msg {scalar_t__ len; int flags; } ;

/* Variables and functions */
 int I2C_M_NOSTART ; 
 scalar_t__ IIC_RX_FIFO_DEPTH ; 
 int /*<<< orphan*/  XIIC_DTR_REG_OFFSET ; 
 int XIIC_INTR_BNB_MASK ; 
 int XIIC_INTR_RX_FULL_MASK ; 
 int XIIC_INTR_TX_ERROR_MASK ; 
 int /*<<< orphan*/  XIIC_RFD_REG_OFFSET ; 
 int XIIC_TX_DYN_START_MASK ; 
 int XIIC_TX_DYN_STOP_MASK ; 
 int FUNC0 (struct i2c_msg*) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (struct xiic_i2c*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct xiic_i2c*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct xiic_i2c*,int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void FUNC6(struct xiic_i2c *i2c)
{
	u8 rx_watermark;
	struct i2c_msg *msg = i2c->rx_msg = i2c->tx_msg;
	unsigned long flags;

	/* Clear and enable Rx full interrupt. */
	FUNC3(i2c, XIIC_INTR_RX_FULL_MASK | XIIC_INTR_TX_ERROR_MASK);

	/* we want to get all but last byte, because the TX_ERROR IRQ is used
	 * to inidicate error ACK on the address, and negative ack on the last
	 * received byte, so to not mix them receive all but last.
	 * In the case where there is only one byte to receive
	 * we can check if ERROR and RX full is set at the same time
	 */
	rx_watermark = msg->len;
	if (rx_watermark > IIC_RX_FIFO_DEPTH)
		rx_watermark = IIC_RX_FIFO_DEPTH;
	FUNC5(i2c, XIIC_RFD_REG_OFFSET, rx_watermark - 1);

	FUNC2(flags);
	if (!(msg->flags & I2C_M_NOSTART))
		/* write the address */
		FUNC4(i2c, XIIC_DTR_REG_OFFSET,
			FUNC0(msg) | XIIC_TX_DYN_START_MASK);

	FUNC3(i2c, XIIC_INTR_BNB_MASK);

	FUNC4(i2c, XIIC_DTR_REG_OFFSET,
		msg->len | ((i2c->nmsgs == 1) ? XIIC_TX_DYN_STOP_MASK : 0));
	FUNC1(flags);

	if (i2c->nmsgs == 1)
		/* very last, enable bus not busy as well */
		FUNC3(i2c, XIIC_INTR_BNB_MASK);

	/* the message is tx:ed */
	i2c->tx_pos = msg->len;
}