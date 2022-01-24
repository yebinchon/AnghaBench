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
struct parser_exec_state {unsigned long ip_gma; scalar_t__ buf_type; struct intel_vgpu* vgpu; } ;
struct intel_vgpu {int dummy; } ;

/* Variables and functions */
 int EFAULT ; 
 scalar_t__ RING_BUFFER_INSTRUCTION ; 
 int FUNC0 (struct parser_exec_state*) ; 
 scalar_t__ FUNC1 (unsigned long,unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 int /*<<< orphan*/  FUNC3 (struct parser_exec_state*) ; 

__attribute__((used)) static int FUNC4(struct parser_exec_state *s,
		unsigned long rb_head, unsigned long rb_tail,
		unsigned long rb_start, unsigned long rb_len)
{

	unsigned long gma_head, gma_tail, gma_bottom;
	int ret = 0;
	struct intel_vgpu *vgpu = s->vgpu;

	gma_head = rb_start + rb_head;
	gma_tail = rb_start + rb_tail;
	gma_bottom = rb_start +  rb_len;

	while (s->ip_gma != gma_tail) {
		if (s->buf_type == RING_BUFFER_INSTRUCTION) {
			if (!(s->ip_gma >= rb_start) ||
				!(s->ip_gma < gma_bottom)) {
				FUNC2("ip_gma %lx out of ring scope."
					"(base:0x%lx, bottom: 0x%lx)\n",
					s->ip_gma, rb_start,
					gma_bottom);
				FUNC3(s);
				return -EFAULT;
			}
			if (FUNC1(s->ip_gma, gma_head, gma_tail)) {
				FUNC2("ip_gma %lx out of range."
					"base 0x%lx head 0x%lx tail 0x%lx\n",
					s->ip_gma, rb_start,
					rb_head, rb_tail);
				FUNC3(s);
				break;
			}
		}
		ret = FUNC0(s);
		if (ret) {
			FUNC2("cmd parser error\n");
			FUNC3(s);
			break;
		}
	}

	return ret;
}