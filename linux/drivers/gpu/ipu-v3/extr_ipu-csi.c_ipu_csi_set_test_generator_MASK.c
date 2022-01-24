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
struct ipu_csi {int /*<<< orphan*/  lock; int /*<<< orphan*/  clk_ipu; } ;

/* Variables and functions */
 int CSI_TEST_GEN_B_MASK ; 
 int CSI_TEST_GEN_B_SHIFT ; 
 int CSI_TEST_GEN_G_MASK ; 
 int CSI_TEST_GEN_G_SHIFT ; 
 int CSI_TEST_GEN_MODE_EN ; 
 int CSI_TEST_GEN_R_MASK ; 
 int CSI_TEST_GEN_R_SHIFT ; 
 int /*<<< orphan*/  CSI_TST_CTRL ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct ipu_csi*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ipu_csi*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct ipu_csi*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 

void FUNC6(struct ipu_csi *csi, bool active,
				u32 r_value, u32 g_value, u32 b_value,
				u32 pix_clk)
{
	unsigned long flags;
	u32 ipu_clk = FUNC0(csi->clk_ipu);
	u32 temp;

	FUNC4(&csi->lock, flags);

	temp = FUNC1(csi, CSI_TST_CTRL);

	if (!active) {
		temp &= ~CSI_TEST_GEN_MODE_EN;
		FUNC3(csi, temp, CSI_TST_CTRL);
	} else {
		/* Set sensb_mclk div_ratio */
		FUNC2(csi, pix_clk, ipu_clk);

		temp &= ~(CSI_TEST_GEN_R_MASK | CSI_TEST_GEN_G_MASK |
			  CSI_TEST_GEN_B_MASK);
		temp |= CSI_TEST_GEN_MODE_EN;
		temp |= (r_value << CSI_TEST_GEN_R_SHIFT) |
			(g_value << CSI_TEST_GEN_G_SHIFT) |
			(b_value << CSI_TEST_GEN_B_SHIFT);
		FUNC3(csi, temp, CSI_TST_CTRL);
	}

	FUNC5(&csi->lock, flags);
}