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
struct vega20_single_dpm_table {int dummy; } ;
struct vega20_dpm_table {struct vega20_single_dpm_table soc_table; struct vega20_single_dpm_table dcef_table; struct vega20_single_dpm_table mem_table; struct vega20_single_dpm_table gfx_table; } ;
struct smu_dpm_context {struct vega20_dpm_table* dpm_context; } ;
struct smu_context {int /*<<< orphan*/  mutex; struct smu_dpm_context smu_dpm; } ;
struct pp_clock_levels_with_latency {int dummy; } ;
typedef  enum smu_clk_type { ____Placeholder_smu_clk_type } smu_clk_type ;

/* Variables and functions */
 int EINVAL ; 
#define  SMU_DCEFCLK 131 
#define  SMU_GFXCLK 130 
#define  SMU_MCLK 129 
#define  SMU_SOCCLK 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (struct smu_context*,struct pp_clock_levels_with_latency*,struct vega20_single_dpm_table*) ; 

__attribute__((used)) static int FUNC3(struct smu_context *smu,
						 enum smu_clk_type clk_type,
						 struct pp_clock_levels_with_latency *clocks)
{
	int ret;
	struct vega20_single_dpm_table *single_dpm_table;
	struct smu_dpm_context *smu_dpm = &smu->smu_dpm;
	struct vega20_dpm_table *dpm_table = NULL;

	dpm_table = smu_dpm->dpm_context;

	FUNC0(&smu->mutex);

	switch (clk_type) {
	case SMU_GFXCLK:
		single_dpm_table = &(dpm_table->gfx_table);
		ret = FUNC2(smu, clocks, single_dpm_table);
		break;
	case SMU_MCLK:
		single_dpm_table = &(dpm_table->mem_table);
		ret = FUNC2(smu, clocks, single_dpm_table);
		break;
	case SMU_DCEFCLK:
		single_dpm_table = &(dpm_table->dcef_table);
		ret = FUNC2(smu, clocks, single_dpm_table);
		break;
	case SMU_SOCCLK:
		single_dpm_table = &(dpm_table->soc_table);
		ret = FUNC2(smu, clocks, single_dpm_table);
		break;
	default:
		ret = -EINVAL;
	}

	FUNC1(&smu->mutex);
	return ret;
}