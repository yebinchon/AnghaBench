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
struct drm_sched_fence {int /*<<< orphan*/  scheduled; } ;
struct drm_sched_entity {int dummy; } ;
struct drm_amdgpu_cs_chunk_dep {int /*<<< orphan*/  handle; int /*<<< orphan*/  ring; int /*<<< orphan*/  ip_instance; int /*<<< orphan*/  ip_type; int /*<<< orphan*/  ctx_id; } ;
struct dma_fence {int dummy; } ;
struct amdgpu_fpriv {int dummy; } ;
struct amdgpu_ctx {int dummy; } ;
struct amdgpu_cs_parser {TYPE_2__* job; int /*<<< orphan*/  adev; TYPE_1__* filp; } ;
struct amdgpu_cs_chunk {int length_dw; scalar_t__ chunk_id; scalar_t__ kdata; } ;
struct TYPE_4__ {int /*<<< orphan*/  sync; } ;
struct TYPE_3__ {struct amdgpu_fpriv* driver_priv; } ;

/* Variables and functions */
 scalar_t__ AMDGPU_CHUNK_ID_SCHEDULED_DEPENDENCIES ; 
 int EINVAL ; 
 scalar_t__ FUNC0 (struct dma_fence*) ; 
 int FUNC1 (struct dma_fence*) ; 
 struct amdgpu_ctx* FUNC2 (struct amdgpu_fpriv*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct amdgpu_ctx*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct drm_sched_entity**) ; 
 struct dma_fence* FUNC4 (struct amdgpu_ctx*,struct drm_sched_entity*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct amdgpu_ctx*) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct dma_fence*,int) ; 
 struct dma_fence* FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct dma_fence*) ; 
 struct drm_sched_fence* FUNC9 (struct dma_fence*) ; 

__attribute__((used)) static int FUNC10(struct amdgpu_cs_parser *p,
				       struct amdgpu_cs_chunk *chunk)
{
	struct amdgpu_fpriv *fpriv = p->filp->driver_priv;
	unsigned num_deps;
	int i, r;
	struct drm_amdgpu_cs_chunk_dep *deps;

	deps = (struct drm_amdgpu_cs_chunk_dep *)chunk->kdata;
	num_deps = chunk->length_dw * 4 /
		sizeof(struct drm_amdgpu_cs_chunk_dep);

	for (i = 0; i < num_deps; ++i) {
		struct amdgpu_ctx *ctx;
		struct drm_sched_entity *entity;
		struct dma_fence *fence;

		ctx = FUNC2(fpriv, deps[i].ctx_id);
		if (ctx == NULL)
			return -EINVAL;

		r = FUNC3(ctx, deps[i].ip_type,
					  deps[i].ip_instance,
					  deps[i].ring, &entity);
		if (r) {
			FUNC5(ctx);
			return r;
		}

		fence = FUNC4(ctx, entity, deps[i].handle);
		FUNC5(ctx);

		if (FUNC0(fence))
			return FUNC1(fence);
		else if (!fence)
			continue;

		if (chunk->chunk_id == AMDGPU_CHUNK_ID_SCHEDULED_DEPENDENCIES) {
			struct drm_sched_fence *s_fence;
			struct dma_fence *old = fence;

			s_fence = FUNC9(fence);
			fence = FUNC7(&s_fence->scheduled);
			FUNC8(old);
		}

		r = FUNC6(p->adev, &p->job->sync, fence, true);
		FUNC8(fence);
		if (r)
			return r;
	}
	return 0;
}