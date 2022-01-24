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
struct i915_request {int /*<<< orphan*/  i915; struct intel_engine_cs* engine; } ;

/* Variables and functions */
 int EMIT_FLUSH ; 
 int EMIT_INVALIDATE ; 
 int /*<<< orphan*/  INTEL_GT_SCRATCH_FIELD_RENDER_FLUSH ; 
 scalar_t__ FUNC0 (int*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  KBL_REVID_B0 ; 
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
 int PIPE_CONTROL_TLB_INVALIDATE ; 
 int PIPE_CONTROL_VF_CACHE_INVALIDATE ; 
 int FUNC3 (int*) ; 
 int* FUNC4 (int*,int,int) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct i915_request*,int*) ; 
 int* FUNC7 (struct i915_request*,int) ; 

__attribute__((used)) static int FUNC8(struct i915_request *request,
				  u32 mode)
{
	struct intel_engine_cs *engine = request->engine;
	u32 scratch_addr =
		FUNC5(engine->gt,
					INTEL_GT_SCRATCH_FIELD_RENDER_FLUSH);
	bool vf_flush_wa = false, dc_flush_wa = false;
	u32 *cs, flags = 0;
	int len;

	flags |= PIPE_CONTROL_CS_STALL;

	if (mode & EMIT_FLUSH) {
		flags |= PIPE_CONTROL_RENDER_TARGET_CACHE_FLUSH;
		flags |= PIPE_CONTROL_DEPTH_CACHE_FLUSH;
		flags |= PIPE_CONTROL_DC_FLUSH_ENABLE;
		flags |= PIPE_CONTROL_FLUSH_ENABLE;
	}

	if (mode & EMIT_INVALIDATE) {
		flags |= PIPE_CONTROL_TLB_INVALIDATE;
		flags |= PIPE_CONTROL_INSTRUCTION_CACHE_INVALIDATE;
		flags |= PIPE_CONTROL_TEXTURE_CACHE_INVALIDATE;
		flags |= PIPE_CONTROL_VF_CACHE_INVALIDATE;
		flags |= PIPE_CONTROL_CONST_CACHE_INVALIDATE;
		flags |= PIPE_CONTROL_STATE_CACHE_INVALIDATE;
		flags |= PIPE_CONTROL_QW_WRITE;
		flags |= PIPE_CONTROL_GLOBAL_GTT_IVB;

		/*
		 * On GEN9: before VF_CACHE_INVALIDATE we need to emit a NULL
		 * pipe control.
		 */
		if (FUNC1(request->i915, 9))
			vf_flush_wa = true;

		/* WaForGAMHang:kbl */
		if (FUNC2(request->i915, 0, KBL_REVID_B0))
			dc_flush_wa = true;
	}

	len = 6;

	if (vf_flush_wa)
		len += 6;

	if (dc_flush_wa)
		len += 12;

	cs = FUNC7(request, len);
	if (FUNC0(cs))
		return FUNC3(cs);

	if (vf_flush_wa)
		cs = FUNC4(cs, 0, 0);

	if (dc_flush_wa)
		cs = FUNC4(cs, PIPE_CONTROL_DC_FLUSH_ENABLE,
					    0);

	cs = FUNC4(cs, flags, scratch_addr);

	if (dc_flush_wa)
		cs = FUNC4(cs, PIPE_CONTROL_CS_STALL, 0);

	FUNC6(request, cs);

	return 0;
}