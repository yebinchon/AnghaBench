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
typedef  scalar_t__ u32 ;
struct msm_gpu {int dummy; } ;
struct a6xx_gpu_state_obj {int /*<<< orphan*/  data; struct a6xx_dbgahb_cluster const* handle; } ;
struct a6xx_gpu_state {int dummy; } ;
struct a6xx_dbgahb_cluster {int statetype; int count; int base; scalar_t__* registers; } ;
struct a6xx_crashdumper {int* ptr; int iova; } ;

/* Variables and functions */
 int A6XX_CD_DATA_OFFSET ; 
 size_t A6XX_CD_DATA_SIZE ; 
 int A6XX_NUM_CONTEXTS ; 
 int /*<<< orphan*/  FUNC0 (int*) ; 
 scalar_t__ FUNC1 (int*,scalar_t__,int,int) ; 
 scalar_t__ FUNC2 (int*,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (scalar_t__*,int) ; 
 scalar_t__ REG_A6XX_HLSQ_DBG_AHB_READ_APERTURE ; 
 int /*<<< orphan*/  REG_A6XX_HLSQ_DBG_READ_SEL ; 
 scalar_t__ FUNC4 (int) ; 
 scalar_t__ FUNC5 (struct msm_gpu*,struct a6xx_crashdumper*) ; 
 int /*<<< orphan*/  FUNC6 (struct a6xx_gpu_state*,int*,size_t) ; 

__attribute__((used)) static void FUNC7(struct msm_gpu *gpu,
		struct a6xx_gpu_state *a6xx_state,
		const struct a6xx_dbgahb_cluster *dbgahb,
		struct a6xx_gpu_state_obj *obj,
		struct a6xx_crashdumper *dumper)
{
	u64 *in = dumper->ptr;
	u64 out = dumper->iova + A6XX_CD_DATA_OFFSET;
	size_t datasize;
	int i, regcount = 0;

	for (i = 0; i < A6XX_NUM_CONTEXTS; i++) {
		int j;

		in += FUNC2(in, REG_A6XX_HLSQ_DBG_READ_SEL,
			(dbgahb->statetype + i * 2) << 8);

		for (j = 0; j < dbgahb->count; j += 2) {
			int count = FUNC3(dbgahb->registers, j);
			u32 offset = REG_A6XX_HLSQ_DBG_AHB_READ_APERTURE +
				dbgahb->registers[j] - (dbgahb->base >> 2);

			in += FUNC1(in, offset, count, out);

			out += count * sizeof(u32);

			if (i == 0)
				regcount += count;
		}
	}

	FUNC0(in);

	datasize = regcount * A6XX_NUM_CONTEXTS * sizeof(u32);

	if (FUNC4(datasize > A6XX_CD_DATA_SIZE))
		return;

	if (FUNC5(gpu, dumper))
		return;

	obj->handle = dbgahb;
	obj->data = FUNC6(a6xx_state, dumper->ptr + A6XX_CD_DATA_OFFSET,
		datasize);
}