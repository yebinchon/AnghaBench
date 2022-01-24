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
typedef  int /*<<< orphan*/  u64 ;
typedef  int /*<<< orphan*/  u32 ;
struct intel_ring {unsigned int effective_size; unsigned int emit; int size; unsigned int space; int /*<<< orphan*/ * vaddr; } ;
struct i915_request {unsigned int const reserved_space; int /*<<< orphan*/  timeline; struct intel_ring* ring; } ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (unsigned int,int) ; 
 int /*<<< orphan*/  POISON_INUSE ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned int const) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned int) ; 
 scalar_t__ FUNC6 (unsigned int) ; 
 int FUNC7 (struct intel_ring*,int /*<<< orphan*/ ,unsigned int) ; 

u32 *FUNC8(struct i915_request *rq, unsigned int num_dwords)
{
	struct intel_ring *ring = rq->ring;
	const unsigned int remain_usable = ring->effective_size - ring->emit;
	const unsigned int bytes = num_dwords * sizeof(u32);
	unsigned int need_wrap = 0;
	unsigned int total_bytes;
	u32 *cs;

	/* Packets must be qword aligned. */
	FUNC1(num_dwords & 1);

	total_bytes = bytes + rq->reserved_space;
	FUNC1(total_bytes > ring->effective_size);

	if (FUNC6(total_bytes > remain_usable)) {
		const int remain_actual = ring->size - ring->emit;

		if (bytes > remain_usable) {
			/*
			 * Not enough space for the basic request. So need to
			 * flush out the remainder and then wait for
			 * base + reserved.
			 */
			total_bytes += remain_actual;
			need_wrap = remain_actual | 1;
		} else  {
			/*
			 * The base request will fit but the reserved space
			 * falls off the end. So we don't need an immediate
			 * wrap and only need to effectively wait for the
			 * reserved size from the start of ringbuffer.
			 */
			total_bytes = rq->reserved_space + remain_actual;
		}
	}

	if (FUNC6(total_bytes > ring->space)) {
		int ret;

		/*
		 * Space is reserved in the ringbuffer for finalising the
		 * request, as that cannot be allowed to fail. During request
		 * finalisation, reserved_space is set to 0 to stop the
		 * overallocation and the assumption is that then we never need
		 * to wait (which has the risk of failing with EINTR).
		 *
		 * See also i915_request_alloc() and i915_request_add().
		 */
		FUNC1(!rq->reserved_space);

		ret = FUNC7(ring, rq->timeline, total_bytes);
		if (FUNC6(ret))
			return FUNC0(ret);
	}

	if (FUNC6(need_wrap)) {
		need_wrap &= ~1;
		FUNC1(need_wrap > ring->space);
		FUNC1(ring->emit + need_wrap > ring->size);
		FUNC1(!FUNC3(need_wrap, sizeof(u64)));

		/* Fill the tail with MI_NOOP */
		FUNC5(ring->vaddr + ring->emit, 0, need_wrap / sizeof(u64));
		ring->space -= need_wrap;
		ring->emit = 0;
	}

	FUNC1(ring->emit > ring->size - bytes);
	FUNC1(ring->space < bytes);
	cs = ring->vaddr + ring->emit;
	FUNC2(FUNC4(cs, POISON_INUSE, bytes / sizeof(*cs)));
	ring->emit += bytes;
	ring->space -= bytes;

	return cs;
}