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
struct tegra_sor_config {int hblank_symbols; int vblank_symbols; scalar_t__ active_polarity; int /*<<< orphan*/  active_frac; int /*<<< orphan*/  active_count; int /*<<< orphan*/  watermark; int /*<<< orphan*/  tu_size; } ;
struct tegra_sor {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  SOR_DP_AUDIO_HBLANK_SYMBOLS ; 
 int SOR_DP_AUDIO_HBLANK_SYMBOLS_MASK ; 
 int /*<<< orphan*/  SOR_DP_AUDIO_VBLANK_SYMBOLS ; 
 int SOR_DP_AUDIO_VBLANK_SYMBOLS_MASK ; 
 int /*<<< orphan*/  SOR_DP_CONFIG0 ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int SOR_DP_CONFIG_ACTIVE_SYM_COUNT_MASK ; 
 int SOR_DP_CONFIG_ACTIVE_SYM_ENABLE ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int SOR_DP_CONFIG_ACTIVE_SYM_FRAC_MASK ; 
 int SOR_DP_CONFIG_ACTIVE_SYM_POLARITY ; 
 int SOR_DP_CONFIG_DISPARITY_NEGATIVE ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int SOR_DP_CONFIG_WATERMARK_MASK ; 
 int /*<<< orphan*/  SOR_DP_LINKCTL0 ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int SOR_DP_LINKCTL_TU_SIZE_MASK ; 
 int FUNC4 (struct tegra_sor*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct tegra_sor*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct tegra_sor *sor,
				   const struct tegra_sor_config *config)
{
	u32 value;

	value = FUNC4(sor, SOR_DP_LINKCTL0);
	value &= ~SOR_DP_LINKCTL_TU_SIZE_MASK;
	value |= FUNC3(config->tu_size);
	FUNC5(sor, value, SOR_DP_LINKCTL0);

	value = FUNC4(sor, SOR_DP_CONFIG0);
	value &= ~SOR_DP_CONFIG_WATERMARK_MASK;
	value |= FUNC2(config->watermark);

	value &= ~SOR_DP_CONFIG_ACTIVE_SYM_COUNT_MASK;
	value |= FUNC0(config->active_count);

	value &= ~SOR_DP_CONFIG_ACTIVE_SYM_FRAC_MASK;
	value |= FUNC1(config->active_frac);

	if (config->active_polarity)
		value |= SOR_DP_CONFIG_ACTIVE_SYM_POLARITY;
	else
		value &= ~SOR_DP_CONFIG_ACTIVE_SYM_POLARITY;

	value |= SOR_DP_CONFIG_ACTIVE_SYM_ENABLE;
	value |= SOR_DP_CONFIG_DISPARITY_NEGATIVE;
	FUNC5(sor, value, SOR_DP_CONFIG0);

	value = FUNC4(sor, SOR_DP_AUDIO_HBLANK_SYMBOLS);
	value &= ~SOR_DP_AUDIO_HBLANK_SYMBOLS_MASK;
	value |= config->hblank_symbols & 0xffff;
	FUNC5(sor, value, SOR_DP_AUDIO_HBLANK_SYMBOLS);

	value = FUNC4(sor, SOR_DP_AUDIO_VBLANK_SYMBOLS);
	value &= ~SOR_DP_AUDIO_VBLANK_SYMBOLS_MASK;
	value |= config->vblank_symbols & 0xffff;
	FUNC5(sor, value, SOR_DP_AUDIO_VBLANK_SYMBOLS);
}