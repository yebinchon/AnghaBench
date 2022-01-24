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
typedef  int /*<<< orphan*/  u32 ;
struct intel_ring {int /*<<< orphan*/  tail; int /*<<< orphan*/  head; int /*<<< orphan*/  vma; } ;
struct intel_engine_cs {scalar_t__ class; int /*<<< orphan*/  i915; } ;
struct intel_context {int /*<<< orphan*/  sseu; int /*<<< orphan*/ * lrc_reg_state; struct intel_ring* ring; } ;

/* Variables and functions */
 int CTX_RING_BUFFER_START ; 
 int CTX_RING_HEAD ; 
 int CTX_RING_TAIL ; 
 int CTX_R_PWR_CLK_STATE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ RENDER_CLASS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct intel_engine_cs*,struct intel_context*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct intel_ring*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC5(struct intel_context *ce,
			     struct intel_engine_cs *engine)
{
	struct intel_ring *ring = ce->ring;
	u32 *regs = ce->lrc_reg_state;

	FUNC0(!FUNC3(ring, ring->head));
	FUNC0(!FUNC3(ring, ring->tail));

	regs[CTX_RING_BUFFER_START + 1] = FUNC1(ring->vma);
	regs[CTX_RING_HEAD + 1] = ring->head;
	regs[CTX_RING_TAIL + 1] = ring->tail;

	/* RPCS */
	if (engine->class == RENDER_CLASS) {
		regs[CTX_R_PWR_CLK_STATE + 1] =
			FUNC4(engine->i915, &ce->sseu);

		FUNC2(engine, ce, regs);
	}
}