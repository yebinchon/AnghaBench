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
typedef  int uint32_t ;
struct smu10_voltage_dependency_table {int count; TYPE_2__* entries; } ;
struct TYPE_3__ {struct smu10_voltage_dependency_table* vdd_dep_on_fclk; } ;
struct smu10_hwmgr {int gfx_max_freq_limit; int gfx_min_freq_limit; TYPE_1__ clock_vol_info; } ;
struct pp_hwmgr {scalar_t__ backend; } ;
typedef  enum pp_clock_type { ____Placeholder_pp_clock_type } pp_clock_type ;
struct TYPE_4__ {int clk; } ;

/* Variables and functions */
 int /*<<< orphan*/  PPSMC_MSG_GetFclkFrequency ; 
 int /*<<< orphan*/  PPSMC_MSG_GetGfxclkFrequency ; 
#define  PP_MCLK 129 
#define  PP_SCLK 128 
 int SMU10_UMD_PSTATE_GFXCLK ; 
 int FUNC0 (struct pp_hwmgr*) ; 
 int /*<<< orphan*/  FUNC1 (struct pp_hwmgr*,int /*<<< orphan*/ ) ; 
 int FUNC2 (char*,char*,int,...) ; 

__attribute__((used)) static int FUNC3(struct pp_hwmgr *hwmgr,
		enum pp_clock_type type, char *buf)
{
	struct smu10_hwmgr *data = (struct smu10_hwmgr *)(hwmgr->backend);
	struct smu10_voltage_dependency_table *mclk_table =
			data->clock_vol_info.vdd_dep_on_fclk;
	uint32_t i, now, size = 0;

	switch (type) {
	case PP_SCLK:
		FUNC1(hwmgr, PPSMC_MSG_GetGfxclkFrequency);
		now = FUNC0(hwmgr);

	/* driver only know min/max gfx_clk, Add level 1 for all other gfx clks */
		if (now == data->gfx_max_freq_limit/100)
			i = 2;
		else if (now == data->gfx_min_freq_limit/100)
			i = 0;
		else
			i = 1;

		size += FUNC2(buf + size, "0: %uMhz %s\n",
					data->gfx_min_freq_limit/100,
					i == 0 ? "*" : "");
		size += FUNC2(buf + size, "1: %uMhz %s\n",
					i == 1 ? now : SMU10_UMD_PSTATE_GFXCLK,
					i == 1 ? "*" : "");
		size += FUNC2(buf + size, "2: %uMhz %s\n",
					data->gfx_max_freq_limit/100,
					i == 2 ? "*" : "");
		break;
	case PP_MCLK:
		FUNC1(hwmgr, PPSMC_MSG_GetFclkFrequency);
		now = FUNC0(hwmgr);

		for (i = 0; i < mclk_table->count; i++)
			size += FUNC2(buf + size, "%d: %uMhz %s\n",
					i,
					mclk_table->entries[i].clk / 100,
					((mclk_table->entries[i].clk / 100)
					 == now) ? "*" : "");
		break;
	default:
		break;
	}

	return size;
}