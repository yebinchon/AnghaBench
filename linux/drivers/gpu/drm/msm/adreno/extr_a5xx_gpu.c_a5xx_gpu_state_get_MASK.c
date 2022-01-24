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
struct msm_gpu_state {int /*<<< orphan*/  rbbm_status; } ;
struct msm_gpu {int dummy; } ;
struct a5xx_gpu_state {struct msm_gpu_state base; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENOMEM ; 
 struct msm_gpu_state* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  REG_A5XX_RBBM_STATUS ; 
 int /*<<< orphan*/  FUNC1 (struct msm_gpu*,struct a5xx_gpu_state*) ; 
 int /*<<< orphan*/  FUNC2 (struct msm_gpu*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct msm_gpu*,struct msm_gpu_state*) ; 
 int /*<<< orphan*/  FUNC4 (struct msm_gpu*,int /*<<< orphan*/ ) ; 
 struct a5xx_gpu_state* FUNC5 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct msm_gpu_state *FUNC6(struct msm_gpu *gpu)
{
	struct a5xx_gpu_state *a5xx_state = FUNC5(sizeof(*a5xx_state),
			GFP_KERNEL);

	if (!a5xx_state)
		return FUNC0(-ENOMEM);

	/* Temporarily disable hardware clock gating before reading the hw */
	FUNC2(gpu, false);

	/* First get the generic state from the adreno core */
	FUNC3(gpu, &(a5xx_state->base));

	a5xx_state->base.rbbm_status = FUNC4(gpu, REG_A5XX_RBBM_STATUS);

	/* Get the HLSQ regs with the help of the crashdumper */
	FUNC1(gpu, a5xx_state);

	FUNC2(gpu, true);

	return &a5xx_state->base;
}