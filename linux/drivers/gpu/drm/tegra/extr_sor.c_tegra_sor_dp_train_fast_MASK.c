#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
typedef  int u32 ;
struct tegra_sor {int /*<<< orphan*/  aux; TYPE_2__* soc; } ;
struct drm_dp_link {unsigned int num_lanes; } ;
struct TYPE_4__ {TYPE_1__* regs; } ;
struct TYPE_3__ {int /*<<< orphan*/  dp_padctl0; } ;

/* Variables and functions */
 int DP_LINK_SCRAMBLING_DISABLE ; 
 int /*<<< orphan*/  DP_SET_ANSI_8B10B ; 
 int DP_TRAINING_PATTERN_1 ; 
 int DP_TRAINING_PATTERN_2 ; 
 int DP_TRAINING_PATTERN_DISABLE ; 
 int SOR_DP_PADCTL_CM_TXD_0 ; 
 int SOR_DP_PADCTL_CM_TXD_1 ; 
 int SOR_DP_PADCTL_CM_TXD_2 ; 
 int SOR_DP_PADCTL_CM_TXD_3 ; 
 int FUNC0 (int) ; 
 int SOR_DP_PADCTL_TX_PU_ENABLE ; 
 int SOR_DP_PADCTL_TX_PU_MASK ; 
 int /*<<< orphan*/  SOR_DP_SPARE0 ; 
 int SOR_DP_SPARE_MACRO_SOR_CLK ; 
 int SOR_DP_SPARE_PANEL_INTERNAL ; 
 int SOR_DP_SPARE_SEQ_ENABLE ; 
 int /*<<< orphan*/  SOR_DP_TPG ; 
 unsigned long SOR_DP_TPG_CHANNEL_CODING ; 
 unsigned long SOR_DP_TPG_PATTERN_NONE ; 
 unsigned long SOR_DP_TPG_PATTERN_TRAIN1 ; 
 unsigned long SOR_DP_TPG_PATTERN_TRAIN2 ; 
 unsigned long SOR_DP_TPG_SCRAMBLER_GALIOS ; 
 unsigned long SOR_DP_TPG_SCRAMBLER_NONE ; 
 int /*<<< orphan*/  SOR_LANE_DRIVE_CURRENT0 ; 
 int FUNC1 (int) ; 
 int FUNC2 (int) ; 
 int FUNC3 (int) ; 
 int FUNC4 (int) ; 
 int /*<<< orphan*/  SOR_LANE_POSTCURSOR0 ; 
 int FUNC5 (int) ; 
 int FUNC6 (int) ; 
 int FUNC7 (int) ; 
 int FUNC8 (int) ; 
 int /*<<< orphan*/  SOR_LANE_PREEMPHASIS0 ; 
 int FUNC9 (int) ; 
 int FUNC10 (int) ; 
 int FUNC11 (int) ; 
 int FUNC12 (int) ; 
 int /*<<< orphan*/  SOR_LVDS ; 
 int FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC14 (int /*<<< orphan*/ ,struct drm_dp_link*,int) ; 
 int FUNC15 (struct tegra_sor*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (struct tegra_sor*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int,int) ; 

__attribute__((used)) static int FUNC18(struct tegra_sor *sor,
				   struct drm_dp_link *link)
{
	unsigned int i;
	u8 pattern;
	u32 value;
	int err;

	/* setup lane parameters */
	value = FUNC4(0x40) |
		FUNC3(0x40) |
		FUNC2(0x40) |
		FUNC1(0x40);
	FUNC16(sor, value, SOR_LANE_DRIVE_CURRENT0);

	value = FUNC12(0x0f) |
		FUNC11(0x0f) |
		FUNC10(0x0f) |
		FUNC9(0x0f);
	FUNC16(sor, value, SOR_LANE_PREEMPHASIS0);

	value = FUNC8(0x00) |
		FUNC7(0x00) |
		FUNC6(0x00) |
		FUNC5(0x00);
	FUNC16(sor, value, SOR_LANE_POSTCURSOR0);

	/* disable LVDS mode */
	FUNC16(sor, 0, SOR_LVDS);

	value = FUNC15(sor, sor->soc->regs->dp_padctl0);
	value |= SOR_DP_PADCTL_TX_PU_ENABLE;
	value &= ~SOR_DP_PADCTL_TX_PU_MASK;
	value |= FUNC0(2); /* XXX: don't hardcode? */
	FUNC16(sor, value, sor->soc->regs->dp_padctl0);

	value = FUNC15(sor, sor->soc->regs->dp_padctl0);
	value |= SOR_DP_PADCTL_CM_TXD_3 | SOR_DP_PADCTL_CM_TXD_2 |
		 SOR_DP_PADCTL_CM_TXD_1 | SOR_DP_PADCTL_CM_TXD_0;
	FUNC16(sor, value, sor->soc->regs->dp_padctl0);

	FUNC17(10, 100);

	value = FUNC15(sor, sor->soc->regs->dp_padctl0);
	value &= ~(SOR_DP_PADCTL_CM_TXD_3 | SOR_DP_PADCTL_CM_TXD_2 |
		   SOR_DP_PADCTL_CM_TXD_1 | SOR_DP_PADCTL_CM_TXD_0);
	FUNC16(sor, value, sor->soc->regs->dp_padctl0);

	err = FUNC13(sor->aux, DP_SET_ANSI_8B10B);
	if (err < 0)
		return err;

	for (i = 0, value = 0; i < link->num_lanes; i++) {
		unsigned long lane = SOR_DP_TPG_CHANNEL_CODING |
				     SOR_DP_TPG_SCRAMBLER_NONE |
				     SOR_DP_TPG_PATTERN_TRAIN1;
		value = (value << 8) | lane;
	}

	FUNC16(sor, value, SOR_DP_TPG);

	pattern = DP_TRAINING_PATTERN_1;

	err = FUNC14(sor->aux, link, pattern);
	if (err < 0)
		return err;

	value = FUNC15(sor, SOR_DP_SPARE0);
	value |= SOR_DP_SPARE_SEQ_ENABLE;
	value &= ~SOR_DP_SPARE_PANEL_INTERNAL;
	value |= SOR_DP_SPARE_MACRO_SOR_CLK;
	FUNC16(sor, value, SOR_DP_SPARE0);

	for (i = 0, value = 0; i < link->num_lanes; i++) {
		unsigned long lane = SOR_DP_TPG_CHANNEL_CODING |
				     SOR_DP_TPG_SCRAMBLER_NONE |
				     SOR_DP_TPG_PATTERN_TRAIN2;
		value = (value << 8) | lane;
	}

	FUNC16(sor, value, SOR_DP_TPG);

	pattern = DP_LINK_SCRAMBLING_DISABLE | DP_TRAINING_PATTERN_2;

	err = FUNC14(sor->aux, link, pattern);
	if (err < 0)
		return err;

	for (i = 0, value = 0; i < link->num_lanes; i++) {
		unsigned long lane = SOR_DP_TPG_CHANNEL_CODING |
				     SOR_DP_TPG_SCRAMBLER_GALIOS |
				     SOR_DP_TPG_PATTERN_NONE;
		value = (value << 8) | lane;
	}

	FUNC16(sor, value, SOR_DP_TPG);

	pattern = DP_TRAINING_PATTERN_DISABLE;

	err = FUNC14(sor->aux, link, pattern);
	if (err < 0)
		return err;

	return 0;
}