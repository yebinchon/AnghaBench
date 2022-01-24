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
typedef  int /*<<< orphan*/  u32 ;
struct parser_exec_state {TYPE_3__* vgpu; } ;
struct TYPE_6__ {TYPE_2__* gvt; } ;
struct TYPE_4__ {int gmadr_bytes_in_cmd; } ;
struct TYPE_5__ {TYPE_1__ device_info; } ;

/* Variables and functions */
 int FUNC0 (struct parser_exec_state*,unsigned long,int,int) ; 
 unsigned long FUNC1 (struct parser_exec_state*,int) ; 
 int FUNC2 (struct parser_exec_state*,int) ; 
 int FUNC3 (struct parser_exec_state*) ; 
 int /*<<< orphan*/  FUNC4 (struct parser_exec_state*,int) ; 
 int FUNC5 (struct parser_exec_state*,int /*<<< orphan*/ ,int,char*) ; 
 int FUNC6 (struct parser_exec_state*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (struct parser_exec_state*) ; 

__attribute__((used)) static int FUNC8(struct parser_exec_state *s)
{
	int gmadr_bytes = s->vgpu->gvt->device_info.gmadr_bytes_in_cmd;
	unsigned long gma;
	int i, ret = 0;
	int cmd_len = FUNC3(s);

	for (i = 1; i < cmd_len;) {
		ret |= FUNC5(s, FUNC4(s, i), i, "srm");
		if (ret)
			break;
		if (FUNC6(s, 0) & (1 << 22)) {
			gma = FUNC1(s, i + 1);
			if (gmadr_bytes == 8)
				gma |= (FUNC2(s, i + 2)) << 32;
			ret |= FUNC0(s, gma, sizeof(u32), false);
			if (ret)
				break;
		}
		i += FUNC7(s) + 1;
	}
	return ret;
}