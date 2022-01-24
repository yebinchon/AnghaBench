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
struct msm_gpu {int dummy; } ;
struct a6xx_gpu_state {int nr_shaders; int /*<<< orphan*/ * shaders; } ;
struct a6xx_crashdumper {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct msm_gpu*,struct a6xx_gpu_state*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct a6xx_crashdumper*) ; 
 int /*<<< orphan*/ * a6xx_shader_blocks ; 
 int /*<<< orphan*/ * FUNC2 (struct a6xx_gpu_state*,int,int) ; 

__attribute__((used)) static void FUNC3(struct msm_gpu *gpu,
		struct a6xx_gpu_state *a6xx_state,
		struct a6xx_crashdumper *dumper)
{
	int i;

	a6xx_state->shaders = FUNC2(a6xx_state,
		FUNC0(a6xx_shader_blocks), sizeof(*a6xx_state->shaders));

	if (!a6xx_state->shaders)
		return;

	a6xx_state->nr_shaders = FUNC0(a6xx_shader_blocks);

	for (i = 0; i < FUNC0(a6xx_shader_blocks); i++)
		FUNC1(gpu, a6xx_state, &a6xx_shader_blocks[i],
			&a6xx_state->shaders[i], dumper);
}