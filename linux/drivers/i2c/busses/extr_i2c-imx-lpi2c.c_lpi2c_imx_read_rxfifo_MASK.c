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
struct lpi2c_imx_struct {unsigned int* rx_buf; int delivered; unsigned int msglen; scalar_t__ base; scalar_t__ block_data; int /*<<< orphan*/  complete; } ;

/* Variables and functions */
 unsigned int CHUNK_DATA ; 
 scalar_t__ LPI2C_MRDR ; 
 scalar_t__ LPI2C_MTDR ; 
 int /*<<< orphan*/  MIER_RDIE ; 
 unsigned int MRDR_RXEMPTY ; 
 int RECV_DATA ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct lpi2c_imx_struct*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct lpi2c_imx_struct*) ; 
 unsigned int FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (unsigned int,scalar_t__) ; 

__attribute__((used)) static void FUNC5(struct lpi2c_imx_struct *lpi2c_imx)
{
	unsigned int blocklen, remaining;
	unsigned int temp, data;

	do {
		data = FUNC3(lpi2c_imx->base + LPI2C_MRDR);
		if (data & MRDR_RXEMPTY)
			break;

		lpi2c_imx->rx_buf[lpi2c_imx->delivered++] = data & 0xff;
	} while (1);

	/*
	 * First byte is the length of remaining packet in the SMBus block
	 * data read. Add it to msgs->len.
	 */
	if (lpi2c_imx->block_data) {
		blocklen = lpi2c_imx->rx_buf[0];
		lpi2c_imx->msglen += blocklen;
	}

	remaining = lpi2c_imx->msglen - lpi2c_imx->delivered;

	if (!remaining) {
		FUNC0(&lpi2c_imx->complete);
		return;
	}

	/* not finished, still waiting for rx data */
	FUNC2(lpi2c_imx);

	/* multiple receive commands */
	if (lpi2c_imx->block_data) {
		lpi2c_imx->block_data = 0;
		temp = remaining;
		temp |= (RECV_DATA << 8);
		FUNC4(temp, lpi2c_imx->base + LPI2C_MTDR);
	} else if (!(lpi2c_imx->delivered & 0xff)) {
		temp = (remaining > CHUNK_DATA ? CHUNK_DATA : remaining) - 1;
		temp |= (RECV_DATA << 8);
		FUNC4(temp, lpi2c_imx->base + LPI2C_MTDR);
	}

	FUNC1(lpi2c_imx, MIER_RDIE);
}