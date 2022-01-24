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
struct zynq_fpga_priv {int /*<<< orphan*/  clk; int /*<<< orphan*/  slcr; } ;
struct fpga_manager {int /*<<< orphan*/  dev; struct zynq_fpga_priv* priv; } ;
struct fpga_image_info {int flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  CTRL_OFFSET ; 
 int CTRL_PCAP_MODE_MASK ; 
 int CTRL_PCAP_PR_MASK ; 
 int CTRL_PCAP_RATE_EN_MASK ; 
 int CTRL_PCFG_PROG_B_MASK ; 
 int CTRL_SEC_EN_MASK ; 
 int EBUSY ; 
 int EINVAL ; 
 int FPGA_MGR_ENCRYPTED_BITSTREAM ; 
 int FPGA_MGR_PARTIAL_RECONFIG ; 
 int /*<<< orphan*/  FPGA_RST_ALL_MASK ; 
 int /*<<< orphan*/  INIT_POLL_DELAY ; 
 int /*<<< orphan*/  INIT_POLL_TIMEOUT ; 
 int /*<<< orphan*/  LVL_SHFTR_DISABLE_ALL_MASK ; 
 int /*<<< orphan*/  LVL_SHFTR_ENABLE_PS_TO_PL ; 
 int /*<<< orphan*/  MCTRL_OFFSET ; 
 int MCTRL_PCAP_LPBK_MASK ; 
 int /*<<< orphan*/  SLCR_FPGA_RST_CTRL_OFFSET ; 
 int /*<<< orphan*/  SLCR_LVL_SHFTR_EN_OFFSET ; 
 int STATUS_DMA_Q_E ; 
 int STATUS_DMA_Q_F ; 
 int /*<<< orphan*/  STATUS_OFFSET ; 
 int STATUS_PCFG_INIT_MASK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char const*,size_t) ; 
 int FUNC5 (struct zynq_fpga_priv*,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct zynq_fpga_priv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct zynq_fpga_priv*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC8(struct fpga_manager *mgr,
				    struct fpga_image_info *info,
				    const char *buf, size_t count)
{
	struct zynq_fpga_priv *priv;
	u32 ctrl, status;
	int err;

	priv = mgr->priv;

	err = FUNC1(priv->clk);
	if (err)
		return err;

	/* check if bitstream is encrypted & and system's still secure */
	if (info->flags & FPGA_MGR_ENCRYPTED_BITSTREAM) {
		ctrl = FUNC6(priv, CTRL_OFFSET);
		if (!(ctrl & CTRL_SEC_EN_MASK)) {
			FUNC2(&mgr->dev,
				"System not secure, can't use crypted bitstreams\n");
			err = -EINVAL;
			goto out_err;
		}
	}

	/* don't globally reset PL if we're doing partial reconfig */
	if (!(info->flags & FPGA_MGR_PARTIAL_RECONFIG)) {
		if (!FUNC4(buf, count)) {
			FUNC2(&mgr->dev,
				"Invalid bitstream, could not find a sync word. Bitstream must be a byte swapped .bin file\n");
			err = -EINVAL;
			goto out_err;
		}

		/* assert AXI interface resets */
		FUNC3(priv->slcr, SLCR_FPGA_RST_CTRL_OFFSET,
			     FPGA_RST_ALL_MASK);

		/* disable all level shifters */
		FUNC3(priv->slcr, SLCR_LVL_SHFTR_EN_OFFSET,
			     LVL_SHFTR_DISABLE_ALL_MASK);
		/* enable level shifters from PS to PL */
		FUNC3(priv->slcr, SLCR_LVL_SHFTR_EN_OFFSET,
			     LVL_SHFTR_ENABLE_PS_TO_PL);

		/* create a rising edge on PCFG_INIT. PCFG_INIT follows
		 * PCFG_PROG_B, so we need to poll it after setting PCFG_PROG_B
		 * to make sure the rising edge actually happens.
		 * Note: PCFG_PROG_B is low active, sequence as described in
		 * UG585 v1.10 page 211
		 */
		ctrl = FUNC6(priv, CTRL_OFFSET);
		ctrl |= CTRL_PCFG_PROG_B_MASK;

		FUNC7(priv, CTRL_OFFSET, ctrl);

		err = FUNC5(priv, STATUS_OFFSET, status,
					     status & STATUS_PCFG_INIT_MASK,
					     INIT_POLL_DELAY,
					     INIT_POLL_TIMEOUT);
		if (err) {
			FUNC2(&mgr->dev, "Timeout waiting for PCFG_INIT\n");
			goto out_err;
		}

		ctrl = FUNC6(priv, CTRL_OFFSET);
		ctrl &= ~CTRL_PCFG_PROG_B_MASK;

		FUNC7(priv, CTRL_OFFSET, ctrl);

		err = FUNC5(priv, STATUS_OFFSET, status,
					     !(status & STATUS_PCFG_INIT_MASK),
					     INIT_POLL_DELAY,
					     INIT_POLL_TIMEOUT);
		if (err) {
			FUNC2(&mgr->dev, "Timeout waiting for !PCFG_INIT\n");
			goto out_err;
		}

		ctrl = FUNC6(priv, CTRL_OFFSET);
		ctrl |= CTRL_PCFG_PROG_B_MASK;

		FUNC7(priv, CTRL_OFFSET, ctrl);

		err = FUNC5(priv, STATUS_OFFSET, status,
					     status & STATUS_PCFG_INIT_MASK,
					     INIT_POLL_DELAY,
					     INIT_POLL_TIMEOUT);
		if (err) {
			FUNC2(&mgr->dev, "Timeout waiting for PCFG_INIT\n");
			goto out_err;
		}
	}

	/* set configuration register with following options:
	 * - enable PCAP interface
	 * - set throughput for maximum speed (if bistream not crypted)
	 * - set CPU in user mode
	 */
	ctrl = FUNC6(priv, CTRL_OFFSET);
	if (info->flags & FPGA_MGR_ENCRYPTED_BITSTREAM)
		FUNC7(priv, CTRL_OFFSET,
				(CTRL_PCAP_PR_MASK | CTRL_PCAP_MODE_MASK
				 | CTRL_PCAP_RATE_EN_MASK | ctrl));
	else
		FUNC7(priv, CTRL_OFFSET,
				(CTRL_PCAP_PR_MASK | CTRL_PCAP_MODE_MASK
				 | ctrl));


	/* We expect that the command queue is empty right now. */
	status = FUNC6(priv, STATUS_OFFSET);
	if ((status & STATUS_DMA_Q_F) ||
	    (status & STATUS_DMA_Q_E) != STATUS_DMA_Q_E) {
		FUNC2(&mgr->dev, "DMA command queue not right\n");
		err = -EBUSY;
		goto out_err;
	}

	/* ensure internal PCAP loopback is disabled */
	ctrl = FUNC6(priv, MCTRL_OFFSET);
	FUNC7(priv, MCTRL_OFFSET, (~MCTRL_PCAP_LPBK_MASK & ctrl));

	FUNC0(priv->clk);

	return 0;

out_err:
	FUNC0(priv->clk);

	return err;
}