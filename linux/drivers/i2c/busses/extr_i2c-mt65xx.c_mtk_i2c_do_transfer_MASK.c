#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
typedef  int u32 ;
typedef  int u16 ;
struct TYPE_3__ {int /*<<< orphan*/  timeout; } ;
struct mtk_i2c {int irq_stat; scalar_t__ speed_hz; scalar_t__ op; int /*<<< orphan*/  dev; TYPE_1__ adap; int /*<<< orphan*/  msg_complete; scalar_t__ auto_restart; scalar_t__ pdmabase; TYPE_2__* dev_comp; } ;
struct i2c_msg {int len; int /*<<< orphan*/  addr; } ;
typedef  scalar_t__ dma_addr_t ;
struct TYPE_4__ {scalar_t__ support_33bits; scalar_t__ aux_len_reg; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_FROM_DEVICE ; 
 int /*<<< orphan*/  DMA_TO_DEVICE ; 
 int ENOMEM ; 
 int ENXIO ; 
 int ETIMEDOUT ; 
 int I2C_ACKERR ; 
 int I2C_ARB_LOST ; 
 int I2C_CONTROL_DIR_CHANGE ; 
 int I2C_CONTROL_RS ; 
 scalar_t__ I2C_DEFAULT_SPEED ; 
 int I2C_DMA_CLR_FLAG ; 
 int I2C_DMA_CON_RX ; 
 int I2C_DMA_CON_TX ; 
 int I2C_DMA_INT_FLAG_NONE ; 
 int I2C_DMA_START_EN ; 
 int I2C_FIFO_ADDR_CLR ; 
 int I2C_FS_START_CON ; 
 int I2C_HS_NACKERR ; 
 scalar_t__ I2C_MASTER_RD ; 
 scalar_t__ I2C_MASTER_WR ; 
 scalar_t__ I2C_MASTER_WRRD ; 
 int I2C_RS_MUL_CNFG ; 
 int I2C_RS_MUL_TRIG ; 
 int I2C_RS_TRANSFER ; 
 int I2C_ST_START_CON ; 
 int I2C_TRANSAC_COMP ; 
 int I2C_TRANSAC_START ; 
 int I2C_WRRD_TRANAC_VALUE ; 
 scalar_t__ MAX_FS_MODE_SPEED ; 
 scalar_t__ OFFSET_CON ; 
 int /*<<< orphan*/  OFFSET_CONTROL ; 
 scalar_t__ OFFSET_EN ; 
 int /*<<< orphan*/  OFFSET_EXT_CONF ; 
 int /*<<< orphan*/  OFFSET_FIFO_ADDR_CLR ; 
 int /*<<< orphan*/  OFFSET_INTR_MASK ; 
 int /*<<< orphan*/  OFFSET_INTR_STAT ; 
 scalar_t__ OFFSET_INT_FLAG ; 
 scalar_t__ OFFSET_RX_4G_MODE ; 
 scalar_t__ OFFSET_RX_LEN ; 
 scalar_t__ OFFSET_RX_MEM_ADDR ; 
 int /*<<< orphan*/  OFFSET_SLAVE_ADDR ; 
 int /*<<< orphan*/  OFFSET_START ; 
 int /*<<< orphan*/  OFFSET_TRANSAC_LEN ; 
 int /*<<< orphan*/  OFFSET_TRANSFER_LEN ; 
 int /*<<< orphan*/  OFFSET_TRANSFER_LEN_AUX ; 
 scalar_t__ OFFSET_TX_4G_MODE ; 
 scalar_t__ OFFSET_TX_LEN ; 
 scalar_t__ OFFSET_TX_MEM_ADDR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,scalar_t__,int,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct i2c_msg*) ; 
 int /*<<< orphan*/ * FUNC5 (struct i2c_msg*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,struct i2c_msg*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct mtk_i2c*) ; 
 int FUNC8 (struct mtk_i2c*,int /*<<< orphan*/ ) ; 
 int FUNC9 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (struct mtk_i2c*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int,scalar_t__) ; 

