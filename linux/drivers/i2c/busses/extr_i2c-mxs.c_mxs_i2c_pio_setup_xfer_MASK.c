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
typedef  int uint32_t ;
struct mxs_i2c_dev {scalar_t__ dev_type; scalar_t__ regs; int /*<<< orphan*/  dev; } ;
struct i2c_msg {int flags; int len; int* buf; } ;
struct i2c_adapter {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int ENXIO ; 
 int I2C_M_RD ; 
 int MXS_CMD_I2C_READ ; 
 int MXS_CMD_I2C_SELECT ; 
 scalar_t__ MXS_I2C_CTRL0_CLR ; 
 int MXS_I2C_CTRL0_DIRECTION ; 
 int MXS_I2C_CTRL0_MASTER_MODE ; 
 int MXS_I2C_CTRL0_PIO_MODE ; 
 int MXS_I2C_CTRL0_POST_SEND_STOP ; 
 int MXS_I2C_CTRL0_PRE_SEND_START ; 
 int MXS_I2C_CTRL0_RETAIN_CLOCK ; 
 int FUNC1 (int) ; 
 scalar_t__ MXS_I2C_CTRL1_CLR ; 
 scalar_t__ MXS_I2C_CTRL1_SET ; 
 scalar_t__ FUNC2 (struct mxs_i2c_dev*) ; 
 scalar_t__ FUNC3 (struct mxs_i2c_dev*) ; 
 int MXS_I2C_DEBUG0_DMAREQ ; 
 int MXS_I2C_IRQ_MASK ; 
 scalar_t__ MXS_I2C_STAT ; 
 int MXS_I2C_STAT_GOT_A_NAK ; 
 scalar_t__ MXS_I2C_V1 ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,...) ; 
 int FUNC5 (struct i2c_msg*) ; 
 struct mxs_i2c_dev* FUNC6 (struct i2c_adapter*) ; 
 int FUNC7 (struct mxs_i2c_dev*) ; 
 int /*<<< orphan*/  FUNC8 (struct mxs_i2c_dev*,int) ; 
 int /*<<< orphan*/  FUNC9 (struct mxs_i2c_dev*,int,int) ; 
 int FUNC10 (struct mxs_i2c_dev*) ; 
 int FUNC11 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC12 (int,scalar_t__) ; 

__attribute__((used)) static int FUNC13(struct i2c_adapter *adap,
			struct i2c_msg *msg, uint32_t flags)
{
	struct mxs_i2c_dev *i2c = FUNC6(adap);
	uint32_t addr_data = FUNC5(msg);
	uint32_t data = 0;
	int i, ret, xlen = 0, xmit = 0;
	uint32_t start;

	/* Mute IRQs coming from this block. */
	FUNC12(MXS_I2C_IRQ_MASK << 8, i2c->regs + MXS_I2C_CTRL1_CLR);

