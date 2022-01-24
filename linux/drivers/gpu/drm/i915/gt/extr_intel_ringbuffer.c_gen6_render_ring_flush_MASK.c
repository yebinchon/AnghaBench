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
typedef  int u32 ;
struct i915_request {TYPE_1__* engine; } ;
struct TYPE_2__ {int /*<<< orphan*/  gt; } ;

/* Variables and functions */
 int EMIT_FLUSH ; 
 int EMIT_INVALIDATE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  INTEL_GT_SCRATCH_FIELD_RENDER_FLUSH ; 
 scalar_t__ FUNC1 (int*) ; 
 int PIPE_CONTROL_CONST_CACHE_INVALIDATE ; 
 int PIPE_CONTROL_CS_STALL ; 
 int PIPE_CONTROL_DEPTH_CACHE_FLUSH ; 
 int PIPE_CONTROL_GLOBAL_GTT ; 
 int PIPE_CONTROL_INSTRUCTION_CACHE_INVALIDATE ; 
 int PIPE_CONTROL_QW_WRITE ; 
 int PIPE_CONTROL_RENDER_TARGET_CACHE_FLUSH ; 
 int PIPE_CONTROL_STATE_CACHE_INVALIDATE ; 
 int PIPE_CONTROL_TEXTURE_CACHE_INVALIDATE ; 
 int PIPE_CONTROL_TLB_INVALIDATE ; 
 int PIPE_CONTROL_VF_CACHE_INVALIDATE ; 
 int FUNC2 (int*) ; 
 int FUNC3 (struct i915_request*) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct i915_request*,int*) ; 
 int* FUNC6 (struct i915_request*,int) ; 

__attribute__((used)) static int
FUNC7(struct i915_request *rq, u32 mode)
{
	u32 scratch_addr =
		FUNC4(rq->engine->gt,
					INTEL_GT_SCRATCH_FIELD_RENDER_FLUSH);
	u32 *cs, flags = 0;
	int ret;

	/* Force SNB workarounds for PIPE_CONTROL flushes */
	ret = FUNC3(rq);
	if (ret)
		return ret;

	/* Just flush everything.  Experiments have shown that reducing the
	 * number of bits based on the write domains has little performance
	 * impact.
	 */
	if (mode & EMIT_FLUSH) {
		flags |= PIPE_CONTROL_RENDER_TARGET_CACHE_FLUSH;
		flags |= PIPE_CONTROL_DEPTH_CACHE_FLUSH;
		/*
		 * Ensure that any following seqno writes only happen
		 * when the render cache is indeed flushed.
		 */
		flags |= PIPE_CONTROL_CS_STALL;
	}
	if (mode & EMIT_INVALIDATE) {
		flags |= PIPE_CONTROL_TLB_INVALIDATE;
		flags |= PIPE_CONTROL_INSTRUCTION_CACHE_INVALIDATE;
		flags |= PIPE_CONTROL_TEXTURE_CACHE_INVALIDATE;
		flags |= PIPE_CONTROL_VF_CACHE_INVALIDATE;
		flags |= PIPE_CONTROL_CONST_CACHE_INVALIDATE;
		flags |= PIPE_CONTROL_STATE_CACHE_INVALIDATE;
		/*
		 * TLB invalidate requires a post-sync write.
		 */
		flags |= PIPE_CONTROL_QW_WRITE | PIPE_CONTROL_CS_STALL;
	}

	cs = FUNC6(rq, 4);
	if (FUNC1(cs))
		return FUNC2(cs);

	*cs++ = FUNC0(4);
	*cs++ = flags;
	*cs++ = scratch_addr | PIPE_CONTROL_GLOBAL_GTT;
	*cs++ = 0;
	FUNC5(rq, cs);

	return 0;
}