#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int status; } ;
struct TYPE_3__ {int /*<<< orphan*/  handle; int /*<<< orphan*/  ring; int /*<<< orphan*/  ip_instance; int /*<<< orphan*/  ip_type; int /*<<< orphan*/  ctx_id; int /*<<< orphan*/  timeout; } ;
union drm_amdgpu_wait_cs {TYPE_2__ out; TYPE_1__ in; } ;
struct drm_sched_entity {int dummy; } ;
struct drm_file {int /*<<< orphan*/  driver_priv; } ;
struct drm_device {int dummy; } ;
struct dma_fence {long error; } ;
struct amdgpu_ctx {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ FUNC0 (struct dma_fence*) ; 
 long FUNC1 (struct dma_fence*) ; 
 struct amdgpu_ctx* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 long FUNC3 (struct amdgpu_ctx*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct drm_sched_entity**) ; 
 struct dma_fence* FUNC4 (struct amdgpu_ctx*,struct drm_sched_entity*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct amdgpu_ctx*) ; 
 unsigned long FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct dma_fence*) ; 
 long FUNC8 (struct dma_fence*,int,unsigned long) ; 
 int /*<<< orphan*/  FUNC9 (union drm_amdgpu_wait_cs*,int /*<<< orphan*/ ,int) ; 

int FUNC10(struct drm_device *dev, void *data,
			 struct drm_file *filp)
{
	union drm_amdgpu_wait_cs *wait = data;
	unsigned long timeout = FUNC6(wait->in.timeout);
	struct drm_sched_entity *entity;
	struct amdgpu_ctx *ctx;
	struct dma_fence *fence;
	long r;

	ctx = FUNC2(filp->driver_priv, wait->in.ctx_id);
	if (ctx == NULL)
		return -EINVAL;

	r = FUNC3(ctx, wait->in.ip_type, wait->in.ip_instance,
				  wait->in.ring, &entity);
	if (r) {
		FUNC5(ctx);
		return r;
	}

	fence = FUNC4(ctx, entity, wait->in.handle);
	if (FUNC0(fence))
		r = FUNC1(fence);
	else if (fence) {
		r = FUNC8(fence, true, timeout);
		if (r > 0 && fence->error)
			r = fence->error;
		FUNC7(fence);
	} else
		r = 1;

	FUNC5(ctx);
	if (r < 0)
		return r;

	FUNC9(wait, 0, sizeof(*wait));
	wait->out.status = (r == 0);

	return 0;
}