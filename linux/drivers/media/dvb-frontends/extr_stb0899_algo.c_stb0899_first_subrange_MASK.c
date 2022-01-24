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
struct stb0899_params {int /*<<< orphan*/  freq; } ;
struct stb0899_internal {long tuner_offst; int sub_dir; int /*<<< orphan*/  freq; scalar_t__ sub_range; int /*<<< orphan*/  srch_range; } ;
struct stb0899_state {int /*<<< orphan*/  frontend; struct stb0899_config* config; struct stb0899_params params; struct stb0899_internal internal; } ;
struct stb0899_config {int /*<<< orphan*/  (* tuner_get_bandwidth ) (int /*<<< orphan*/ *,int*) ;} ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int) ; 
 int FUNC1 (struct stb0899_state*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int*) ; 

__attribute__((used)) static void FUNC4(struct stb0899_state *state)
{
	struct stb0899_internal *internal	= &state->internal;
	struct stb0899_params *params		= &state->params;
	struct stb0899_config *config		=  state->config;

	int range = 0;
	u32 bandwidth = 0;

	if (config->tuner_get_bandwidth) {
		FUNC2(&state->frontend, 1);
		config->tuner_get_bandwidth(&state->frontend, &bandwidth);
		FUNC2(&state->frontend, 0);
		range = bandwidth - FUNC1(state) / 2;
	}

	if (range > 0)
		internal->sub_range = FUNC0(internal->srch_range, range);
	else
		internal->sub_range = 0;

	internal->freq = params->freq;
	internal->tuner_offst = 0L;
	internal->sub_dir = 1;
}