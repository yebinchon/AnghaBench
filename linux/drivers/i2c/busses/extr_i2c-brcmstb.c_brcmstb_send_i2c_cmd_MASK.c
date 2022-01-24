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
struct bsc_regs {int /*<<< orphan*/  iic_enable; } ;
struct brcmstb_i2c_dev {scalar_t__ irq; int /*<<< orphan*/  device; int /*<<< orphan*/  done; struct bsc_regs* bsc_regmap; } ;
typedef  enum bsc_xfer_cmd { ____Placeholder_bsc_xfer_cmd } bsc_xfer_cmd ;

/* Variables and functions */
 int /*<<< orphan*/  BSC_IIC_EN_ENABLE_MASK ; 
 int BSC_IIC_EN_NOACK_MASK ; 
 scalar_t__ CMD_RD ; 
 scalar_t__ CMD_WR ; 
 int EREMOTEIO ; 
 int /*<<< orphan*/  INT_ENABLE ; 
 int /*<<< orphan*/  FUNC0 (struct brcmstb_i2c_dev*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct brcmstb_i2c_dev*) ; 
 int FUNC2 (struct brcmstb_i2c_dev*) ; 
 int FUNC3 (struct brcmstb_i2c_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct brcmstb_i2c_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * cmd_string ; 
 int /*<<< orphan*/  cnt_reg ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  iic_enable ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7(struct brcmstb_i2c_dev *dev,
				enum bsc_xfer_cmd cmd)
{
	int rc = 0;
	struct bsc_regs *pi2creg = dev->bsc_regmap;

	/* Make sure the hardware is ready */
	rc = FUNC2(dev);
	if (rc < 0)
		return rc;

	/* only if we are in interrupt mode */
	if (dev->irq >= 0)
		FUNC6(&dev->done);

	/* enable BSC CTL interrupt line */
	FUNC0(dev, INT_ENABLE);

	/* initiate transfer by setting iic_enable */
	pi2creg->iic_enable |= BSC_IIC_EN_ENABLE_MASK;
	FUNC4(dev, pi2creg->iic_enable, iic_enable);

	/* Wait for transaction to finish or timeout */
	rc = FUNC1(dev);
	if (rc) {
		FUNC5(dev->device, "intr timeout for cmd %s\n",
			cmd_string[cmd]);
		goto cmd_out;
	}

	if ((CMD_RD || CMD_WR) &&
	    FUNC3(dev, iic_enable) & BSC_IIC_EN_NOACK_MASK) {
		rc = -EREMOTEIO;
		FUNC5(dev->device, "controller received NOACK intr for %s\n",
			cmd_string[cmd]);
	}

cmd_out:
	FUNC4(dev, 0, cnt_reg);
	FUNC4(dev, 0, iic_enable);

	return rc;
}