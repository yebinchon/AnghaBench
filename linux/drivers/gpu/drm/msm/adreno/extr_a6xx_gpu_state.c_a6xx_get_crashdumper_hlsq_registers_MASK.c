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
typedef  int u64 ;
typedef  int u32 ;
struct msm_gpu {int dummy; } ;
struct a6xx_registers {int count; int* registers; int val0; int /*<<< orphan*/  val1; } ;
struct a6xx_gpu_state_obj {int /*<<< orphan*/  data; struct a6xx_registers const* handle; } ;
struct a6xx_gpu_state {int dummy; } ;
struct a6xx_crashdumper {int* ptr; int iova; } ;

/* Variables and functions */
 int A6XX_CD_DATA_OFFSET ; 
 int A6XX_CD_DATA_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int*) ; 
 scalar_t__ FUNC1 (int*,int,int,int) ; 
 scalar_t__ FUNC2 (int*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (int*,int) ; 
 int REG_A6XX_HLSQ_DBG_AHB_READ_APERTURE ; 
 int /*<<< orphan*/  REG_A6XX_HLSQ_DBG_READ_SEL ; 
 scalar_t__ FUNC4 (int) ; 
 scalar_t__ FUNC5 (struct msm_gpu*,struct a6xx_crashdumper*) ; 
 int /*<<< orphan*/  FUNC6 (struct a6xx_gpu_state*,int*,int) ; 

__attribute__((used)) static void FUNC7(struct msm_gpu *gpu,
		struct a6xx_gpu_state *a6xx_state,
		const struct a6xx_registers *regs,
		struct a6xx_gpu_state_obj *obj,
		struct a6xx_crashdumper *dumper)

{
	u64 *in = dumper->ptr;
	u64 out = dumper->iova + A6XX_CD_DATA_OFFSET;
	int i, regcount = 0;

	in += FUNC2(in, REG_A6XX_HLSQ_DBG_READ_SEL, regs->val1);

	for (i = 0; i < regs->count; i += 2) {
		u32 count = FUNC3(regs->registers, i);
		u32 offset = REG_A6XX_HLSQ_DBG_AHB_READ_APERTURE +
			regs->registers[i] - (regs->val0 >> 2);

		in += FUNC1(in, offset, count, out);

		out += count * sizeof(u32);
		regcount += count;
	}

	FUNC0(in);

	if (FUNC4((regcount * sizeof(u32)) > A6XX_CD_DATA_SIZE))
		return;

	if (FUNC5(gpu, dumper))
		return;

	obj->handle = regs;
	obj->data = FUNC6(a6xx_state, dumper->ptr + A6XX_CD_DATA_OFFSET,
		regcount * sizeof(u32));
}