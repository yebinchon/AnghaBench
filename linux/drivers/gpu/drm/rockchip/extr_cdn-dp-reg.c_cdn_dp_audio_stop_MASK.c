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
struct cdn_dp_device {int /*<<< orphan*/  spdif_clk; scalar_t__ regs; int /*<<< orphan*/  dev; } ;
struct audio_info {scalar_t__ format; } ;

/* Variables and functions */
 scalar_t__ AFMT_SPDIF ; 
 int /*<<< orphan*/  AUDIO_PACK_CONTROL ; 
 scalar_t__ AUDIO_SRC_CNFG ; 
 scalar_t__ AUDIO_SRC_CNTL ; 
 int /*<<< orphan*/  AUDIO_SW_RST ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 scalar_t__ FIFO_CNTL ; 
 scalar_t__ SMPL2PKT_CNTL ; 
 scalar_t__ SPDIF_CTRL_ADDR ; 
 int FUNC1 (struct cdn_dp_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,scalar_t__) ; 

int FUNC4(struct cdn_dp_device *dp, struct audio_info *audio)
{
	int ret;

	ret = FUNC1(dp, AUDIO_PACK_CONTROL, 0);
	if (ret) {
		FUNC0(dp->dev, "audio stop failed: %d\n", ret);
		return ret;
	}

	FUNC3(0, dp->regs + SPDIF_CTRL_ADDR);

	/* clearn the audio config and reset */
	FUNC3(0, dp->regs + AUDIO_SRC_CNTL);
	FUNC3(0, dp->regs + AUDIO_SRC_CNFG);
	FUNC3(AUDIO_SW_RST, dp->regs + AUDIO_SRC_CNTL);
	FUNC3(0, dp->regs + AUDIO_SRC_CNTL);

	/* reset smpl2pckt component  */
	FUNC3(0, dp->regs + SMPL2PKT_CNTL);
	FUNC3(AUDIO_SW_RST, dp->regs + SMPL2PKT_CNTL);
	FUNC3(0, dp->regs + SMPL2PKT_CNTL);

	/* reset FIFO */
	FUNC3(AUDIO_SW_RST, dp->regs + FIFO_CNTL);
	FUNC3(0, dp->regs + FIFO_CNTL);

	if (audio->format == AFMT_SPDIF)
		FUNC2(dp->spdif_clk);

	return 0;
}