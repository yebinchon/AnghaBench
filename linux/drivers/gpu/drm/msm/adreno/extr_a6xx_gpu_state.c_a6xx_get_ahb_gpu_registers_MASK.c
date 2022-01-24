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
struct a6xx_registers {int count; scalar_t__* registers; } ;
struct a6xx_gpu_state_obj {int /*<<< orphan*/ * data; void const* handle; } ;
struct a6xx_gpu_state {int dummy; } ;

/* Variables and functions */
 int FUNC0 (scalar_t__*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct msm_gpu*,scalar_t__) ; 
 int /*<<< orphan*/ * FUNC2 (struct a6xx_gpu_state*,int,int) ; 

__attribute__((used)) static void FUNC3(struct msm_gpu *gpu,
		struct a6xx_gpu_state *a6xx_state,
		const struct a6xx_registers *regs,
		struct a6xx_gpu_state_obj *obj)
{
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
			obj->data[index++] = FUNC1(gpu,
				regs->registers[i] + j);
	}
}