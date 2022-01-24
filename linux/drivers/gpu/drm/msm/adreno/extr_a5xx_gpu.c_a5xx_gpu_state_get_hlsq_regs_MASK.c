#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u64 ;
typedef  int u32 ;
struct msm_gpu {int /*<<< orphan*/  aspace; } ;
struct a5xx_gpu_state {int /*<<< orphan*/  hlsqregs; } ;
struct a5xx_crashdumper {int* ptr; int iova; int /*<<< orphan*/  bo; int /*<<< orphan*/  member_0; } ;
struct TYPE_3__ {int count; int type; } ;

/* Variables and functions */
 int FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ REG_A5XX_HLSQ_DBG_AHB_READ_APERTURE ; 
 scalar_t__ REG_A5XX_HLSQ_DBG_READ_SEL ; 
 int SZ_1K ; 
 scalar_t__ FUNC1 (struct msm_gpu*,struct a5xx_crashdumper*) ; 
 scalar_t__ FUNC2 (struct msm_gpu*,struct a5xx_crashdumper*) ; 
 TYPE_1__* a5xx_hlsq_aperture_regs ; 
 int /*<<< orphan*/  FUNC3 (int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC7(struct msm_gpu *gpu,
		struct a5xx_gpu_state *a5xx_state)
{
	struct a5xx_crashdumper dumper = { 0 };
	u32 offset, count = 0;
	u64 *ptr;
	int i;

	if (FUNC1(gpu, &dumper))
		return;

	/* The script will be written at offset 0 */
	ptr = dumper.ptr;

	/* Start writing the data at offset 256k */
	offset = dumper.iova + (256 * SZ_1K);

	/* Count how many additional registers to get from the HLSQ aperture */
	for (i = 0; i < FUNC0(a5xx_hlsq_aperture_regs); i++)
		count += a5xx_hlsq_aperture_regs[i].count;

	a5xx_state->hlsqregs = FUNC3(count, sizeof(u32), GFP_KERNEL);
	if (!a5xx_state->hlsqregs)
		return;

	/* Build the crashdump script */
	for (i = 0; i < FUNC0(a5xx_hlsq_aperture_regs); i++) {
		u32 type = a5xx_hlsq_aperture_regs[i].type;
		u32 c = a5xx_hlsq_aperture_regs[i].count;

		/* Write the register to select the desired bank */
		*ptr++ = ((u64) type << 8);
		*ptr++ = (((u64) REG_A5XX_HLSQ_DBG_READ_SEL) << 44) |
			(1 << 21) | 1;

		*ptr++ = offset;
		*ptr++ = (((u64) REG_A5XX_HLSQ_DBG_AHB_READ_APERTURE) << 44)
			| c;

		offset += c * sizeof(u32);
	}

	/* Write two zeros to close off the script */
	*ptr++ = 0;
	*ptr++ = 0;

	if (FUNC2(gpu, &dumper)) {
		FUNC4(a5xx_state->hlsqregs);
		FUNC6(dumper.bo, gpu->aspace, true);
		return;
	}

	/* Copy the data from the crashdumper to the state */
	FUNC5(a5xx_state->hlsqregs, dumper.ptr + (256 * SZ_1K),
		count * sizeof(u32));

	FUNC6(dumper.bo, gpu->aspace, true);
}