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
typedef  int u32 ;
struct intel_engine_cs {int /*<<< orphan*/  gt; } ;
struct i915_request {struct intel_engine_cs* engine; } ;

/* Variables and functions */
 int EMIT_FLUSH ; 
 int EMIT_INVALIDATE ; 
 int /*<<< orphan*/  INTEL_GT_SCRATCH_FIELD_RENDER_FLUSH ; 
 scalar_t__ FUNC0 (int*) ; 
 int PIPE_CONTROL_COMMAND_CACHE_INVALIDATE ; 
 int PIPE_CONTROL_CONST_CACHE_INVALIDATE ; 
 int PIPE_CONTROL_CS_STALL ; 
 int PIPE_CONTROL_DC_FLUSH_ENABLE ; 
 int PIPE_CONTROL_DEPTH_CACHE_FLUSH ; 
 int PIPE_CONTROL_FLUSH_ENABLE ; 
 int PIPE_CONTROL_GLOBAL_GTT_IVB ; 
 int PIPE_CONTROL_INSTRUCTION_CACHE_INVALIDATE ; 
 int PIPE_CONTROL_QW_WRITE ; 
 int PIPE_CONTROL_RENDER_TARGET_CACHE_FLUSH ; 
 int PIPE_CONTROL_STATE_CACHE_INVALIDATE ; 
 int PIPE_CONTROL_TEXTURE_CACHE_INVALIDATE ; 
 int PIPE_CONTROL_TILE_CACHE_FLUSH ; 
 int PIPE_CONTROL_TLB_INVALIDATE ; 
 int PIPE_CONTROL_VF_CACHE_INVALIDATE ; 
 int FUNC1 (int*) ; 
 int* FUNC2 (int*,int,int const) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct i915_request*,int*) ; 
 int* FUNC5 (struct i915_request*,int) ; 

__attribute__((used)) static int FUNC6(struct i915_request *request,
				   u32 mode)
{
	struct intel_engine_cs *engine = request->engine;
	const u32 scratch_addr =
		FUNC3(engine->gt,
					INTEL_GT_SCRATCH_FIELD_RENDER_FLUSH);

	if (mode & EMIT_FLUSH) {
		u32 *cs;
		u32 flags = 0;

		flags |= PIPE_CONTROL_CS_STALL;

		flags |= PIPE_CONTROL_TILE_CACHE_FLUSH;
		flags |= PIPE_CONTROL_RENDER_TARGET_CACHE_FLUSH;
		flags |= PIPE_CONTROL_DEPTH_CACHE_FLUSH;
		flags |= PIPE_CONTROL_DC_FLUSH_ENABLE;
		flags |= PIPE_CONTROL_FLUSH_ENABLE;
		flags |= PIPE_CONTROL_QW_WRITE;
		flags |= PIPE_CONTROL_GLOBAL_GTT_IVB;

		cs = FUNC5(request, 6);
		if (FUNC0(cs))
			return FUNC1(cs);

		cs = FUNC2(cs, flags, scratch_addr);
		FUNC4(request, cs);
	}

	if (mode & EMIT_INVALIDATE) {
		u32 *cs;
		u32 flags = 0;

		flags |= PIPE_CONTROL_CS_STALL;

		flags |= PIPE_CONTROL_COMMAND_CACHE_INVALIDATE;
		flags |= PIPE_CONTROL_TLB_INVALIDATE;
		flags |= PIPE_CONTROL_INSTRUCTION_CACHE_INVALIDATE;
		flags |= PIPE_CONTROL_TEXTURE_CACHE_INVALIDATE;
		flags |= PIPE_CONTROL_VF_CACHE_INVALIDATE;
		flags |= PIPE_CONTROL_CONST_CACHE_INVALIDATE;
		flags |= PIPE_CONTROL_STATE_CACHE_INVALIDATE;
		flags |= PIPE_CONTROL_QW_WRITE;
		flags |= PIPE_CONTROL_GLOBAL_GTT_IVB;

		cs = FUNC5(request, 6);
		if (FUNC0(cs))
			return FUNC1(cs);

		cs = FUNC2(cs, flags, scratch_addr);
		FUNC4(request, cs);
	}

	return 0;
}