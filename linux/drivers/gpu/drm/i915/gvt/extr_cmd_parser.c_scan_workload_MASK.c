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
struct parser_exec_state {int ring_id; void* ring_start; unsigned long ring_head; unsigned long ring_tail; int is_ctx_wa; struct intel_vgpu_workload* workload; int /*<<< orphan*/  rb_va; void* ring_size; int /*<<< orphan*/  vgpu; int /*<<< orphan*/  buf_addr_type; int /*<<< orphan*/  buf_type; } ;
struct intel_vgpu_workload {unsigned long rb_start; unsigned long rb_head; unsigned long rb_tail; int ring_id; int /*<<< orphan*/  rb_ctl; int /*<<< orphan*/  shadow_ring_buffer_va; int /*<<< orphan*/  vgpu; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  GTT_BUFFER ; 
 int /*<<< orphan*/  I915_GTT_PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC0 (unsigned long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RING_BUFFER_INSTRUCTION ; 
 scalar_t__ FUNC1 (int) ; 
 void* FUNC2 (int /*<<< orphan*/ ) ; 
 int bypass_scan_mask ; 
 int FUNC3 (struct parser_exec_state*,unsigned long,unsigned long,void*,void*) ; 
 int FUNC4 (struct parser_exec_state*,unsigned long) ; 

__attribute__((used)) static int FUNC5(struct intel_vgpu_workload *workload)
{
	unsigned long gma_head, gma_tail, gma_bottom;
	struct parser_exec_state s;
	int ret = 0;

	/* ring base is page aligned */
	if (FUNC1(!FUNC0(workload->rb_start, I915_GTT_PAGE_SIZE)))
		return -EINVAL;

	gma_head = workload->rb_start + workload->rb_head;
	gma_tail = workload->rb_start + workload->rb_tail;
	gma_bottom = workload->rb_start +  FUNC2(workload->rb_ctl);

	s.buf_type = RING_BUFFER_INSTRUCTION;
	s.buf_addr_type = GTT_BUFFER;
	s.vgpu = workload->vgpu;
	s.ring_id = workload->ring_id;
	s.ring_start = workload->rb_start;
	s.ring_size = FUNC2(workload->rb_ctl);
	s.ring_head = gma_head;
	s.ring_tail = gma_tail;
	s.rb_va = workload->shadow_ring_buffer_va;
	s.workload = workload;
	s.is_ctx_wa = false;

	if ((bypass_scan_mask & (1 << workload->ring_id)) ||
		gma_head == gma_tail)
		return 0;

	ret = FUNC4(&s, gma_head);
	if (ret)
		goto out;

	ret = FUNC3(&s, workload->rb_head, workload->rb_tail,
		workload->rb_start, FUNC2(workload->rb_ctl));

out:
	return ret;
}