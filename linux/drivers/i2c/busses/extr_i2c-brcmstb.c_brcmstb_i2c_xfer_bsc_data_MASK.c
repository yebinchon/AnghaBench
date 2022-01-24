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
typedef  int u32 ;
struct i2c_msg {int flags; } ;
struct bsc_regs {int ctlhi_reg; int ctl_reg; } ;
struct brcmstb_i2c_dev {int /*<<< orphan*/  device; struct bsc_regs* bsc_regmap; } ;
typedef  enum bsc_xfer_cmd { ____Placeholder_bsc_xfer_cmd } bsc_xfer_cmd ;

/* Variables and functions */
 int BITS_PER_BYTE ; 
 unsigned int FUNC0 (int) ; 
 unsigned int BSC_CNT_REG1_SHIFT ; 
 int BSC_CTLHI_REG_IGNORE_ACK_MASK ; 
 int BSC_CTL_REG_DTF_MASK ; 
 int CMD_RD ; 
 int CMD_RD_NOACK ; 
 int CMD_WR ; 
 int CMD_WR_NOACK ; 
 int DTF_RD_MASK ; 
 int DTF_WR_MASK ; 
 int I2C_M_IGNORE_NAK ; 
 int I2C_M_RD ; 
 int FUNC1 (struct brcmstb_i2c_dev*) ; 
 int FUNC2 (struct brcmstb_i2c_dev*,int) ; 
 int FUNC3 (struct brcmstb_i2c_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct brcmstb_i2c_dev*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * cmd_string ; 
 int /*<<< orphan*/  cnt_reg ; 
 int /*<<< orphan*/  ctlhi_reg ; 
 int /*<<< orphan*/ * data_in ; 
 int /*<<< orphan*/ * data_out ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct brcmstb_i2c_dev *dev,
				     u8 *buf, unsigned int len,
				     struct i2c_msg *pmsg)
{
	int cnt, byte, i, rc;
	enum bsc_xfer_cmd cmd;
	u32 ctl_reg;
	struct bsc_regs *pi2creg = dev->bsc_regmap;
	int no_ack = pmsg->flags & I2C_M_IGNORE_NAK;
	int data_regsz = FUNC1(dev);

	/* see if the transaction needs to check NACK conditions */
	if (no_ack) {
		cmd = (pmsg->flags & I2C_M_RD) ? CMD_RD_NOACK
			: CMD_WR_NOACK;
		pi2creg->ctlhi_reg |= BSC_CTLHI_REG_IGNORE_ACK_MASK;
	} else {
		cmd = (pmsg->flags & I2C_M_RD) ? CMD_RD : CMD_WR;
		pi2creg->ctlhi_reg &= ~BSC_CTLHI_REG_IGNORE_ACK_MASK;
	}
	FUNC4(dev, pi2creg->ctlhi_reg, ctlhi_reg);

	/* set data transfer direction */
	ctl_reg = pi2creg->ctl_reg & ~BSC_CTL_REG_DTF_MASK;
	if (cmd == CMD_WR || cmd == CMD_WR_NOACK)
		pi2creg->ctl_reg = ctl_reg | DTF_WR_MASK;
	else
		pi2creg->ctl_reg = ctl_reg | DTF_RD_MASK;

	/* set the read/write length */
	FUNC4(dev, FUNC0(data_regsz) &
		   (len << BSC_CNT_REG1_SHIFT), cnt_reg);

	/* Write data into data_in register */

	if (cmd == CMD_WR || cmd == CMD_WR_NOACK) {
		for (cnt = 0, i = 0; cnt < len; cnt += data_regsz, i++) {
			u32 word = 0;

			for (byte = 0; byte < data_regsz; byte++) {
				word >>= BITS_PER_BYTE;
				if ((cnt + byte) < len)
					word |= buf[cnt + byte] <<
					(BITS_PER_BYTE * (data_regsz - 1));
			}
			FUNC4(dev, word, data_in[i]);
		}
	}

	/* Initiate xfer, the function will return on completion */
	rc = FUNC2(dev, cmd);

	if (rc != 0) {
		FUNC5(dev->device, "%s failure", cmd_string[cmd]);
		return rc;
	}

	/* Read data from data_out register */
	if (cmd == CMD_RD || cmd == CMD_RD_NOACK) {
		for (cnt = 0, i = 0; cnt < len; cnt += data_regsz, i++) {
			u32 data = FUNC3(dev, data_out[i]);

			for (byte = 0; byte < data_regsz &&
				     (byte + cnt) < len; byte++) {
				buf[cnt + byte] = data & 0xff;
				data >>= BITS_PER_BYTE;
			}
		}
	}

	return 0;
}