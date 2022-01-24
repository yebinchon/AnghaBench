#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u64 ;
typedef  unsigned long u32 ;
struct parser_exec_state {size_t ring_id; TYPE_4__* workload; TYPE_3__* vgpu; } ;
struct TYPE_10__ {int /*<<< orphan*/  pipe_control_notify; } ;
struct TYPE_9__ {int /*<<< orphan*/  pending_events; } ;
struct TYPE_8__ {unsigned long* hws_pga; TYPE_2__* gvt; } ;
struct TYPE_6__ {int gmadr_bytes_in_cmd; } ;
struct TYPE_7__ {TYPE_1__ device_info; } ;

/* Variables and functions */
 int FUNC0 (int,int) ; 
 int PIPE_CONTROL_GLOBAL_GTT_IVB ; 
 int PIPE_CONTROL_MMIO_WRITE ; 
 int PIPE_CONTROL_NOTIFY ; 
 int PIPE_CONTROL_POST_SYNC_OP_MASK ; 
 int FUNC1 (struct parser_exec_state*,unsigned long,int,int) ; 
 int FUNC2 (struct parser_exec_state*,int) ; 
 TYPE_5__* cmd_interrupt_events ; 
 int /*<<< orphan*/  FUNC3 (struct parser_exec_state*,int) ; 
 int FUNC4 (struct parser_exec_state*,int) ; 
 int FUNC5 (struct parser_exec_state*,int,int,char*) ; 
 int FUNC6 (struct parser_exec_state*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct parser_exec_state*,int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC9(struct parser_exec_state *s)
{
	int gmadr_bytes = s->vgpu->gvt->device_info.gmadr_bytes_in_cmd;
	unsigned long gma;
	bool index_mode = false;
	unsigned int post_sync;
	int ret = 0;
	u32 hws_pga, val;

	post_sync = (FUNC6(s, 1) & PIPE_CONTROL_POST_SYNC_OP_MASK) >> 14;

	/* LRI post sync */
	if (FUNC6(s, 1) & PIPE_CONTROL_MMIO_WRITE)
		ret = FUNC5(s, FUNC4(s, 2), 1, "pipe_ctrl");
	/* post sync */
	else if (post_sync) {
		if (post_sync == 2)
			ret = FUNC5(s, 0x2350, 1, "pipe_ctrl");
		else if (post_sync == 3)
			ret = FUNC5(s, 0x2358, 1, "pipe_ctrl");
		else if (post_sync == 1) {
			/* check ggtt*/
			if ((FUNC6(s, 1) & PIPE_CONTROL_GLOBAL_GTT_IVB)) {
				gma = FUNC6(s, 2) & FUNC0(31, 3);
				if (gmadr_bytes == 8)
					gma |= (FUNC2(s, 3)) << 32;
				/* Store Data Index */
				if (FUNC6(s, 1) & (1 << 21))
					index_mode = true;
				ret |= FUNC1(s, gma, sizeof(u64),
						index_mode);
				if (ret)
					return ret;
				if (index_mode) {
					hws_pga = s->vgpu->hws_pga[s->ring_id];
					gma = hws_pga + gma;
					FUNC7(s, FUNC3(s, 2), gma);
					val = FUNC6(s, 1) & (~(1 << 21));
					FUNC7(s, FUNC3(s, 1), val);
				}
			}
		}
	}

	if (ret)
		return ret;

	if (FUNC6(s, 1) & PIPE_CONTROL_NOTIFY)
		FUNC8(cmd_interrupt_events[s->ring_id].pipe_control_notify,
				s->workload->pending_events);
	return 0;
}