	/*
	 * MX23 idea:
	 * - Enable CTRL0::PIO_MODE (1 << 24)
	 * - Enable CTRL1::ACK_MODE (1 << 27)
	 *
	 * WARNING! The MX23 is broken in some way, even if it claims
	 * to support PIO, when we try to transfer any amount of data
	 * that is not aligned to 4 bytes, the DMA engine will have
	 * bits in DEBUG1::DMA_BYTES_ENABLES still set even after the
	 * transfer. This in turn will mess up the next transfer as
	 * the block it emit one byte write onto the bus terminated
	 * with a NAK+STOP. A possible workaround is to reset the IP
	 * block after every PIO transmission, which might just work.
	 *
	 * NOTE: The CTRL0::PIO_MODE description is important, since
	 * it outlines how the PIO mode is really supposed to work.
	 */
	if (msg->flags & I2C_M_RD) {
		/*
		 * PIO READ transfer:
		 *
		 * This transfer MUST be limited to 4 bytes maximum. It is not
		 * possible to transfer more than four bytes via PIO, since we
		 * can not in any way make sure we can read the data from the
		 * DATA register fast enough. Besides, the RX FIFO is only four
		 * bytes deep, thus we can only really read up to four bytes at
		 * time. Finally, there is no bit indicating us that new data
		 * arrived at the FIFO and can thus be fetched from the DATA
		 * register.
		 */
		FUNC0(msg->len > 4);

		/* SELECT command. */
		FUNC9(i2c, MXS_CMD_I2C_SELECT,
					      addr_data);

		ret = FUNC10(i2c);
		if (ret) {
			FUNC4(i2c->dev,
				"PIO: Failed to send SELECT command!\n");
			goto cleanup;
		}

		/* READ command. */
		FUNC8(i2c,
					MXS_CMD_I2C_READ | flags |
					FUNC1(msg->len));

		ret = FUNC10(i2c);
		if (ret) {
			FUNC4(i2c->dev,
				"PIO: Failed to send READ command!\n");
			goto cleanup;
		}

		data = FUNC11(i2c->regs + FUNC2(i2c));
		for (i = 0; i < msg->len; i++) {
			msg->buf[i] = data & 0xff;
			data >>= 8;
		}
	} else {
		/*
		 * PIO WRITE transfer:
		 *
		 * The code below implements clock stretching to circumvent
		 * the possibility of kernel not being able to supply data
		 * fast enough. It is possible to transfer arbitrary amount
		 * of data using PIO write.
		 */

		/*
		 * The LSB of data buffer is the first byte blasted across
		 * the bus. Higher order bytes follow. Thus the following
		 * filling schematic.
		 */

		data = addr_data << 24;

		/* Start the transfer with START condition. */
		start = MXS_I2C_CTRL0_PRE_SEND_START;

		/* If the transfer is long, use clock stretching. */
		if (msg->len > 3)
			start |= MXS_I2C_CTRL0_RETAIN_CLOCK;

		for (i = 0; i < msg->len; i++) {
			data >>= 8;
			data |= (msg->buf[i] << 24);

			xmit = 0;

			/* This is the last transfer of the message. */
			if (i + 1 == msg->len) {
				/* Add optional STOP flag. */
				start |= flags;
				/* Remove RETAIN_CLOCK bit. */
				start &= ~MXS_I2C_CTRL0_RETAIN_CLOCK;
				xmit = 1;
			}

			/* Four bytes are ready in the "data" variable. */
			if ((i & 3) == 2)
				xmit = 1;

			/* Nothing interesting happened, continue stuffing. */
			if (!xmit)
				continue;

			/*
			 * Compute the size of the transfer and shift the
			 * data accordingly.
			 *
			 * i = (4k + 0) .... xlen = 2
			 * i = (4k + 1) .... xlen = 3
			 * i = (4k + 2) .... xlen = 4
			 * i = (4k + 3) .... xlen = 1
			 */

			if ((i % 4) == 3)
				xlen = 1;
			else
				xlen = (i % 4) + 2;

			data >>= (4 - xlen) * 8;

			FUNC4(i2c->dev,
				"PIO: len=%i pos=%i total=%i [W%s%s%s]\n",
				xlen, i, msg->len,
				start & MXS_I2C_CTRL0_PRE_SEND_START ? "S" : "",
				start & MXS_I2C_CTRL0_POST_SEND_STOP ? "E" : "",
				start & MXS_I2C_CTRL0_RETAIN_CLOCK ? "C" : "");

			FUNC12(MXS_I2C_DEBUG0_DMAREQ,
			       i2c->regs + FUNC3(i2c));

			FUNC9(i2c,
				start | MXS_I2C_CTRL0_MASTER_MODE |
				MXS_I2C_CTRL0_DIRECTION |
				FUNC1(xlen), data);

			/* The START condition is sent only once. */
			start &= ~MXS_I2C_CTRL0_PRE_SEND_START;

			/* Wait for the end of the transfer. */
			ret = FUNC10(i2c);
			if (ret) {
				FUNC4(i2c->dev,
					"PIO: Failed to finish WRITE cmd!\n");
				break;
			}

			/* Check NAK here. */
			ret = FUNC11(i2c->regs + MXS_I2C_STAT) &
				    MXS_I2C_STAT_GOT_A_NAK;
			if (ret) {
				ret = -ENXIO;
				goto cleanup;
			}
		}
	}

	/* make sure we capture any occurred error into cmd_err */
	ret = FUNC7(i2c);

cleanup:
	/* Clear any dangling IRQs and re-enable interrupts. */
	FUNC12(MXS_I2C_IRQ_MASK, i2c->regs + MXS_I2C_CTRL1_CLR);
	FUNC12(MXS_I2C_IRQ_MASK << 8, i2c->regs + MXS_I2C_CTRL1_SET);

	/* Clear the PIO_MODE on i.MX23 */
	if (i2c->dev_type == MXS_I2C_V1)
		FUNC12(MXS_I2C_CTRL0_PIO_MODE, i2c->regs + MXS_I2C_CTRL0_CLR);

	return ret;
}