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
typedef  int u32 ;
struct parser_exec_state {TYPE_3__* vgpu; } ;
struct TYPE_6__ {TYPE_2__* gvt; } ;
struct TYPE_4__ {int gmadr_bytes_in_cmd; } ;
struct TYPE_5__ {TYPE_1__ device_info; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ ,int,int) ; 
 int FUNC2 (int,int) ; 
 int FUNC3 (struct parser_exec_state*,unsigned long,int,int) ; 
 int /*<<< orphan*/  FUNC4 (struct parser_exec_state*) ; 
 int FUNC5 (struct parser_exec_state*,int) ; 
 int FUNC6 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC7(struct parser_exec_state *s)
{
	int gmadr_bytes = s->vgpu->gvt->device_info.gmadr_bytes_in_cmd;
	int op_size = (1 << ((FUNC5(s, 0) & FUNC2(20, 19)) >> 19)) *
			sizeof(u32);
	unsigned long gma, gma_high;
	u32 valid_len = FUNC0(1);
	int ret = 0;

	if (!(FUNC5(s, 0) & (1 << 22)))
		return ret;

	/* check if QWORD */
	if (FUNC1(0, 20, 19) == 1)
		valid_len += 8;
	ret = FUNC6(FUNC4(s),
			valid_len);
	if (ret)
		return ret;

	gma = FUNC5(s, 1) & FUNC2(31, 2);
	if (gmadr_bytes == 8) {
		gma_high = FUNC5(s, 2) & FUNC2(15, 0);
		gma = (gma_high << 32) | gma;
	}
	ret = FUNC3(s, gma, op_size, false);
	return ret;
}