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
struct lpi2c_imx_struct {int block_data; scalar_t__ base; int /*<<< orphan*/  rx_buf; } ;
struct i2c_msg {int flags; int len; int /*<<< orphan*/  buf; } ;

/* Variables and functions */
 int CHUNK_DATA ; 
 int I2C_M_RECV_LEN ; 
 scalar_t__ LPI2C_MTDR ; 
 int MIER_NDIE ; 
 int MIER_RDIE ; 
 int RECV_DATA ; 
 int /*<<< orphan*/  FUNC0 (struct lpi2c_imx_struct*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct lpi2c_imx_struct*) ; 
 int /*<<< orphan*/  FUNC2 (unsigned int,scalar_t__) ; 

__attribute__((used)) static void FUNC3(struct lpi2c_imx_struct *lpi2c_imx,
			   struct i2c_msg *msgs)
{
	unsigned int temp;

	lpi2c_imx->rx_buf = msgs->buf;
	lpi2c_imx->block_data = msgs->flags & I2C_M_RECV_LEN;

	FUNC1(lpi2c_imx);
	temp = msgs->len > CHUNK_DATA ? CHUNK_DATA - 1 : msgs->len - 1;
	temp |= (RECV_DATA << 8);
	FUNC2(temp, lpi2c_imx->base + LPI2C_MTDR);

	FUNC0(lpi2c_imx, MIER_RDIE | MIER_NDIE);
}