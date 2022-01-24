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
typedef  int /*<<< orphan*/  uint64_t ;
struct msm_ringbuffer {int id; int /*<<< orphan*/  fctx; int /*<<< orphan*/  lock; int /*<<< orphan*/  submits; int /*<<< orphan*/  memptrs_iova; void* memptrs; scalar_t__ start; scalar_t__ cur; scalar_t__ next; scalar_t__ end; int /*<<< orphan*/  bo; int /*<<< orphan*/  iova; struct msm_gpu* gpu; } ;
struct msm_gpu {int /*<<< orphan*/  dev; int /*<<< orphan*/  aspace; } ;
typedef  int /*<<< orphan*/  name ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int ENOMEM ; 
 struct msm_ringbuffer* FUNC1 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  MSM_BO_WC ; 
 int MSM_GPU_RINGBUFFER_SZ ; 
 int FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 struct msm_ringbuffer* FUNC6 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC10 (struct msm_ringbuffer*) ; 
 int /*<<< orphan*/  FUNC11 (char*,int,char*,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 

struct msm_ringbuffer *FUNC13(struct msm_gpu *gpu, int id,
		void *memptrs, uint64_t memptrs_iova)
{
	struct msm_ringbuffer *ring;
	char name[32];
	int ret;

	/* We assume everwhere that MSM_GPU_RINGBUFFER_SZ is a power of 2 */
	FUNC0(!FUNC5(MSM_GPU_RINGBUFFER_SZ));

	ring = FUNC6(sizeof(*ring), GFP_KERNEL);
	if (!ring) {
		ret = -ENOMEM;
		goto fail;
	}

	ring->gpu = gpu;
	ring->id = id;

	ring->start = FUNC8(gpu->dev, MSM_GPU_RINGBUFFER_SZ,
		MSM_BO_WC, gpu->aspace, &ring->bo, &ring->iova);

	if (FUNC3(ring->start)) {
		ret = FUNC4(ring->start);
		ring->start = 0;
		goto fail;
	}

	FUNC9(ring->bo, "ring%d", id);

	ring->end   = ring->start + (MSM_GPU_RINGBUFFER_SZ >> 2);
	ring->next  = ring->start;
	ring->cur   = ring->start;

	ring->memptrs = memptrs;
	ring->memptrs_iova = memptrs_iova;

	FUNC2(&ring->submits);
	FUNC12(&ring->lock);

	FUNC11(name, sizeof(name), "gpu-ring-%d", ring->id);

	ring->fctx = FUNC7(gpu->dev, name);

	return ring;

fail:
	FUNC10(ring);
	return FUNC1(ret);
}