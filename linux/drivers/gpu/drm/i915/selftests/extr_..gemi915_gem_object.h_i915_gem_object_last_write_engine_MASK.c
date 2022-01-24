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
struct intel_engine_cs {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  resv; } ;
struct drm_i915_gem_object {TYPE_1__ base; } ;
struct dma_fence {int dummy; } ;
struct TYPE_4__ {struct intel_engine_cs* engine; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct dma_fence*) ; 
 int /*<<< orphan*/  FUNC1 (struct dma_fence*) ; 
 int /*<<< orphan*/  FUNC2 (struct dma_fence*) ; 
 struct dma_fence* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 TYPE_2__* FUNC6 (struct dma_fence*) ; 

__attribute__((used)) static inline struct intel_engine_cs *
FUNC7(struct drm_i915_gem_object *obj)
{
	struct intel_engine_cs *engine = NULL;
	struct dma_fence *fence;

	FUNC4();
	fence = FUNC3(obj->base.resv);
	FUNC5();

	if (fence && FUNC0(fence) && !FUNC1(fence))
		engine = FUNC6(fence)->engine;
	FUNC2(fence);

	return engine;
}