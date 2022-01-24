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
struct TYPE_4__ {unsigned int pipe_count; unsigned int stream_enc_count; unsigned int clk_src_count; unsigned int audio_count; int /*<<< orphan*/ * irqs; int /*<<< orphan*/ * dmcu; int /*<<< orphan*/ * abm; int /*<<< orphan*/ ** audios; int /*<<< orphan*/ * dp_clock_source; int /*<<< orphan*/ ** clock_sources; int /*<<< orphan*/ ** stream_enc; int /*<<< orphan*/ ** sw_i2cs; int /*<<< orphan*/ ** hw_i2cs; int /*<<< orphan*/ ** engines; TYPE_1__* res_cap; int /*<<< orphan*/ ** timing_generators; int /*<<< orphan*/ ** mis; int /*<<< orphan*/ ** ipps; int /*<<< orphan*/ ** transforms; int /*<<< orphan*/ ** opps; } ;
struct dce110_resource_pool {TYPE_2__ base; } ;
struct TYPE_3__ {unsigned int num_ddc; } ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC13(struct dce110_resource_pool *pool)
{
	unsigned int i;

	for (i = 0; i < pool->base.pipe_count; i++) {
		if (pool->base.opps[i] != NULL)
			FUNC5(&pool->base.opps[i]);

		if (pool->base.transforms[i] != NULL)
			FUNC7(&pool->base.transforms[i]);

		if (pool->base.ipps[i] != NULL)
			FUNC11(&pool->base.ipps[i]);

		if (pool->base.mis[i] != NULL) {
			FUNC12(FUNC2(pool->base.mis[i]));
			pool->base.mis[i] = NULL;
		}

		if (pool->base.timing_generators[i] != NULL) {
			FUNC12(FUNC1(pool->base.timing_generators[i]));
			pool->base.timing_generators[i] = NULL;
		}
	}

	for (i = 0; i < pool->base.res_cap->num_ddc; i++) {
		if (pool->base.engines[i] != NULL)
			FUNC4(&pool->base.engines[i]);
		if (pool->base.hw_i2cs[i] != NULL) {
			FUNC12(pool->base.hw_i2cs[i]);
			pool->base.hw_i2cs[i] = NULL;
		}
		if (pool->base.sw_i2cs[i] != NULL) {
			FUNC12(pool->base.sw_i2cs[i]);
			pool->base.sw_i2cs[i] = NULL;
		}
	}

	for (i = 0; i < pool->base.stream_enc_count; i++) {
		if (pool->base.stream_enc[i] != NULL)
			FUNC12(FUNC0(pool->base.stream_enc[i]));
	}

	for (i = 0; i < pool->base.clk_src_count; i++) {
		if (pool->base.clock_sources[i] != NULL) {
			FUNC6(&pool->base.clock_sources[i]);
		}
	}

	if (pool->base.dp_clock_source != NULL)
		FUNC6(&pool->base.dp_clock_source);

	for (i = 0; i < pool->base.audio_count; i++)	{
		if (pool->base.audios[i] != NULL) {
			FUNC9(&pool->base.audios[i]);
		}
	}

	if (pool->base.abm != NULL)
		FUNC8(&pool->base.abm);

	if (pool->base.dmcu != NULL)
		FUNC10(&pool->base.dmcu);

	if (pool->base.irqs != NULL) {
		FUNC3(&pool->base.irqs);
	}
}