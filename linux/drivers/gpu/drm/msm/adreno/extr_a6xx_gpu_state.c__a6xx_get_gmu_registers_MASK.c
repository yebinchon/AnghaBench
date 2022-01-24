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
struct msm_gpu {int dummy; } ;
struct adreno_gpu {int dummy; } ;
struct a6xx_registers {int count; scalar_t__* registers; } ;
struct a6xx_gpu_state_obj {int /*<<< orphan*/ * data; void const* handle; } ;
struct a6xx_gpu_state {int dummy; } ;
struct a6xx_gmu {int dummy; } ;
struct a6xx_gpu {struct a6xx_gmu gmu; } ;

/* Variables and functions */
 int FUNC0 (scalar_t__*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct a6xx_gmu*,scalar_t__) ; 
 int /*<<< orphan*/ * FUNC2 (struct a6xx_gpu_state*,int,int) ; 
 struct a6xx_gpu* FUNC3 (struct adreno_gpu*) ; 
 struct adreno_gpu* FUNC4 (struct msm_gpu*) ; 

__attribute__((used)) static void FUNC5(struct msm_gpu *gpu,
		struct a6xx_gpu_state *a6xx_state,
		const struct a6xx_registers *regs,
		struct a6xx_gpu_state_obj *obj)
{
	struct adreno_gpu *adreno_gpu = FUNC4(gpu);
	struct a6xx_gpu *a6xx_gpu = FUNC3(adreno_gpu);
	struct a6xx_gmu *gmu = &a6xx_gpu->gmu;
	int i, regcount = 0, index = 0;

	for (i = 0; i < regs->count; i += 2)
		regcount += FUNC0(regs->registers, i);

	obj->handle = (const void *) regs;
	obj->data = FUNC2(a6xx_state, regcount, sizeof(u32));
	if (!obj->data)
		return;

	for (i = 0; i < regs->count; i += 2) {
		u32 count = FUNC0(regs->registers, i);
		int j;

		for (j = 0; j < count; j++)
			obj->data[index++] = FUNC1(gmu,
				regs->registers[i] + j);
	}
}