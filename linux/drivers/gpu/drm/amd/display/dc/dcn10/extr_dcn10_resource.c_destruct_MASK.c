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
struct TYPE_10__ {unsigned int stream_enc_count; unsigned int pipe_count; unsigned int audio_count; unsigned int clk_src_count; int /*<<< orphan*/ * pp_smu; int /*<<< orphan*/ * dmcu; int /*<<< orphan*/ * abm; int /*<<< orphan*/ * dp_clock_source; int /*<<< orphan*/ ** clock_sources; scalar_t__* audios; int /*<<< orphan*/ ** sw_i2cs; int /*<<< orphan*/ ** hw_i2cs; int /*<<< orphan*/ ** engines; TYPE_3__* res_cap; int /*<<< orphan*/ ** timing_generators; int /*<<< orphan*/ * irqs; int /*<<< orphan*/ ** hubps; TYPE_5__** ipps; int /*<<< orphan*/ ** dpps; TYPE_6__** opps; int /*<<< orphan*/ * hubbub; int /*<<< orphan*/ * mpc; int /*<<< orphan*/ ** stream_enc; } ;
struct dcn10_resource_pool {TYPE_4__ base; } ;
struct TYPE_12__ {TYPE_1__* funcs; } ;
struct TYPE_11__ {TYPE_2__* funcs; } ;
struct TYPE_9__ {unsigned int num_ddc; } ;
struct TYPE_8__ {int /*<<< orphan*/  (* ipp_destroy ) (TYPE_5__**) ;} ;
struct TYPE_7__ {int /*<<< orphan*/  (* opp_destroy ) (TYPE_6__**) ;} ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_6__**) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_5__**) ; 

__attribute__((used)) static void FUNC14(struct dcn10_resource_pool *pool)
{
	unsigned int i;

	for (i = 0; i < pool->base.stream_enc_count; i++) {
		if (pool->base.stream_enc[i] != NULL) {
			FUNC11(FUNC0(pool->base.stream_enc[i]));
			pool->base.stream_enc[i] = NULL;
		}
	}

	if (pool->base.mpc != NULL) {
		FUNC11(FUNC3(pool->base.mpc));
		pool->base.mpc = NULL;
	}

	if (pool->base.hubbub != NULL) {
		FUNC11(pool->base.hubbub);
		pool->base.hubbub = NULL;
	}

	for (i = 0; i < pool->base.pipe_count; i++) {
		if (pool->base.opps[i] != NULL)
			pool->base.opps[i]->funcs->opp_destroy(&pool->base.opps[i]);

		if (pool->base.dpps[i] != NULL)
			FUNC10(&pool->base.dpps[i]);

		if (pool->base.ipps[i] != NULL)
			pool->base.ipps[i]->funcs->ipp_destroy(&pool->base.ipps[i]);

		if (pool->base.hubps[i] != NULL) {
			FUNC11(FUNC2(pool->base.hubps[i]));
			pool->base.hubps[i] = NULL;
		}

		if (pool->base.irqs != NULL) {
			FUNC4(&pool->base.irqs);
		}

		if (pool->base.timing_generators[i] != NULL)	{
			FUNC11(FUNC1(pool->base.timing_generators[i]));
			pool->base.timing_generators[i] = NULL;
		}
	}

	for (i = 0; i < pool->base.res_cap->num_ddc; i++) {
		if (pool->base.engines[i] != NULL)
			FUNC5(&pool->base.engines[i]);
		if (pool->base.hw_i2cs[i] != NULL) {
			FUNC11(pool->base.hw_i2cs[i]);
			pool->base.hw_i2cs[i] = NULL;
		}
		if (pool->base.sw_i2cs[i] != NULL) {
			FUNC11(pool->base.sw_i2cs[i]);
			pool->base.sw_i2cs[i] = NULL;
		}
	}

	for (i = 0; i < pool->base.audio_count; i++) {
		if (pool->base.audios[i])
			FUNC7(&pool->base.audios[i]);
	}

	for (i = 0; i < pool->base.clk_src_count; i++) {
		if (pool->base.clock_sources[i] != NULL) {
			FUNC9(&pool->base.clock_sources[i]);
			pool->base.clock_sources[i] = NULL;
		}
	}

	if (pool->base.dp_clock_source != NULL) {
		FUNC9(&pool->base.dp_clock_source);
		pool->base.dp_clock_source = NULL;
	}

	if (pool->base.abm != NULL)
		FUNC6(&pool->base.abm);

	if (pool->base.dmcu != NULL)
		FUNC8(&pool->base.dmcu);

	FUNC11(pool->base.pp_smu);
}