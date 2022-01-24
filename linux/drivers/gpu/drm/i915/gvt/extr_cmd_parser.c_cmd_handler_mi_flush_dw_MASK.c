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
struct TYPE_10__ {int /*<<< orphan*/  mi_flush_dw; } ;
struct TYPE_9__ {int /*<<< orphan*/  pending_events; } ;
struct TYPE_8__ {unsigned long* hws_pga; TYPE_2__* gvt; } ;
struct TYPE_6__ {int gmadr_bytes_in_cmd; } ;
struct TYPE_7__ {TYPE_1__ device_info; } ;

/* Variables and functions */
 unsigned long FUNC0 (int) ; 
 int FUNC1 (int,int) ; 
 int FUNC2 (struct parser_exec_state*,unsigned long,int,int) ; 
 TYPE_5__* cmd_interrupt_events ; 
 int /*<<< orphan*/  FUNC3 (struct parser_exec_state*) ; 
 int /*<<< orphan*/  FUNC4 (struct parser_exec_state*,int) ; 
 int FUNC5 (struct parser_exec_state*,int) ; 
 int FUNC6 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (struct parser_exec_state*,int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC9(struct parser_exec_state *s)
{
	int gmadr_bytes = s->vgpu->gvt->device_info.gmadr_bytes_in_cmd;
	unsigned long gma;
	bool index_mode = false;
	int ret = 0;
	u32 hws_pga, val;
	u32 valid_len = FUNC0(2);

	ret = FUNC6(FUNC3(s),
			valid_len);
	if (ret) {
		/* Check again for Qword */
		ret = FUNC6(FUNC3(s),
			++valid_len);
		return ret;
	}

	/* Check post-sync and ppgtt bit */
	if (((FUNC5(s, 0) >> 14) & 0x3) && (FUNC5(s, 1) & (1 << 2))) {
		gma = FUNC5(s, 1) & FUNC1(31, 3);
		if (gmadr_bytes == 8)
			gma |= (FUNC5(s, 2) & FUNC1(15, 0)) << 32;
		/* Store Data Index */
		if (FUNC5(s, 0) & (1 << 21))
			index_mode = true;
		ret = FUNC2(s, gma, sizeof(u64), index_mode);
		if (ret)
			return ret;
		if (index_mode) {
			hws_pga = s->vgpu->hws_pga[s->ring_id];
			gma = hws_pga + gma;
			FUNC7(s, FUNC4(s, 1), gma);
			val = FUNC5(s, 0) & (~(1 << 21));
			FUNC7(s, FUNC4(s, 0), val);
		}
	}
	/* Check notify bit */
	if ((FUNC5(s, 0) & (1 << 8)))
		FUNC8(cmd_interrupt_events[s->ring_id].mi_flush_dw,
				s->workload->pending_events);
	return ret;
}