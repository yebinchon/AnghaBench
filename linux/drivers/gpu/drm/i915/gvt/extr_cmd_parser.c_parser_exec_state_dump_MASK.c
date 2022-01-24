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
typedef  int u64 ;
typedef  int /*<<< orphan*/  u32 ;
struct parser_exec_state {scalar_t__ buf_type; scalar_t__ buf_addr_type; int /*<<< orphan*/ * ip_va; int /*<<< orphan*/  ring_id; int /*<<< orphan*/  ip_gma; int /*<<< orphan*/  ring_tail; int /*<<< orphan*/  ring_head; scalar_t__ ring_size; scalar_t__ ring_start; TYPE_1__* vgpu; } ;
struct TYPE_2__ {int /*<<< orphan*/  id; } ;

/* Variables and functions */
 scalar_t__ GTT_BUFFER ; 
 scalar_t__ RING_BUFFER_INSTRUCTION ; 
 int /*<<< orphan*/  FUNC0 (struct parser_exec_state*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct parser_exec_state *s)
{
	int cnt = 0;
	int i;

	FUNC1("  vgpu%d RING%d: ring_start(%08lx) ring_end(%08lx)"
			" ring_head(%08lx) ring_tail(%08lx)\n", s->vgpu->id,
			s->ring_id, s->ring_start, s->ring_start + s->ring_size,
			s->ring_head, s->ring_tail);

	FUNC1("  %s %s ip_gma(%08lx) ",
			s->buf_type == RING_BUFFER_INSTRUCTION ?
			"RING_BUFFER" : "BATCH_BUFFER",
			s->buf_addr_type == GTT_BUFFER ?
			"GTT" : "PPGTT", s->ip_gma);

	if (s->ip_va == NULL) {
		FUNC1(" ip_va(NULL)");
		return;
	}

	FUNC1("  ip_va=%p: %08x %08x %08x %08x\n",
			s->ip_va, FUNC0(s, 0), FUNC0(s, 1),
			FUNC0(s, 2), FUNC0(s, 3));

	FUNC2(FUNC0(s, 0), s->ring_id);

	s->ip_va = (u32 *)((((u64)s->ip_va) >> 12) << 12);

	while (cnt < 1024) {
		FUNC1("ip_va=%p: ", s->ip_va);
		for (i = 0; i < 8; i++)
			FUNC1("%08x ", FUNC0(s, i));
		FUNC1("\n");

		s->ip_va += 8 * sizeof(u32);
		cnt += 8;
	}
}