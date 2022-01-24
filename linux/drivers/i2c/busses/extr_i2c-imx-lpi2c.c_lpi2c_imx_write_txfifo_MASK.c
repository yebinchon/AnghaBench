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
struct lpi2c_imx_struct {unsigned int txfifosize; scalar_t__ delivered; scalar_t__ msglen; unsigned int* tx_buf; int /*<<< orphan*/  complete; scalar_t__ base; } ;

/* Variables and functions */
 scalar_t__ LPI2C_MFSR ; 
 scalar_t__ LPI2C_MTDR ; 
 int MIER_NDIE ; 
 int MIER_TDIE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct lpi2c_imx_struct*,int) ; 
 int FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (unsigned int,scalar_t__) ; 

__attribute__((used)) static void FUNC4(struct lpi2c_imx_struct *lpi2c_imx)
{
	unsigned int data, txcnt;

	txcnt = FUNC2(lpi2c_imx->base + LPI2C_MFSR) & 0xff;

	while (txcnt < lpi2c_imx->txfifosize) {
		if (lpi2c_imx->delivered == lpi2c_imx->msglen)
			break;

		data = lpi2c_imx->tx_buf[lpi2c_imx->delivered++];
		FUNC3(data, lpi2c_imx->base + LPI2C_MTDR);
		txcnt++;
	}

	if (lpi2c_imx->delivered < lpi2c_imx->msglen)
		FUNC1(lpi2c_imx, MIER_TDIE | MIER_NDIE);
	else
		FUNC0(&lpi2c_imx->complete);
}