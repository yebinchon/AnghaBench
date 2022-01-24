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
typedef  int /*<<< orphan*/  u64 ;
typedef  int /*<<< orphan*/  u32 ;
struct msm_gpu {int dummy; } ;
struct a6xx_shader_block {int size; int type; } ;
struct a6xx_gpu_state_obj {int /*<<< orphan*/  data; struct a6xx_shader_block const* handle; } ;
struct a6xx_gpu_state {int dummy; } ;
struct a6xx_crashdumper {int iova; int /*<<< orphan*/ * ptr; } ;

/* Variables and functions */
 int A6XX_CD_DATA_OFFSET ; 
 size_t A6XX_CD_DATA_SIZE ; 
 int A6XX_NUM_SHADER_BANKS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  REG_A6XX_HLSQ_DBG_AHB_READ_APERTURE ; 
 int /*<<< orphan*/  REG_A6XX_HLSQ_DBG_READ_SEL ; 
 scalar_t__ FUNC3 (int) ; 
 scalar_t__ FUNC4 (struct msm_gpu*,struct a6xx_crashdumper*) ; 
 int /*<<< orphan*/  FUNC5 (struct a6xx_gpu_state*,int /*<<< orphan*/ *,size_t) ; 

__attribute__((used)) static void FUNC6(struct msm_gpu *gpu,
		struct a6xx_gpu_state *a6xx_state,
		const struct a6xx_shader_block *block,
		struct a6xx_gpu_state_obj *obj,
		struct a6xx_crashdumper *dumper)
{
	u64 *in = dumper->ptr;
	size_t datasize = block->size * A6XX_NUM_SHADER_BANKS * sizeof(u32);
	int i;

	if (FUNC3(datasize > A6XX_CD_DATA_SIZE))
		return;

	for (i = 0; i < A6XX_NUM_SHADER_BANKS; i++) {
		in += FUNC2(in, REG_A6XX_HLSQ_DBG_READ_SEL,
			(block->type << 8) | i);

		in += FUNC1(in, REG_A6XX_HLSQ_DBG_AHB_READ_APERTURE,
			block->size, dumper->iova + A6XX_CD_DATA_OFFSET);
	}

	FUNC0(in);

	if (FUNC4(gpu, dumper))
		return;

	obj->handle = block;
	obj->data = FUNC5(a6xx_state, dumper->ptr + A6XX_CD_DATA_OFFSET,
		datasize);
}