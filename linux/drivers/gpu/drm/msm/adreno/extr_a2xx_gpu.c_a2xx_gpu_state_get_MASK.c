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

/* Variables and functions */
 int /*<<< orphan*/  ENOMEM ; 
 struct msm_gpu_state* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  REG_A2XX_RBBM_STATUS ; 
 int /*<<< orphan*/  FUNC1 (struct msm_gpu*,struct msm_gpu_state*) ; 
 int /*<<< orphan*/  FUNC2 (struct msm_gpu*,int /*<<< orphan*/ ) ; 
 struct msm_gpu_state* FUNC3 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct msm_gpu_state *FUNC4(struct msm_gpu *gpu)
{
	struct msm_gpu_state *state = FUNC3(sizeof(*state), GFP_KERNEL);

	if (!state)
		return FUNC0(-ENOMEM);

	FUNC1(gpu, state);

	state->rbbm_status = FUNC2(gpu, REG_A2XX_RBBM_STATUS);

	return state;
}