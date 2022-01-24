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
struct smu_dpm_context {struct arcturus_dpm_table* dpm_context; } ;
struct smu_context {struct smu_dpm_context smu_dpm; } ;
struct pp_clock_levels_with_latency {int num_levels; TYPE_2__* data; } ;
struct arcturus_single_dpm_table {int count; TYPE_1__* dpm_levels; } ;
struct arcturus_dpm_table {struct arcturus_single_dpm_table fclk_table; struct arcturus_single_dpm_table soc_table; struct arcturus_single_dpm_table mem_table; struct arcturus_single_dpm_table gfx_table; } ;
typedef  enum smu_clk_type { ____Placeholder_smu_clk_type } smu_clk_type ;
struct TYPE_4__ {int clocks_in_khz; } ;
struct TYPE_3__ {int value; } ;

/* Variables and functions */
#define  SMU_FCLK 131 
 int const SMU_GFXCLK ; 
#define  SMU_MCLK 130 
#define  SMU_SCLK 129 
#define  SMU_SOCCLK 128 
 int const SMU_UCLK ; 
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 int FUNC1 (struct smu_context*,struct pp_clock_levels_with_latency*,struct arcturus_single_dpm_table*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int FUNC3 (struct smu_context*,int const,int*) ; 
 int FUNC4 (char*,char*,int,int,char*) ; 

__attribute__((used)) static int FUNC5(struct smu_context *smu,
			enum smu_clk_type type, char *buf)
{
	int i, now, size = 0;
	int ret = 0;
	struct pp_clock_levels_with_latency clocks;
	struct arcturus_single_dpm_table *single_dpm_table;
	struct smu_dpm_context *smu_dpm = &smu->smu_dpm;
	struct arcturus_dpm_table *dpm_table = NULL;

	dpm_table = smu_dpm->dpm_context;

	switch (type) {
	case SMU_SCLK:
		ret = FUNC3(smu, SMU_GFXCLK, &now);
		if (ret) {
			FUNC2("Attempt to get current gfx clk Failed!");
			return ret;
		}

		single_dpm_table = &(dpm_table->gfx_table);
		ret = FUNC1(smu, &clocks, single_dpm_table);
		if (ret) {
			FUNC2("Attempt to get gfx clk levels Failed!");
			return ret;
		}

		for (i = 0; i < clocks.num_levels; i++)
			size += FUNC4(buf + size, "%d: %uMhz %s\n", i,
					clocks.data[i].clocks_in_khz / 1000,
					FUNC0(
					clocks.data[i].clocks_in_khz / 1000,
					now / 100) ? "*" : "");
		break;

	case SMU_MCLK:
		ret = FUNC3(smu, SMU_UCLK, &now);
		if (ret) {
			FUNC2("Attempt to get current mclk Failed!");
			return ret;
		}

		single_dpm_table = &(dpm_table->mem_table);
		ret = FUNC1(smu, &clocks, single_dpm_table);
		if (ret) {
			FUNC2("Attempt to get memory clk levels Failed!");
			return ret;
		}

		for (i = 0; i < clocks.num_levels; i++)
			size += FUNC4(buf + size, "%d: %uMhz %s\n",
				i, clocks.data[i].clocks_in_khz / 1000,
				FUNC0(
				clocks.data[i].clocks_in_khz / 1000,
				now / 100) ? "*" : "");
		break;

	case SMU_SOCCLK:
		ret = FUNC3(smu, SMU_SOCCLK, &now);
		if (ret) {
			FUNC2("Attempt to get current socclk Failed!");
			return ret;
		}

		single_dpm_table = &(dpm_table->soc_table);
		ret = FUNC1(smu, &clocks, single_dpm_table);
		if (ret) {
			FUNC2("Attempt to get socclk levels Failed!");
			return ret;
		}

		for (i = 0; i < clocks.num_levels; i++)
			size += FUNC4(buf + size, "%d: %uMhz %s\n",
				i, clocks.data[i].clocks_in_khz / 1000,
				FUNC0(
				clocks.data[i].clocks_in_khz / 1000,
				now / 100) ? "*" : "");
		break;

	case SMU_FCLK:
		ret = FUNC3(smu, SMU_FCLK, &now);
		if (ret) {
			FUNC2("Attempt to get current fclk Failed!");
			return ret;
		}

		single_dpm_table = &(dpm_table->fclk_table);
		ret = FUNC1(smu, &clocks, single_dpm_table);
		if (ret) {
			FUNC2("Attempt to get fclk levels Failed!");
			return ret;
		}

		for (i = 0; i < single_dpm_table->count; i++)
			size += FUNC4(buf + size, "%d: %uMhz %s\n",
				i, single_dpm_table->dpm_levels[i].value,
				FUNC0(
				clocks.data[i].clocks_in_khz / 1000,
				now / 100) ? "*" : "");
		break;

	default:
		break;
	}

	return size;
}