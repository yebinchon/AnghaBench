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
struct pp_smu_funcs {int dummy; } ;
struct hw_asic_id {int chip_family; int /*<<< orphan*/  hw_internal_rev; } ;
struct dccg {int dummy; } ;
struct dc_context {struct hw_asic_id asic_id; } ;
struct clk_mgr {int dummy; } ;
struct clk_mgr_internal {struct clk_mgr base; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 () ; 
#define  FAMILY_AI 134 
#define  FAMILY_CI 133 
#define  FAMILY_CZ 132 
#define  FAMILY_KV 131 
#define  FAMILY_NV 130 
#define  FAMILY_RV 129 
#define  FAMILY_VI 128 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC13 (struct dc_context*,struct clk_mgr_internal*) ; 
 int /*<<< orphan*/  FUNC14 (struct dc_context*,struct clk_mgr_internal*) ; 
 int /*<<< orphan*/  FUNC15 (struct dc_context*,struct clk_mgr_internal*) ; 
 int /*<<< orphan*/  FUNC16 (struct dc_context*,struct clk_mgr_internal*) ; 
 int /*<<< orphan*/  FUNC17 (struct dc_context*,struct clk_mgr_internal*) ; 
 int /*<<< orphan*/  FUNC18 (struct dc_context*,struct clk_mgr_internal*,struct pp_smu_funcs*,struct dccg*) ; 
 struct clk_mgr_internal* FUNC19 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (struct dc_context*,struct clk_mgr_internal*,struct pp_smu_funcs*,struct dccg*) ; 
 int /*<<< orphan*/  FUNC21 (struct dc_context*,struct clk_mgr_internal*,struct pp_smu_funcs*) ; 
 int /*<<< orphan*/  FUNC22 (struct dc_context*,struct clk_mgr_internal*,struct pp_smu_funcs*) ; 

struct clk_mgr *FUNC23(struct dc_context *ctx, struct pp_smu_funcs *pp_smu, struct dccg *dccg)
{
	struct hw_asic_id asic_id = ctx->asic_id;

	struct clk_mgr_internal *clk_mgr = FUNC19(sizeof(*clk_mgr), GFP_KERNEL);

	if (clk_mgr == NULL) {
		FUNC12();
		return NULL;
	}

	switch (asic_id.chip_family) {
	case FAMILY_CI:
	case FAMILY_KV:
		FUNC17(ctx, clk_mgr);
		break;
	case FAMILY_CZ:
		FUNC13(ctx, clk_mgr);
		break;
	case FAMILY_VI:
		if (FUNC9(asic_id.hw_internal_rev) ||
				FUNC5(asic_id.hw_internal_rev)) {
			FUNC17(ctx, clk_mgr);
			break;
		}
		if (FUNC6(asic_id.hw_internal_rev) ||
				FUNC7(asic_id.hw_internal_rev) ||
				FUNC8(asic_id.hw_internal_rev)) {
			FUNC14(ctx, clk_mgr);
			break;
		}
		if (FUNC10(asic_id.hw_internal_rev)) {
			FUNC14(ctx, clk_mgr);
			break;
		}
		break;
	case FAMILY_AI:
		if (FUNC4(asic_id.hw_internal_rev))
			FUNC16(ctx, clk_mgr);
		else
			FUNC15(ctx, clk_mgr);
		break;

#if defined(CONFIG_DRM_AMD_DC_DCN1_0)
	case FAMILY_RV:
#if defined(CONFIG_DRM_AMD_DC_DCN2_1)
		if (ASICREV_IS_RENOIR(asic_id.hw_internal_rev)) {
			rn_clk_mgr_construct(ctx, clk_mgr, pp_smu, dccg);
			break;
		}
#endif	/* DCN2_1 */
		if (ASICREV_IS_RAVEN2(asic_id.hw_internal_rev)) {
			rv2_clk_mgr_construct(ctx, clk_mgr, pp_smu);
			break;
		}
		if (ASICREV_IS_RAVEN(asic_id.hw_internal_rev) ||
				ASICREV_IS_PICASSO(asic_id.hw_internal_rev)) {
			rv1_clk_mgr_construct(ctx, clk_mgr, pp_smu);
			break;
		}
		break;
#endif	/* Family RV */

#if defined(CONFIG_DRM_AMD_DC_DCN2_0)
	case FAMILY_NV:
		dcn20_clk_mgr_construct(ctx, clk_mgr, pp_smu, dccg);
		break;
#endif /* Family NV */

	default:
		FUNC11(0); /* Unknown Asic */
		break;
	}

	return &clk_mgr->base;
}