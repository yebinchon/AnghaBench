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
struct cdn_dp_device {int /*<<< orphan*/  spdif_clk; scalar_t__ regs; } ;

/* Variables and functions */
 int AUDIO_TYPE_LPCM ; 
 int /*<<< orphan*/  CDN_DP_SPDIF_CLK ; 
 int FUNC0 (int) ; 
 scalar_t__ FIFO_CNTL ; 
 int FUNC1 (int) ; 
 scalar_t__ SMPL2PKT_CNFG ; 
 scalar_t__ SMPL2PKT_CNTL ; 
 int SMPL2PKT_EN ; 
 int SPDIF_AVG_SEL ; 
 scalar_t__ SPDIF_CTRL_ADDR ; 
 int SPDIF_ENABLE ; 
 int SPDIF_JITTER_BYPASS ; 
 int SYNC_WR_TO_CH_ZERO ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int,scalar_t__) ; 

__attribute__((used)) static void FUNC5(struct cdn_dp_device *dp)
{
	u32 val;

	FUNC4(SYNC_WR_TO_CH_ZERO, dp->regs + FIFO_CNTL);

	val = FUNC1(2) | AUDIO_TYPE_LPCM | FUNC0(4);
	FUNC4(val, dp->regs + SMPL2PKT_CNFG);
	FUNC4(SMPL2PKT_EN, dp->regs + SMPL2PKT_CNTL);

	val = SPDIF_ENABLE | SPDIF_AVG_SEL | SPDIF_JITTER_BYPASS;
	FUNC4(val, dp->regs + SPDIF_CTRL_ADDR);

	FUNC2(dp->spdif_clk);
	FUNC3(dp->spdif_clk, CDN_DP_SPDIF_CLK);
}