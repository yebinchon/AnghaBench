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
typedef  scalar_t__ uint32_t ;
struct msm_ringbuffer {int /*<<< orphan*/  id; } ;
struct msm_gpu {int /*<<< orphan*/  name; } ;
struct adreno_gpu {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC1 (struct adreno_gpu*,struct msm_ringbuffer*) ; 
 scalar_t__ FUNC2 (struct msm_ringbuffer*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 struct adreno_gpu* FUNC4 (struct msm_gpu*) ; 

bool FUNC5(struct msm_gpu *gpu, struct msm_ringbuffer *ring)
{
	struct adreno_gpu *adreno_gpu = FUNC4(gpu);
	uint32_t wptr = FUNC2(ring);

	/* wait for CP to drain ringbuffer: */
	if (!FUNC3(FUNC1(adreno_gpu, ring) == wptr))
		return true;

	/* TODO maybe we need to reset GPU here to recover from hang? */
	FUNC0("%s: timeout waiting to drain ringbuffer %d rptr/wptr = %X/%X\n",
		gpu->name, ring->id, FUNC1(adreno_gpu, ring), wptr);

	return false;
}