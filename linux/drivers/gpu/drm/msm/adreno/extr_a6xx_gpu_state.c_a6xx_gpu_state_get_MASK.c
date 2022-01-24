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
struct msm_gpu_state {int dummy; } ;
struct msm_gpu {int /*<<< orphan*/  aspace; } ;
struct adreno_gpu {int dummy; } ;
struct a6xx_gpu_state {struct msm_gpu_state base; int /*<<< orphan*/  objs; } ;
struct a6xx_gpu {int /*<<< orphan*/  gmu; } ;
struct a6xx_crashdumper {int /*<<< orphan*/  bo; int /*<<< orphan*/  member_0; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENOMEM ; 
 struct msm_gpu_state* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct msm_gpu*,struct a6xx_crashdumper*) ; 
 int /*<<< orphan*/  FUNC3 (struct msm_gpu*,struct a6xx_gpu_state*,struct a6xx_crashdumper*) ; 
 int /*<<< orphan*/  FUNC4 (struct msm_gpu*,struct a6xx_gpu_state*,struct a6xx_crashdumper*) ; 
 int /*<<< orphan*/  FUNC5 (struct msm_gpu*,struct a6xx_gpu_state*) ; 
 int /*<<< orphan*/  FUNC6 (struct msm_gpu*,struct a6xx_gpu_state*) ; 
 int /*<<< orphan*/  FUNC7 (struct msm_gpu*,struct a6xx_gpu_state*) ; 
 int /*<<< orphan*/  FUNC8 (struct msm_gpu*,struct a6xx_gpu_state*,struct a6xx_crashdumper*) ; 
 int /*<<< orphan*/  FUNC9 (struct msm_gpu*,struct a6xx_gpu_state*,struct a6xx_crashdumper*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (struct msm_gpu*,struct msm_gpu_state*) ; 
 struct a6xx_gpu_state* FUNC12 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 struct a6xx_gpu* FUNC14 (struct adreno_gpu*) ; 
 struct adreno_gpu* FUNC15 (struct msm_gpu*) ; 

struct msm_gpu_state *FUNC16(struct msm_gpu *gpu)
{
	struct a6xx_crashdumper dumper = { 0 };
	struct adreno_gpu *adreno_gpu = FUNC15(gpu);
	struct a6xx_gpu *a6xx_gpu = FUNC14(adreno_gpu);
	struct a6xx_gpu_state *a6xx_state = FUNC12(sizeof(*a6xx_state),
		GFP_KERNEL);

	if (!a6xx_state)
		return FUNC0(-ENOMEM);

	FUNC1(&a6xx_state->objs);

	/* Get the generic state from the adreno core */
	FUNC11(gpu, &a6xx_state->base);

	FUNC6(gpu, a6xx_state);

	/* If GX isn't on the rest of the data isn't going to be accessible */
	if (!FUNC10(&a6xx_gpu->gmu))
		return &a6xx_state->base;

	/* Get the banks of indexed registers */
	FUNC7(gpu, a6xx_state);

	/* Try to initialize the crashdumper */
	if (!FUNC2(gpu, &dumper)) {
		FUNC8(gpu, a6xx_state, &dumper);
		FUNC9(gpu, a6xx_state, &dumper);
		FUNC3(gpu, a6xx_state, &dumper);
		FUNC4(gpu, a6xx_state, &dumper);

		FUNC13(dumper.bo, gpu->aspace, true);
	}

	FUNC5(gpu, a6xx_state);

	return  &a6xx_state->base;
}