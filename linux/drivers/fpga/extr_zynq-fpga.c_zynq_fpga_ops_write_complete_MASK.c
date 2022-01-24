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
typedef  int u32 ;
struct zynq_fpga_priv {int /*<<< orphan*/  slcr; int /*<<< orphan*/  clk; } ;
struct fpga_manager {struct zynq_fpga_priv* priv; } ;
struct fpga_image_info {int flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  CTRL_OFFSET ; 
 int CTRL_PCAP_PR_MASK ; 
 int FPGA_MGR_PARTIAL_RECONFIG ; 
 int /*<<< orphan*/  FPGA_RST_NONE_MASK ; 
 int /*<<< orphan*/  INIT_POLL_DELAY ; 
 int /*<<< orphan*/  INIT_POLL_TIMEOUT ; 
 int /*<<< orphan*/  INT_STS_OFFSET ; 
 int IXR_PCFG_DONE_MASK ; 
 int /*<<< orphan*/  LVL_SHFTR_ENABLE_PL_TO_PS ; 
 int /*<<< orphan*/  SLCR_FPGA_RST_CTRL_OFFSET ; 
 int /*<<< orphan*/  SLCR_LVL_SHFTR_EN_OFFSET ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct zynq_fpga_priv*,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct zynq_fpga_priv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct zynq_fpga_priv*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC6(struct fpga_manager *mgr,
					struct fpga_image_info *info)
{
	struct zynq_fpga_priv *priv = mgr->priv;
	int err;
	u32 intr_status;

	err = FUNC1(priv->clk);
	if (err)
		return err;

	/* Release 'PR' control back to the ICAP */
	FUNC5(priv, CTRL_OFFSET,
		FUNC4(priv, CTRL_OFFSET) & ~CTRL_PCAP_PR_MASK);

	err = FUNC3(priv, INT_STS_OFFSET, intr_status,
				     intr_status & IXR_PCFG_DONE_MASK,
				     INIT_POLL_DELAY,
				     INIT_POLL_TIMEOUT);

	FUNC0(priv->clk);

	if (err)
		return err;

	/* for the partial reconfig case we didn't touch the level shifters */
	if (!(info->flags & FPGA_MGR_PARTIAL_RECONFIG)) {
		/* enable level shifters from PL to PS */
		FUNC2(priv->slcr, SLCR_LVL_SHFTR_EN_OFFSET,
			     LVL_SHFTR_ENABLE_PL_TO_PS);

		/* deassert AXI interface resets */
		FUNC2(priv->slcr, SLCR_FPGA_RST_CTRL_OFFSET,
			     FPGA_RST_NONE_MASK);
	}

	return 0;
}