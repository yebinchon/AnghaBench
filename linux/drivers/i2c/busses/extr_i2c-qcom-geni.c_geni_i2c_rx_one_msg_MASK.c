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
typedef  int /*<<< orphan*/  u32 ;
struct i2c_msg {size_t len; } ;
struct geni_se {scalar_t__ base; } ;
struct geni_i2c_dev {int err; scalar_t__ cur_rd; int /*<<< orphan*/  done; struct geni_se se; } ;
typedef  int /*<<< orphan*/  dma_addr_t ;

/* Variables and functions */
 int /*<<< orphan*/  GENI_SE_DMA ; 
 int /*<<< orphan*/  GENI_SE_FIFO ; 
 int /*<<< orphan*/  I2C_READ ; 
 scalar_t__ SE_I2C_RX_TRANS_LEN ; 
 int /*<<< orphan*/  XFER_TIMEOUT ; 
 int /*<<< orphan*/  FUNC0 (struct geni_i2c_dev*) ; 
 int /*<<< orphan*/  FUNC1 (struct geni_i2c_dev*) ; 
 scalar_t__ FUNC2 (struct geni_se*,void*,size_t,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct geni_se*,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC4 (struct geni_se*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct geni_se*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 void* FUNC6 (struct i2c_msg*,int) ; 
 int /*<<< orphan*/  FUNC7 (void*,struct i2c_msg*,int) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 unsigned long FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (size_t,scalar_t__) ; 

__attribute__((used)) static int FUNC11(struct geni_i2c_dev *gi2c, struct i2c_msg *msg,
				u32 m_param)
{
	dma_addr_t rx_dma;
	unsigned long time_left;
	void *dma_buf = NULL;
	struct geni_se *se = &gi2c->se;
	size_t len = msg->len;

	if (!FUNC8("lenovo,yoga-c630"))
		dma_buf = FUNC6(msg, 32);

	if (dma_buf)
		FUNC4(se, GENI_SE_DMA);
	else
		FUNC4(se, GENI_SE_FIFO);

	FUNC10(len, se->base + SE_I2C_RX_TRANS_LEN);
	FUNC5(se, I2C_READ, m_param);

	if (dma_buf && FUNC2(se, dma_buf, len, &rx_dma)) {
		FUNC4(se, GENI_SE_FIFO);
		FUNC7(dma_buf, msg, false);
		dma_buf = NULL;
	}

	time_left = FUNC9(&gi2c->done, XFER_TIMEOUT);
	if (!time_left)
		FUNC0(gi2c);

	gi2c->cur_rd = 0;
	if (dma_buf) {
		if (gi2c->err)
			FUNC1(gi2c);
		FUNC3(se, rx_dma, len);
		FUNC7(dma_buf, msg, !gi2c->err);
	}

	return gi2c->err;
}