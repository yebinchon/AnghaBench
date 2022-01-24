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
struct socfpga_fpga_priv {int dummy; } ;
struct fpga_manager {int /*<<< orphan*/  dev; struct socfpga_fpga_priv* priv; } ;
struct fpga_image_info {int flags; } ;

/* Variables and functions */
 int EINVAL ; 
 int ETIMEDOUT ; 
 int FPGA_MGR_PARTIAL_RECONFIG ; 
 int /*<<< orphan*/  SOCFPGA_FPGMGR_CTL_AXICFGEN ; 
 int /*<<< orphan*/  SOCFPGA_FPGMGR_CTL_OFST ; 
 int /*<<< orphan*/  SOCFPGA_FPGMGR_GPIO_PORTA_EOI_OFST ; 
 int /*<<< orphan*/  SOCFPGA_FPGMGR_MON_NSTATUS ; 
 int /*<<< orphan*/  SOCFPGA_FPGMGR_STAT_CFG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int FUNC1 (struct fpga_manager*) ; 
 int /*<<< orphan*/  FUNC2 (struct socfpga_fpga_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct socfpga_fpga_priv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct socfpga_fpga_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct fpga_manager *mgr,
					   struct fpga_image_info *info,
					   const char *buf, size_t count)
{
	struct socfpga_fpga_priv *priv = mgr->priv;
	int ret;

	if (info->flags & FPGA_MGR_PARTIAL_RECONFIG) {
		FUNC0(&mgr->dev, "Partial reconfiguration not supported.\n");
		return -EINVAL;
	}
	/* Steps 1 - 5: Reset the FPGA */
	ret = FUNC1(mgr);
	if (ret)
		return ret;

	/* Step 6: Wait for FPGA to enter configuration phase */
	if (FUNC3(priv, SOCFPGA_FPGMGR_STAT_CFG))
		return -ETIMEDOUT;

	/* Step 7: Clear nSTATUS interrupt */
	FUNC4(priv, SOCFPGA_FPGMGR_GPIO_PORTA_EOI_OFST,
			    SOCFPGA_FPGMGR_MON_NSTATUS);

	/* Step 8: Set CTRL.AXICFGEN to 1 to enable transfer of config data */
	FUNC2(priv, SOCFPGA_FPGMGR_CTL_OFST,
			       SOCFPGA_FPGMGR_CTL_AXICFGEN);

	return 0;
}