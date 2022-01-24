#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_6__ ;
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {unsigned int stream_enc_count; unsigned int pipe_count; unsigned int audio_count; unsigned int clk_src_count; int /*<<< orphan*/ * pp_smu; int /*<<< orphan*/ * dccg; int /*<<< orphan*/ * dmcu; int /*<<< orphan*/ * abm; int /*<<< orphan*/ * dp_clock_source; int /*<<< orphan*/ ** clock_sources; scalar_t__* audios; int /*<<< orphan*/ ** mcif_wb; int /*<<< orphan*/ ** dwbc; TYPE_3__* res_cap; int /*<<< orphan*/ ** timing_generators; TYPE_5__** opps; int /*<<< orphan*/ ** sw_i2cs; int /*<<< orphan*/ ** hw_i2cs; int /*<<< orphan*/ ** engines; int /*<<< orphan*/ * irqs; int /*<<< orphan*/ ** hubps; TYPE_6__** ipps; int /*<<< orphan*/ ** dpps; int /*<<< orphan*/ * hubbub; int /*<<< orphan*/ * mpc; int /*<<< orphan*/ ** dscs; int /*<<< orphan*/ ** stream_enc; } ;
struct dcn20_resource_pool {TYPE_4__ base; } ;
struct TYPE_12__ {TYPE_2__* funcs; } ;
struct TYPE_11__ {TYPE_1__* funcs; } ;
struct TYPE_9__ {unsigned int num_dsc; unsigned int num_ddc; unsigned int num_opp; unsigned int num_timing_generator; unsigned int num_dwb; } ;
struct TYPE_8__ {int /*<<< orphan*/  (* ipp_destroy ) (TYPE_6__**) ;} ;
struct TYPE_7__ {int /*<<< orphan*/  (* opp_destroy ) (TYPE_5__**) ;} ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_6__**) ; 
 int /*<<< orphan*/  FUNC18 (TYPE_5__**) ; 

__attribute__((used)) static void FUNC19(struct dcn20_resource_pool *pool)
{
	unsigned int i;

	for (i = 0; i < pool->base.stream_enc_count; i++) {
		if (pool->base.stream_enc[i] != NULL) {
			FUNC16(FUNC0(pool->base.stream_enc[i]));
			pool->base.stream_enc[i] = NULL;
		}
	}

#ifdef CONFIG_DRM_AMD_DC_DSC_SUPPORT
	for (i = 0; i < pool->base.res_cap->num_dsc; i++) {
		if (pool->base.dscs[i] != NULL)
			dcn20_dsc_destroy(&pool->base.dscs[i]);
	}
#endif

	if (pool->base.mpc != NULL) {
		FUNC16(FUNC5(pool->base.mpc));
		pool->base.mpc = NULL;
	}
	if (pool->base.hubbub != NULL) {
		FUNC16(pool->base.hubbub);
		pool->base.hubbub = NULL;
	}
	for (i = 0; i < pool->base.pipe_count; i++) {
		if (pool->base.dpps[i] != NULL)
			FUNC12(&pool->base.dpps[i]);

		if (pool->base.ipps[i] != NULL)
			pool->base.ipps[i]->funcs->ipp_destroy(&pool->base.ipps[i]);

		if (pool->base.hubps[i] != NULL) {
			FUNC16(FUNC3(pool->base.hubps[i]));
			pool->base.hubps[i] = NULL;
		}

		if (pool->base.irqs != NULL) {
			FUNC6(&pool->base.irqs);
		}
	}

	for (i = 0; i < pool->base.res_cap->num_ddc; i++) {
		if (pool->base.engines[i] != NULL)
			FUNC7(&pool->base.engines[i]);
		if (pool->base.hw_i2cs[i] != NULL) {
			FUNC16(pool->base.hw_i2cs[i]);
			pool->base.hw_i2cs[i] = NULL;
		}
		if (pool->base.sw_i2cs[i] != NULL) {
			FUNC16(pool->base.sw_i2cs[i]);
			pool->base.sw_i2cs[i] = NULL;
		}
	}

	for (i = 0; i < pool->base.res_cap->num_opp; i++) {
		if (pool->base.opps[i] != NULL)
			pool->base.opps[i]->funcs->opp_destroy(&pool->base.opps[i]);
	}

	for (i = 0; i < pool->base.res_cap->num_timing_generator; i++) {
		if (pool->base.timing_generators[i] != NULL)	{
			FUNC16(FUNC1(pool->base.timing_generators[i]));
			pool->base.timing_generators[i] = NULL;
		}
	}

	for (i = 0; i < pool->base.res_cap->num_dwb; i++) {
		if (pool->base.dwbc[i] != NULL) {
			FUNC16(FUNC2(pool->base.dwbc[i]));
			pool->base.dwbc[i] = NULL;
		}
		if (pool->base.mcif_wb[i] != NULL) {
			FUNC16(FUNC4(pool->base.mcif_wb[i]));
			pool->base.mcif_wb[i] = NULL;
		}
	}

	for (i = 0; i < pool->base.audio_count; i++) {
		if (pool->base.audios[i])
			FUNC9(&pool->base.audios[i]);
	}

	for (i = 0; i < pool->base.clk_src_count; i++) {
		if (pool->base.clock_sources[i] != NULL) {
			FUNC11(&pool->base.clock_sources[i]);
			pool->base.clock_sources[i] = NULL;
		}
	}

	if (pool->base.dp_clock_source != NULL) {
		FUNC11(&pool->base.dp_clock_source);
		pool->base.dp_clock_source = NULL;
	}


	if (pool->base.abm != NULL)
		FUNC8(&pool->base.abm);

	if (pool->base.dmcu != NULL)
		FUNC10(&pool->base.dmcu);

	if (pool->base.dccg != NULL)
		FUNC15(&pool->base.dccg);

	if (pool->base.pp_smu != NULL)
		FUNC14(&pool->base.pp_smu);

}