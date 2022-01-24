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
struct intel_ring {int head; int tail; int /*<<< orphan*/  vma; int /*<<< orphan*/  size; } ;
struct TYPE_2__ {struct intel_ring* ring; } ;
struct intel_engine_cs {int /*<<< orphan*/  uncore; int /*<<< orphan*/  name; int /*<<< orphan*/  mmio_base; TYPE_1__ legacy; struct drm_i915_private* i915; } ;
struct drm_i915_private {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int,int,int,int,...) ; 
 int EIO ; 
 int /*<<< orphan*/  FUNC2 (struct intel_engine_cs*,int /*<<< orphan*/  (*) (int /*<<< orphan*/ )) ; 
 int FUNC3 (struct intel_engine_cs*,int /*<<< orphan*/  (*) (int /*<<< orphan*/ )) ; 
 int /*<<< orphan*/  FUNC4 (struct intel_engine_cs*,int /*<<< orphan*/  (*) (int /*<<< orphan*/ ),int) ; 
 int /*<<< orphan*/  FORCEWAKE_ALL ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ,int,int) ; 
 scalar_t__ FUNC7 (struct drm_i915_private*) ; 
 int FUNC8 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 int RING_VALID ; 
 int /*<<< orphan*/  STOP_RING ; 
 int FUNC15 (int /*<<< orphan*/ ) ; 
 int FUNC16 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (struct intel_engine_cs*) ; 
 int /*<<< orphan*/  FUNC18 (struct intel_engine_cs*) ; 
 int /*<<< orphan*/  FUNC19 (struct intel_ring*,int) ; 
 int /*<<< orphan*/  FUNC20 (struct intel_ring*) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC23 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int) ; 
 int /*<<< orphan*/  FUNC24 (struct intel_engine_cs*) ; 
 int /*<<< orphan*/  FUNC25 (struct intel_engine_cs*) ; 
 int /*<<< orphan*/  FUNC26 (struct intel_engine_cs*) ; 

__attribute__((used)) static int FUNC27(struct intel_engine_cs *engine)
{
	struct drm_i915_private *dev_priv = engine->i915;
	struct intel_ring *ring = engine->legacy.ring;
	int ret = 0;

	FUNC6("%s: ring:{HEAD:%04x, TAIL:%04x}\n",
		  engine->name, ring->head, ring->tail);

	FUNC21(engine->uncore, FORCEWAKE_ALL);

	/* WaClearRingBufHeadRegAtInit:ctg,elk */
	if (!FUNC26(engine)) {
		/* G45 ring initialization often fails to reset head to zero */
		FUNC0("%s head not reset to zero "
				"ctl %08x head %08x tail %08x start %08x\n",
				engine->name,
				FUNC3(engine, RING_CTL),
				FUNC3(engine, RING_HEAD),
				FUNC3(engine, RING_TAIL),
				FUNC3(engine, RING_START));

		if (!FUNC26(engine)) {
			FUNC1("failed to set %s head to zero "
				  "ctl %08x head %08x tail %08x start %08x\n",
				  engine->name,
				  FUNC3(engine, RING_CTL),
				  FUNC3(engine, RING_HEAD),
				  FUNC3(engine, RING_TAIL),
				  FUNC3(engine, RING_START));
			ret = -EIO;
			goto out;
		}
	}

	if (FUNC7(dev_priv))
		FUNC24(engine);
	else
		FUNC25(engine);

	FUNC18(engine);

	/* Enforce ordering by reading HEAD register back */
	FUNC2(engine, RING_HEAD);

	/*
	 * Initialize the ring. This must happen _after_ we've cleared the ring
	 * registers with the above sequence (the readback of the HEAD registers
	 * also enforces ordering), otherwise the hw might lose the new ring
	 * register values.
	 */
	FUNC4(engine, RING_START, FUNC16(ring->vma));

	/* Check that the ring offsets point within the ring! */
	FUNC5(!FUNC19(ring, ring->head));
	FUNC5(!FUNC19(ring, ring->tail));
	FUNC20(ring);

	/* First wake the ring up to an empty/idle ring */
	FUNC4(engine, RING_HEAD, ring->head);
	FUNC4(engine, RING_TAIL, ring->head);
	FUNC2(engine, RING_TAIL);

	FUNC4(engine, RING_CTL, FUNC10(ring->size) | RING_VALID);

	/* If the head is still not zero, the ring is dead */
	if (FUNC23(engine->uncore,
				    FUNC9(engine->mmio_base),
				    RING_VALID, RING_VALID,
				    50)) {
		FUNC1("%s initialization failed "
			  "ctl %08x (valid? %d) head %08x [%08x] tail %08x [%08x] start %08x [expected %08x]\n",
			  engine->name,
			  FUNC3(engine, RING_CTL),
			  FUNC3(engine, RING_CTL) & RING_VALID,
			  FUNC3(engine, RING_HEAD), ring->head,
			  FUNC3(engine, RING_TAIL), ring->tail,
			  FUNC3(engine, RING_START),
			  FUNC16(ring->vma));
		ret = -EIO;
		goto out;
	}

	if (FUNC8(dev_priv) > 2)
		FUNC4(engine,
			     RING_MI_MODE, FUNC15(STOP_RING));

	/* Now awake, let it get started */
	if (ring->tail != ring->head) {
		FUNC4(engine, RING_TAIL, ring->tail);
		FUNC2(engine, RING_TAIL);
	}

	/* Papering over lost _interrupts_ immediately following the restart */
	FUNC17(engine);
out:
	FUNC22(engine->uncore, FORCEWAKE_ALL);

	return ret;
}