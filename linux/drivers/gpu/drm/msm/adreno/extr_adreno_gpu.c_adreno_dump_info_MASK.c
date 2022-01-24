#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct msm_ringbuffer {int /*<<< orphan*/  seqno; TYPE_2__* memptrs; } ;
struct msm_gpu {int nr_rings; struct msm_ringbuffer** rb; } ;
struct TYPE_4__ {int /*<<< orphan*/  patchid; int /*<<< orphan*/  minor; int /*<<< orphan*/  major; int /*<<< orphan*/  core; } ;
struct adreno_gpu {TYPE_1__ rev; TYPE_3__* info; } ;
struct TYPE_6__ {int /*<<< orphan*/  revn; } ;
struct TYPE_5__ {int /*<<< orphan*/  fence; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct adreno_gpu*,struct msm_ringbuffer*) ; 
 int /*<<< orphan*/  FUNC1 (struct msm_ringbuffer*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,...) ; 
 struct adreno_gpu* FUNC3 (struct msm_gpu*) ; 

void FUNC4(struct msm_gpu *gpu)
{
	struct adreno_gpu *adreno_gpu = FUNC3(gpu);
	int i;

	FUNC2("revision: %d (%d.%d.%d.%d)\n",
			adreno_gpu->info->revn, adreno_gpu->rev.core,
			adreno_gpu->rev.major, adreno_gpu->rev.minor,
			adreno_gpu->rev.patchid);

	for (i = 0; i < gpu->nr_rings; i++) {
		struct msm_ringbuffer *ring = gpu->rb[i];

		FUNC2("rb %d: fence:    %d/%d\n", i,
			ring->memptrs->fence,
			ring->seqno);

		FUNC2("rptr:     %d\n", FUNC0(adreno_gpu, ring));
		FUNC2("rb wptr:  %d\n", FUNC1(ring));
	}
}