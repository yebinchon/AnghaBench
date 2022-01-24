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
typedef  int /*<<< orphan*/  u8 ;
typedef  int u32 ;
struct tegra_i2c_dev {size_t msg_buf_remaining; int /*<<< orphan*/ * msg_buf; TYPE_1__* hw; } ;
struct TYPE_2__ {scalar_t__ has_mst_fifo; } ;

/* Variables and functions */
 size_t BYTES_PER_FIFO_WORD ; 
 int /*<<< orphan*/  I2C_FIFO_STATUS ; 
 int I2C_FIFO_STATUS_TX_MASK ; 
 int I2C_FIFO_STATUS_TX_SHIFT ; 
 int /*<<< orphan*/  I2C_MST_FIFO_STATUS ; 
 int I2C_MST_FIFO_STATUS_TX_MASK ; 
 int I2C_MST_FIFO_STATUS_TX_SHIFT ; 
 int /*<<< orphan*/  I2C_TX_FIFO ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int FUNC1 (struct tegra_i2c_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct tegra_i2c_dev*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct tegra_i2c_dev*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int*,int /*<<< orphan*/ *,size_t) ; 

__attribute__((used)) static int FUNC6(struct tegra_i2c_dev *i2c_dev)
{
	u32 val;
	int tx_fifo_avail;
	u8 *buf = i2c_dev->msg_buf;
	size_t buf_remaining = i2c_dev->msg_buf_remaining;
	int words_to_transfer;

	if (i2c_dev->hw->has_mst_fifo) {
		val = FUNC1(i2c_dev, I2C_MST_FIFO_STATUS);
		tx_fifo_avail = (val & I2C_MST_FIFO_STATUS_TX_MASK) >>
			I2C_MST_FIFO_STATUS_TX_SHIFT;
	} else {
		val = FUNC1(i2c_dev, I2C_FIFO_STATUS);
		tx_fifo_avail = (val & I2C_FIFO_STATUS_TX_MASK) >>
			I2C_FIFO_STATUS_TX_SHIFT;
	}

	/* Rounds down to not include partial word at the end of buf */
	words_to_transfer = buf_remaining / BYTES_PER_FIFO_WORD;

	/* It's very common to have < 4 bytes, so optimize that case. */
	if (words_to_transfer) {
		if (words_to_transfer > tx_fifo_avail)
			words_to_transfer = tx_fifo_avail;

		/*
		 * Update state before writing to FIFO.  If this casues us
		 * to finish writing all bytes (AKA buf_remaining goes to 0) we
		 * have a potential for an interrupt (PACKET_XFER_COMPLETE is
		 * not maskable).  We need to make sure that the isr sees
		 * buf_remaining as 0 and doesn't call us back re-entrantly.
		 */
		buf_remaining -= words_to_transfer * BYTES_PER_FIFO_WORD;
		tx_fifo_avail -= words_to_transfer;
		i2c_dev->msg_buf_remaining = buf_remaining;
		i2c_dev->msg_buf = buf +
			words_to_transfer * BYTES_PER_FIFO_WORD;
		FUNC0();

		FUNC3(i2c_dev, buf, I2C_TX_FIFO, words_to_transfer);

		buf += words_to_transfer * BYTES_PER_FIFO_WORD;
	}

	/*
	 * If there is a partial word at the end of buf, handle it manually to
	 * prevent reading past the end of buf, which could cross a page
	 * boundary and fault.
	 */
	if (tx_fifo_avail > 0 && buf_remaining > 0) {
		/*
		 * buf_remaining > 3 check not needed as tx_fifo_avail == 0
		 * when (words_to_transfer was > tx_fifo_avail) earlier
		 * in this function for non-zero words_to_transfer.
		 */
		FUNC5(&val, buf, buf_remaining);
		val = FUNC4(val);

		/* Again update before writing to FIFO to make sure isr sees. */
		i2c_dev->msg_buf_remaining = 0;
		i2c_dev->msg_buf = NULL;
		FUNC0();

		FUNC2(i2c_dev, val, I2C_TX_FIFO);
	}

	return 0;
}