__attribute__((used)) static int FUNC14(struct mtk_i2c *i2c, struct i2c_msg *msgs,
			       int num, int left_num)
{
	u16 addr_reg;
	u16 start_reg;
	u16 control_reg;
	u16 restart_flag = 0;
	u32 reg_4g_mode;
	u8 *dma_rd_buf = NULL;
	u8 *dma_wr_buf = NULL;
	dma_addr_t rpaddr = 0;
	dma_addr_t wpaddr = 0;
	int ret;

	i2c->irq_stat = 0;

	if (i2c->auto_restart)
		restart_flag = I2C_RS_TRANSFER;

	FUNC11(&i2c->msg_complete);

	control_reg = FUNC8(i2c, OFFSET_CONTROL) &
			~(I2C_CONTROL_DIR_CHANGE | I2C_CONTROL_RS);
	if ((i2c->speed_hz > MAX_FS_MODE_SPEED) || (left_num >= 1))
		control_reg |= I2C_CONTROL_RS;

	if (i2c->op == I2C_MASTER_WRRD)
		control_reg |= I2C_CONTROL_DIR_CHANGE | I2C_CONTROL_RS;

	FUNC10(i2c, control_reg, OFFSET_CONTROL);

	/* set start condition */
	if (i2c->speed_hz <= I2C_DEFAULT_SPEED)
		FUNC10(i2c, I2C_ST_START_CON, OFFSET_EXT_CONF);
	else
		FUNC10(i2c, I2C_FS_START_CON, OFFSET_EXT_CONF);

	addr_reg = FUNC4(msgs);
	FUNC10(i2c, addr_reg, OFFSET_SLAVE_ADDR);

	/* Clear interrupt status */
	FUNC10(i2c, restart_flag | I2C_HS_NACKERR | I2C_ACKERR |
			    I2C_ARB_LOST | I2C_TRANSAC_COMP, OFFSET_INTR_STAT);

	FUNC10(i2c, I2C_FIFO_ADDR_CLR, OFFSET_FIFO_ADDR_CLR);

	/* Enable interrupt */
	FUNC10(i2c, restart_flag | I2C_HS_NACKERR | I2C_ACKERR |
			    I2C_ARB_LOST | I2C_TRANSAC_COMP, OFFSET_INTR_MASK);

	/* Set transfer and transaction len */
	if (i2c->op == I2C_MASTER_WRRD) {
		if (i2c->dev_comp->aux_len_reg) {
			FUNC10(i2c, msgs->len, OFFSET_TRANSFER_LEN);
			FUNC10(i2c, (msgs + 1)->len,
					    OFFSET_TRANSFER_LEN_AUX);
		} else {
			FUNC10(i2c, msgs->len | ((msgs + 1)->len) << 8,
					    OFFSET_TRANSFER_LEN);
		}
		FUNC10(i2c, I2C_WRRD_TRANAC_VALUE, OFFSET_TRANSAC_LEN);
	} else {
		FUNC10(i2c, msgs->len, OFFSET_TRANSFER_LEN);
		FUNC10(i2c, num, OFFSET_TRANSAC_LEN);
	}

	/* Prepare buffer data to start transfer */
	if (i2c->op == I2C_MASTER_RD) {
		FUNC13(I2C_DMA_INT_FLAG_NONE, i2c->pdmabase + OFFSET_INT_FLAG);
		FUNC13(I2C_DMA_CON_RX, i2c->pdmabase + OFFSET_CON);

		dma_rd_buf = FUNC5(msgs, 1);
		if (!dma_rd_buf)
			return -ENOMEM;

		rpaddr = FUNC1(i2c->dev, dma_rd_buf,
					msgs->len, DMA_FROM_DEVICE);
		if (FUNC2(i2c->dev, rpaddr)) {
			FUNC6(dma_rd_buf, msgs, false);

			return -ENOMEM;
		}

		if (i2c->dev_comp->support_33bits) {
			reg_4g_mode = FUNC9(rpaddr);
			FUNC13(reg_4g_mode, i2c->pdmabase + OFFSET_RX_4G_MODE);
		}

		FUNC13((u32)rpaddr, i2c->pdmabase + OFFSET_RX_MEM_ADDR);
		FUNC13(msgs->len, i2c->pdmabase + OFFSET_RX_LEN);
	} else if (i2c->op == I2C_MASTER_WR) {
		FUNC13(I2C_DMA_INT_FLAG_NONE, i2c->pdmabase + OFFSET_INT_FLAG);
		FUNC13(I2C_DMA_CON_TX, i2c->pdmabase + OFFSET_CON);

		dma_wr_buf = FUNC5(msgs, 1);
		if (!dma_wr_buf)
			return -ENOMEM;

		wpaddr = FUNC1(i2c->dev, dma_wr_buf,
					msgs->len, DMA_TO_DEVICE);
		if (FUNC2(i2c->dev, wpaddr)) {
			FUNC6(dma_wr_buf, msgs, false);

			return -ENOMEM;
		}

		if (i2c->dev_comp->support_33bits) {
			reg_4g_mode = FUNC9(wpaddr);
			FUNC13(reg_4g_mode, i2c->pdmabase + OFFSET_TX_4G_MODE);
		}

		FUNC13((u32)wpaddr, i2c->pdmabase + OFFSET_TX_MEM_ADDR);
		FUNC13(msgs->len, i2c->pdmabase + OFFSET_TX_LEN);
	} else {
		FUNC13(I2C_DMA_CLR_FLAG, i2c->pdmabase + OFFSET_INT_FLAG);
		FUNC13(I2C_DMA_CLR_FLAG, i2c->pdmabase + OFFSET_CON);

		dma_wr_buf = FUNC5(msgs, 1);
		if (!dma_wr_buf)
			return -ENOMEM;

		wpaddr = FUNC1(i2c->dev, dma_wr_buf,
					msgs->len, DMA_TO_DEVICE);
		if (FUNC2(i2c->dev, wpaddr)) {
			FUNC6(dma_wr_buf, msgs, false);

			return -ENOMEM;
		}

		dma_rd_buf = FUNC5((msgs + 1), 1);
		if (!dma_rd_buf) {
			FUNC3(i2c->dev, wpaddr,
					 msgs->len, DMA_TO_DEVICE);

			FUNC6(dma_wr_buf, msgs, false);

			return -ENOMEM;
		}

		rpaddr = FUNC1(i2c->dev, dma_rd_buf,
					(msgs + 1)->len,
					DMA_FROM_DEVICE);
		if (FUNC2(i2c->dev, rpaddr)) {
			FUNC3(i2c->dev, wpaddr,
					 msgs->len, DMA_TO_DEVICE);

			FUNC6(dma_wr_buf, msgs, false);
			FUNC6(dma_rd_buf, (msgs + 1), false);

			return -ENOMEM;
		}

		if (i2c->dev_comp->support_33bits) {
			reg_4g_mode = FUNC9(wpaddr);
			FUNC13(reg_4g_mode, i2c->pdmabase + OFFSET_TX_4G_MODE);

			reg_4g_mode = FUNC9(rpaddr);
			FUNC13(reg_4g_mode, i2c->pdmabase + OFFSET_RX_4G_MODE);
		}

		FUNC13((u32)wpaddr, i2c->pdmabase + OFFSET_TX_MEM_ADDR);
		FUNC13((u32)rpaddr, i2c->pdmabase + OFFSET_RX_MEM_ADDR);
		FUNC13(msgs->len, i2c->pdmabase + OFFSET_TX_LEN);
		FUNC13((msgs + 1)->len, i2c->pdmabase + OFFSET_RX_LEN);
	}

	FUNC13(I2C_DMA_START_EN, i2c->pdmabase + OFFSET_EN);

	if (!i2c->auto_restart) {
		start_reg = I2C_TRANSAC_START;
	} else {
		start_reg = I2C_TRANSAC_START | I2C_RS_MUL_TRIG;
		if (left_num >= 1)
			start_reg |= I2C_RS_MUL_CNFG;
	}
	FUNC10(i2c, start_reg, OFFSET_START);

	ret = FUNC12(&i2c->msg_complete,
					  i2c->adap.timeout);

	/* Clear interrupt mask */
	FUNC10(i2c, ~(restart_flag | I2C_HS_NACKERR | I2C_ACKERR |
			    I2C_ARB_LOST | I2C_TRANSAC_COMP), OFFSET_INTR_MASK);

	if (i2c->op == I2C_MASTER_WR) {
		FUNC3(i2c->dev, wpaddr,
				 msgs->len, DMA_TO_DEVICE);

		FUNC6(dma_wr_buf, msgs, true);
	} else if (i2c->op == I2C_MASTER_RD) {
		FUNC3(i2c->dev, rpaddr,
				 msgs->len, DMA_FROM_DEVICE);

		FUNC6(dma_rd_buf, msgs, true);
	} else {
		FUNC3(i2c->dev, wpaddr, msgs->len,
				 DMA_TO_DEVICE);
		FUNC3(i2c->dev, rpaddr, (msgs + 1)->len,
				 DMA_FROM_DEVICE);

		FUNC6(dma_wr_buf, msgs, true);
		FUNC6(dma_rd_buf, (msgs + 1), true);
	}

	if (ret == 0) {
		FUNC0(i2c->dev, "addr: %x, transfer timeout\n", msgs->addr);
		FUNC7(i2c);
		return -ETIMEDOUT;
	}

	if (i2c->irq_stat & (I2C_HS_NACKERR | I2C_ACKERR)) {
		FUNC0(i2c->dev, "addr: %x, transfer ACK error\n", msgs->addr);
		FUNC7(i2c);
		return -ENXIO;
	}

	return 0;
}