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
struct intel_ring {int size; int effective_size; struct i915_vma* vma; int /*<<< orphan*/  ref; } ;
struct intel_engine_cs {TYPE_1__* gt; struct drm_i915_private* i915; } ;
struct i915_vma {int dummy; } ;
struct drm_i915_private {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  ggtt; } ;

/* Variables and functions */
 int CACHELINE_BYTES ; 
 int /*<<< orphan*/  ENOMEM ; 
 struct intel_ring* FUNC0 (struct i915_vma*) ; 
 struct intel_ring* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC3 (struct i915_vma*) ; 
 scalar_t__ FUNC4 (struct drm_i915_private*) ; 
 scalar_t__ FUNC5 (struct drm_i915_private*) ; 
 int FUNC6 (int) ; 
 int RING_NR_PAGES ; 
 struct i915_vma* FUNC7 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (struct intel_ring*) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (struct intel_ring*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 struct intel_ring* FUNC12 (int,int /*<<< orphan*/ ) ; 

struct intel_ring *
FUNC13(struct intel_engine_cs *engine, int size)
{
	struct drm_i915_private *i915 = engine->i915;
	struct intel_ring *ring;
	struct i915_vma *vma;

	FUNC2(!FUNC9(size));
	FUNC2(FUNC6(size) & ~RING_NR_PAGES);

	ring = FUNC12(sizeof(*ring), GFP_KERNEL);
	if (!ring)
		return FUNC1(-ENOMEM);

	FUNC11(&ring->ref);

	ring->size = size;
	/* Workaround an erratum on the i830 which causes a hang if
	 * the TAIL pointer points to within the last 2 cachelines
	 * of the buffer.
	 */
	ring->effective_size = size;
	if (FUNC4(i915) || FUNC5(i915))
		ring->effective_size -= 2 * CACHELINE_BYTES;

	FUNC8(ring);

	vma = FUNC7(engine->gt->ggtt, size);
	if (FUNC3(vma)) {
		FUNC10(ring);
		return FUNC0(vma);
	}
	ring->vma = vma;

	return ring;
}