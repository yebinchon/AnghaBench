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
struct msm_gpu {int /*<<< orphan*/  name; int /*<<< orphan*/ * rb; } ;

/* Variables and functions */
 int A3XX_RBBM_STATUS_GPU_BUSY ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  REG_A3XX_RBBM_STATUS ; 
 int /*<<< orphan*/  FUNC1 (struct msm_gpu*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct msm_gpu*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int) ; 

__attribute__((used)) static bool FUNC4(struct msm_gpu *gpu)
{
	/* wait for ringbuffer to drain: */
	if (!FUNC1(gpu, gpu->rb[0]))
		return false;

	/* then wait for GPU to finish: */
	if (FUNC3(!(FUNC2(gpu, REG_A3XX_RBBM_STATUS) &
			A3XX_RBBM_STATUS_GPU_BUSY))) {
		FUNC0("%s: timeout waiting for GPU to idle!\n", gpu->name);

		/* TODO maybe we need to reset GPU here to recover from hang? */
		return false;
	}

	return true;
}