#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u64 ;
typedef  int /*<<< orphan*/  u32 ;
struct drm_i915_error_state_buf {int /*<<< orphan*/  i915; } ;
struct TYPE_6__ {int gfx_mode; int pp_dir_base; int /*<<< orphan*/ * pdp; } ;
struct drm_i915_error_engine {int start; int ctl; int mode; int hws; int acthd; int ipeir; int ipehr; int bbaddr; int bbstate; int instps; int instpm; int rc_psmi; int fault_reg; int cpu_ring_head; int cpu_ring_tail; unsigned long const hangcheck_timestamp; int reset_count; int num_ports; int /*<<< orphan*/  context; int /*<<< orphan*/ * execlist; TYPE_3__ vm_info; scalar_t__ faddr; TYPE_2__* batchbuffer; int /*<<< orphan*/  rq_tail; int /*<<< orphan*/  rq_post; int /*<<< orphan*/  tail; int /*<<< orphan*/  rq_head; int /*<<< orphan*/  head; int /*<<< orphan*/  idle; TYPE_1__* engine; } ;
struct TYPE_5__ {scalar_t__ gtt_size; scalar_t__ gtt_offset; } ;
struct TYPE_4__ {int name; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct drm_i915_error_state_buf*,char*,int,...) ; 
 int /*<<< orphan*/  FUNC3 (struct drm_i915_error_state_buf*,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct drm_i915_error_state_buf*,struct drm_i915_error_engine const*) ; 
 int /*<<< orphan*/  FUNC5 (struct drm_i915_error_state_buf*,char*,int /*<<< orphan*/ *,unsigned long const) ; 
 int /*<<< orphan*/  FUNC6 (unsigned long const) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__) ; 
 int FUNC9 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC10(struct drm_i915_error_state_buf *m,
			       const struct drm_i915_error_engine *ee,
			       const unsigned long epoch)
{
	int n;

	FUNC2(m, "%s command stream:\n", ee->engine->name);
	FUNC2(m, "  IDLE?: %s\n", FUNC9(ee->idle));
	FUNC2(m, "  START: 0x%08x\n", ee->start);
	FUNC2(m, "  HEAD:  0x%08x [0x%08x]\n", ee->head, ee->rq_head);
	FUNC2(m, "  TAIL:  0x%08x [0x%08x, 0x%08x]\n",
		   ee->tail, ee->rq_post, ee->rq_tail);
	FUNC2(m, "  CTL:   0x%08x\n", ee->ctl);
	FUNC2(m, "  MODE:  0x%08x\n", ee->mode);
	FUNC2(m, "  HWS:   0x%08x\n", ee->hws);
	FUNC2(m, "  ACTHD: 0x%08x %08x\n",
		   (u32)(ee->acthd>>32), (u32)ee->acthd);
	FUNC2(m, "  IPEIR: 0x%08x\n", ee->ipeir);
	FUNC2(m, "  IPEHR: 0x%08x\n", ee->ipehr);

	FUNC4(m, ee);

	if (ee->batchbuffer) {
		u64 start = ee->batchbuffer->gtt_offset;
		u64 end = start + ee->batchbuffer->gtt_size;

		FUNC2(m, "  batch: [0x%08x_%08x, 0x%08x_%08x]\n",
			   FUNC8(start), FUNC7(start),
			   FUNC8(end), FUNC7(end));
	}
	if (FUNC1(m->i915) >= 4) {
		FUNC2(m, "  BBADDR: 0x%08x_%08x\n",
			   (u32)(ee->bbaddr>>32), (u32)ee->bbaddr);
		FUNC2(m, "  BB_STATE: 0x%08x\n", ee->bbstate);
		FUNC2(m, "  INSTPS: 0x%08x\n", ee->instps);
	}
	FUNC2(m, "  INSTPM: 0x%08x\n", ee->instpm);
	FUNC2(m, "  FADDR: 0x%08x %08x\n", FUNC8(ee->faddr),
		   FUNC7(ee->faddr));
	if (FUNC1(m->i915) >= 6) {
		FUNC2(m, "  RC PSMI: 0x%08x\n", ee->rc_psmi);
		FUNC2(m, "  FAULT_REG: 0x%08x\n", ee->fault_reg);
	}
	if (FUNC0(m->i915)) {
		FUNC2(m, "  GFX_MODE: 0x%08x\n", ee->vm_info.gfx_mode);

		if (FUNC1(m->i915) >= 8) {
			int i;
			for (i = 0; i < 4; i++)
				FUNC2(m, "  PDP%d: 0x%016llx\n",
					   i, ee->vm_info.pdp[i]);
		} else {
			FUNC2(m, "  PP_DIR_BASE: 0x%08x\n",
				   ee->vm_info.pp_dir_base);
		}
	}
	FUNC2(m, "  ring->head: 0x%08x\n", ee->cpu_ring_head);
	FUNC2(m, "  ring->tail: 0x%08x\n", ee->cpu_ring_tail);
	FUNC2(m, "  hangcheck timestamp: %dms (%lu%s)\n",
		   FUNC6(ee->hangcheck_timestamp - epoch),
		   ee->hangcheck_timestamp,
		   ee->hangcheck_timestamp == epoch ? "; epoch" : "");
	FUNC2(m, "  engine reset count: %u\n", ee->reset_count);

	for (n = 0; n < ee->num_ports; n++) {
		FUNC2(m, "  ELSP[%d]:", n);
		FUNC5(m, " ", &ee->execlist[n], epoch);
	}

	FUNC3(m, "  Active context: ", &ee->context);
}