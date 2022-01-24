#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_7__ ;
typedef  struct TYPE_13__   TYPE_6__ ;
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int /*<<< orphan*/  vert_c; int /*<<< orphan*/  vert; } ;
struct TYPE_8__ {int v_taps; int v_taps_c; } ;
struct scaler_data {scalar_t__ format; TYPE_2__ ratios; TYPE_1__ taps; } ;
struct TYPE_14__ {TYPE_6__* caps; TYPE_5__* ctx; } ;
struct dcn10_dpp {TYPE_7__ base; } ;
typedef  enum lb_memory_config { ____Placeholder_lb_memory_config } lb_memory_config ;
struct TYPE_13__ {int /*<<< orphan*/  (* dscl_calc_lb_num_partitions ) (struct scaler_data const*,int,int*,int*) ;} ;
struct TYPE_12__ {TYPE_4__* dc; } ;
struct TYPE_10__ {scalar_t__ use_max_lb; } ;
struct TYPE_11__ {TYPE_3__ debug; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int LB_MEMORY_CONFIG_0 ; 
 int LB_MEMORY_CONFIG_1 ; 
 int LB_MEMORY_CONFIG_2 ; 
 int LB_MEMORY_CONFIG_3 ; 
 scalar_t__ PIXEL_FORMAT_420BPP10 ; 
 scalar_t__ PIXEL_FORMAT_420BPP8 ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int,int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct scaler_data const*,int,int*,int*) ; 
 int /*<<< orphan*/  FUNC4 (struct scaler_data const*,int,int*,int*) ; 
 int /*<<< orphan*/  FUNC5 (struct scaler_data const*,int,int*,int*) ; 
 int /*<<< orphan*/  FUNC6 (struct scaler_data const*,int,int*,int*) ; 

__attribute__((used)) static enum lb_memory_config FUNC7(struct dcn10_dpp *dpp,
		const struct scaler_data *scl_data)
{
	int num_part_y, num_part_c;
	int vtaps = scl_data->taps.v_taps;
	int vtaps_c = scl_data->taps.v_taps_c;
	int ceil_vratio = FUNC1(scl_data->ratios.vert);
	int ceil_vratio_c = FUNC1(scl_data->ratios.vert_c);
	enum lb_memory_config mem_cfg = LB_MEMORY_CONFIG_0;

	if (dpp->base.ctx->dc->debug.use_max_lb)
		return mem_cfg;

	dpp->base.caps->dscl_calc_lb_num_partitions(
			scl_data, LB_MEMORY_CONFIG_1, &num_part_y, &num_part_c);

	if (FUNC2(ceil_vratio, num_part_y, vtaps)
			&& FUNC2(ceil_vratio_c, num_part_c, vtaps_c))
		return LB_MEMORY_CONFIG_1;

	dpp->base.caps->dscl_calc_lb_num_partitions(
			scl_data, LB_MEMORY_CONFIG_2, &num_part_y, &num_part_c);

	if (FUNC2(ceil_vratio, num_part_y, vtaps)
			&& FUNC2(ceil_vratio_c, num_part_c, vtaps_c))
		return LB_MEMORY_CONFIG_2;

	if (scl_data->format == PIXEL_FORMAT_420BPP8
			|| scl_data->format == PIXEL_FORMAT_420BPP10) {
		dpp->base.caps->dscl_calc_lb_num_partitions(
				scl_data, LB_MEMORY_CONFIG_3, &num_part_y, &num_part_c);

		if (FUNC2(ceil_vratio, num_part_y, vtaps)
				&& FUNC2(ceil_vratio_c, num_part_c, vtaps_c))
			return LB_MEMORY_CONFIG_3;
	}

	dpp->base.caps->dscl_calc_lb_num_partitions(
			scl_data, LB_MEMORY_CONFIG_0, &num_part_y, &num_part_c);

	/*Ensure we can support the requested number of vtaps*/
	FUNC0(FUNC2(ceil_vratio, num_part_y, vtaps)
			&& FUNC2(ceil_vratio_c, num_part_c, vtaps_c));

	return LB_MEMORY_CONFIG_0;
}