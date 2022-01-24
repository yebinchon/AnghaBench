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
typedef  int u8 ;
typedef  int u16 ;
struct omap_i2c_dev {int buf_len; int errata; int threshold; int /*<<< orphan*/  dev; scalar_t__ fifo_size; scalar_t__ receiver; } ;

/* Variables and functions */
 int EAGAIN ; 
 int I2C_OMAP_ERRATA_I207 ; 
 int /*<<< orphan*/  OMAP_I2C_BUFSTAT_REG ; 
 int /*<<< orphan*/  OMAP_I2C_IE_REG ; 
 int OMAP_I2C_STAT_AL ; 
 int OMAP_I2C_STAT_ARDY ; 
 int OMAP_I2C_STAT_NACK ; 
 int OMAP_I2C_STAT_RDR ; 
 int /*<<< orphan*/  OMAP_I2C_STAT_REG ; 
 int OMAP_I2C_STAT_ROVR ; 
 int OMAP_I2C_STAT_RRDY ; 
 int OMAP_I2C_STAT_XDR ; 
 int OMAP_I2C_STAT_XRDY ; 
 int OMAP_I2C_STAT_XUDF ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct omap_i2c_dev*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct omap_i2c_dev*,int) ; 
 int FUNC5 (struct omap_i2c_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct omap_i2c_dev*,int,int) ; 
 int FUNC7 (struct omap_i2c_dev*,int,int) ; 

__attribute__((used)) static int FUNC8(struct omap_i2c_dev *omap)
{
	u16 bits;
	u16 stat;
	int err = 0, count = 0;

	do {
		bits = FUNC5(omap, OMAP_I2C_IE_REG);
		stat = FUNC5(omap, OMAP_I2C_STAT_REG);
		stat &= bits;

		/* If we're in receiver mode, ignore XDR/XRDY */
		if (omap->receiver)
			stat &= ~(OMAP_I2C_STAT_XDR | OMAP_I2C_STAT_XRDY);
		else
			stat &= ~(OMAP_I2C_STAT_RDR | OMAP_I2C_STAT_RRDY);

		if (!stat) {
			/* my work here is done */
			err = -EAGAIN;
			break;
		}

		FUNC0(omap->dev, "IRQ (ISR = 0x%04x)\n", stat);
		if (count++ == 100) {
			FUNC2(omap->dev, "Too much work in one IRQ\n");
			break;
		}

		if (stat & OMAP_I2C_STAT_NACK) {
			err |= OMAP_I2C_STAT_NACK;
			FUNC4(omap, OMAP_I2C_STAT_NACK);
		}

		if (stat & OMAP_I2C_STAT_AL) {
			FUNC1(omap->dev, "Arbitration lost\n");
			err |= OMAP_I2C_STAT_AL;
			FUNC4(omap, OMAP_I2C_STAT_AL);
		}

		/*
		 * ProDB0017052: Clear ARDY bit twice
		 */
		if (stat & OMAP_I2C_STAT_ARDY)
			FUNC4(omap, OMAP_I2C_STAT_ARDY);

		if (stat & (OMAP_I2C_STAT_ARDY | OMAP_I2C_STAT_NACK |
					OMAP_I2C_STAT_AL)) {
			FUNC4(omap, (OMAP_I2C_STAT_RRDY |
						OMAP_I2C_STAT_RDR |
						OMAP_I2C_STAT_XRDY |
						OMAP_I2C_STAT_XDR |
						OMAP_I2C_STAT_ARDY));
			break;
		}

		if (stat & OMAP_I2C_STAT_RDR) {
			u8 num_bytes = 1;

			if (omap->fifo_size)
				num_bytes = omap->buf_len;

			if (omap->errata & I2C_OMAP_ERRATA_I207) {
				FUNC3(omap, stat);
				num_bytes = (FUNC5(omap,
					OMAP_I2C_BUFSTAT_REG) >> 8) & 0x3F;
			}

			FUNC6(omap, num_bytes, true);
			FUNC4(omap, OMAP_I2C_STAT_RDR);
			continue;
		}

		if (stat & OMAP_I2C_STAT_RRDY) {
			u8 num_bytes = 1;

			if (omap->threshold)
				num_bytes = omap->threshold;

			FUNC6(omap, num_bytes, false);
			FUNC4(omap, OMAP_I2C_STAT_RRDY);
			continue;
		}

		if (stat & OMAP_I2C_STAT_XDR) {
			u8 num_bytes = 1;
			int ret;

			if (omap->fifo_size)
				num_bytes = omap->buf_len;

			ret = FUNC7(omap, num_bytes, true);
			if (ret < 0)
				break;

			FUNC4(omap, OMAP_I2C_STAT_XDR);
			continue;
		}

		if (stat & OMAP_I2C_STAT_XRDY) {
			u8 num_bytes = 1;
			int ret;

			if (omap->threshold)
				num_bytes = omap->threshold;

			ret = FUNC7(omap, num_bytes, false);
			if (ret < 0)
				break;

			FUNC4(omap, OMAP_I2C_STAT_XRDY);
			continue;
		}

		if (stat & OMAP_I2C_STAT_ROVR) {
			FUNC1(omap->dev, "Receive overrun\n");
			err |= OMAP_I2C_STAT_ROVR;
			FUNC4(omap, OMAP_I2C_STAT_ROVR);
			break;
		}

		if (stat & OMAP_I2C_STAT_XUDF) {
			FUNC1(omap->dev, "Transmit underflow\n");
			err |= OMAP_I2C_STAT_XUDF;
			FUNC4(omap, OMAP_I2C_STAT_XUDF);
			break;
		}
	} while (stat);

	return err;
}