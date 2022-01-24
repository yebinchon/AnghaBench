#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int /*<<< orphan*/  xtalin_clock_inKhz; int /*<<< orphan*/  dchub_ref_clock_inKhz; int /*<<< orphan*/  dccg_ref_clock_inKhz; } ;
struct resource_pool {TYPE_5__ ref_clocks; } ;
struct dc_init_data {int /*<<< orphan*/  num_virtual_links; int /*<<< orphan*/  asic_id; } ;
struct dc {TYPE_4__* ctx; } ;
typedef  enum dce_version { ____Placeholder_dce_version } dce_version ;
struct TYPE_9__ {TYPE_3__* dc_bios; } ;
struct TYPE_6__ {int /*<<< orphan*/  crystal_frequency; } ;
struct TYPE_7__ {TYPE_1__ pll_info; } ;
struct TYPE_8__ {TYPE_2__ fw_info; scalar_t__ fw_info_valid; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
#define  DCE_VERSION_10_0 140 
#define  DCE_VERSION_11_0 139 
#define  DCE_VERSION_11_2 138 
#define  DCE_VERSION_11_22 137 
#define  DCE_VERSION_12_0 136 
#define  DCE_VERSION_12_1 135 
#define  DCE_VERSION_8_0 134 
#define  DCE_VERSION_8_1 133 
#define  DCE_VERSION_8_3 132 
#define  DCN_VERSION_1_0 131 
#define  DCN_VERSION_1_01 130 
#define  DCN_VERSION_2_0 129 
#define  DCN_VERSION_2_1 128 
 struct resource_pool* FUNC1 (int /*<<< orphan*/ ,struct dc*) ; 
 struct resource_pool* FUNC2 (int /*<<< orphan*/ ,struct dc*,int /*<<< orphan*/ ) ; 
 struct resource_pool* FUNC3 (int /*<<< orphan*/ ,struct dc*) ; 
 struct resource_pool* FUNC4 (int /*<<< orphan*/ ,struct dc*) ; 
 struct resource_pool* FUNC5 (int /*<<< orphan*/ ,struct dc*) ; 
 struct resource_pool* FUNC6 (int /*<<< orphan*/ ,struct dc*) ; 
 struct resource_pool* FUNC7 (int /*<<< orphan*/ ,struct dc*) ; 
 struct resource_pool* FUNC8 (struct dc_init_data const*,struct dc*) ; 
 struct resource_pool* FUNC9 (struct dc_init_data const*,struct dc*) ; 
 struct resource_pool* FUNC10 (struct dc_init_data const*,struct dc*) ; 

struct resource_pool *FUNC11(struct dc  *dc,
					      const struct dc_init_data *init_data,
					      enum dce_version dc_version)
{
	struct resource_pool *res_pool = NULL;

	switch (dc_version) {
	case DCE_VERSION_8_0:
		res_pool = FUNC5(
				init_data->num_virtual_links, dc);
		break;
	case DCE_VERSION_8_1:
		res_pool = FUNC6(
				init_data->num_virtual_links, dc);
		break;
	case DCE_VERSION_8_3:
		res_pool = FUNC7(
				init_data->num_virtual_links, dc);
		break;
	case DCE_VERSION_10_0:
		res_pool = FUNC1(
				init_data->num_virtual_links, dc);
		break;
	case DCE_VERSION_11_0:
		res_pool = FUNC2(
				init_data->num_virtual_links, dc,
				init_data->asic_id);
		break;
	case DCE_VERSION_11_2:
	case DCE_VERSION_11_22:
		res_pool = FUNC3(
				init_data->num_virtual_links, dc);
		break;
	case DCE_VERSION_12_0:
	case DCE_VERSION_12_1:
		res_pool = FUNC4(
				init_data->num_virtual_links, dc);
		break;

#if defined(CONFIG_DRM_AMD_DC_DCN1_0)
	case DCN_VERSION_1_0:
	case DCN_VERSION_1_01:
		res_pool = dcn10_create_resource_pool(init_data, dc);
		break;
#endif


#if defined(CONFIG_DRM_AMD_DC_DCN2_0)
	case DCN_VERSION_2_0:
		res_pool = dcn20_create_resource_pool(init_data, dc);
		break;
#endif
#if defined(CONFIG_DRM_AMD_DC_DCN2_1)
	case DCN_VERSION_2_1:
		res_pool = dcn21_create_resource_pool(init_data, dc);
		break;
#endif

	default:
		break;
	}

	if (res_pool != NULL) {
		if (dc->ctx->dc_bios->fw_info_valid) {
			res_pool->ref_clocks.xtalin_clock_inKhz =
				dc->ctx->dc_bios->fw_info.pll_info.crystal_frequency;
			/* initialize with firmware data first, no all
			 * ASIC have DCCG SW component. FPGA or
			 * simulation need initialization of
			 * dccg_ref_clock_inKhz, dchub_ref_clock_inKhz
			 * with xtalin_clock_inKhz
			 */
			res_pool->ref_clocks.dccg_ref_clock_inKhz =
				res_pool->ref_clocks.xtalin_clock_inKhz;
			res_pool->ref_clocks.dchub_ref_clock_inKhz =
				res_pool->ref_clocks.xtalin_clock_inKhz;
		} else
			FUNC0(false);
	}

	return res_pool;
}