#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct msm_ringbuffer {int dummy; } ;
struct msm_gpu {TYPE_1__* funcs; struct msm_ringbuffer** rb; } ;
struct adreno_gpu {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* flush ) (struct msm_gpu*,struct msm_ringbuffer*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  CP_ME_INIT ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (struct msm_ringbuffer*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct msm_ringbuffer*,int) ; 
 scalar_t__ FUNC2 (struct msm_gpu*,struct msm_ringbuffer*) ; 
 scalar_t__ FUNC3 (struct adreno_gpu*) ; 
 int /*<<< orphan*/  FUNC4 (struct msm_gpu*,struct msm_ringbuffer*) ; 
 struct adreno_gpu* FUNC5 (struct msm_gpu*) ; 

__attribute__((used)) static int FUNC6(struct msm_gpu *gpu)
{
	struct adreno_gpu *adreno_gpu = FUNC5(gpu);
	struct msm_ringbuffer *ring = gpu->rb[0];

	FUNC0(ring, CP_ME_INIT, 8);

	FUNC1(ring, 0x0000002F);

	/* Enable multiple hardware contexts */
	FUNC1(ring, 0x00000003);

	/* Enable error detection */
	FUNC1(ring, 0x20000000);

	/* Don't enable header dump */
	FUNC1(ring, 0x00000000);
	FUNC1(ring, 0x00000000);

	/* Specify workarounds for various microcode issues */
	if (FUNC3(adreno_gpu)) {
		/* Workaround for token end syncs
		 * Force a WFI after every direct-render 3D mode draw and every
		 * 2D mode 3 draw
		 */
		FUNC1(ring, 0x0000000B);
	} else {
		/* No workarounds enabled */
		FUNC1(ring, 0x00000000);
	}

	FUNC1(ring, 0x00000000);
	FUNC1(ring, 0x00000000);

	gpu->funcs->flush(gpu, ring);
	return FUNC2(gpu, ring) ? 0 : -EINVAL;
}