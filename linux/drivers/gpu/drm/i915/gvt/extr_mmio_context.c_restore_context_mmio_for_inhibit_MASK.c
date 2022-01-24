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
typedef  int /*<<< orphan*/  u32 ;
struct intel_vgpu {int /*<<< orphan*/  id; struct intel_gvt* gvt; } ;
struct TYPE_3__ {int* ctx_mmio_count; struct engine_mmio* mmio; } ;
struct intel_gvt {TYPE_1__ engine_mmio_list; } ;
struct i915_request {TYPE_2__* engine; } ;
struct engine_mmio {int ring_id; int mask; int /*<<< orphan*/  reg; int /*<<< orphan*/  in_context; } ;
struct TYPE_4__ {int id; int (* emit_flush ) (struct i915_request*,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  EMIT_BARRIER ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  MI_NOOP ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct i915_request*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC7 (struct i915_request*,int) ; 
 int FUNC8 (struct i915_request*,int /*<<< orphan*/ ) ; 
 int FUNC9 (struct i915_request*,int /*<<< orphan*/ ) ; 
 int FUNC10 (struct intel_vgpu*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC11(struct intel_vgpu *vgpu,
				 struct i915_request *req)
{
	u32 *cs;
	int ret;
	struct engine_mmio *mmio;
	struct intel_gvt *gvt = vgpu->gvt;
	int ring_id = req->engine->id;
	int count = gvt->engine_mmio_list.ctx_mmio_count[ring_id];

	if (count == 0)
		return 0;

	ret = req->engine->emit_flush(req, EMIT_BARRIER);
	if (ret)
		return ret;

	cs = FUNC7(req, count * 2 + 2);
	if (FUNC0(cs))
		return FUNC2(cs);

	*cs++ = FUNC1(count);
	for (mmio = gvt->engine_mmio_list.mmio;
	     FUNC5(mmio->reg); mmio++) {
		if (mmio->ring_id != ring_id ||
		    !mmio->in_context)
			continue;

		*cs++ = FUNC4(mmio->reg);
		*cs++ = FUNC10(vgpu, mmio->reg) |
				(mmio->mask << 16);
		FUNC3("add lri reg pair 0x%x:0x%x in inhibit ctx, vgpu:%d, rind_id:%d\n",
			      *(cs-2), *(cs-1), vgpu->id, ring_id);
	}

	*cs++ = MI_NOOP;
	FUNC6(req, cs);

	ret = req->engine->emit_flush(req, EMIT_BARRIER);
	if (ret)
		return ret;

	return 0;
}