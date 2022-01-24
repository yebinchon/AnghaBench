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
struct parser_exec_state {TYPE_1__* vgpu; } ;
struct TYPE_4__ {int gmadr_bytes_in_cmd; } ;
struct intel_gvt {int /*<<< orphan*/  dev_priv; TYPE_2__ device_info; } ;
struct TYPE_3__ {struct intel_gvt* gvt; } ;

/* Variables and functions */
 int EBADRQC ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct parser_exec_state*,unsigned long,int,int) ; 
 unsigned long FUNC2 (struct parser_exec_state*,int) ; 
 int FUNC3 (struct parser_exec_state*,int) ; 
 int FUNC4 (struct parser_exec_state*) ; 
 int /*<<< orphan*/  FUNC5 (struct parser_exec_state*,int) ; 
 int FUNC6 (struct parser_exec_state*,int /*<<< orphan*/ ,int,char*) ; 
 scalar_t__ FUNC7 (struct parser_exec_state*,int) ; 
 int FUNC8 (struct parser_exec_state*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (struct parser_exec_state*) ; 

__attribute__((used)) static int FUNC10(struct parser_exec_state *s)
{
	struct intel_gvt *gvt = s->vgpu->gvt;
	int gmadr_bytes = gvt->device_info.gmadr_bytes_in_cmd;
	unsigned long gma;
	int i, ret = 0;
	int cmd_len = FUNC4(s);

	for (i = 1; i < cmd_len;) {
		if (FUNC0(gvt->dev_priv))
			ret |= (FUNC7(s, i)) ? -EBADRQC : 0;
		if (ret)
			break;
		ret |= FUNC6(s, FUNC5(s, i), i, "lrm");
		if (ret)
			break;
		if (FUNC8(s, 0) & (1 << 22)) {
			gma = FUNC2(s, i + 1);
			if (gmadr_bytes == 8)
				gma |= (FUNC3(s, i + 2)) << 32;
			ret |= FUNC1(s, gma, sizeof(u32), false);
			if (ret)
				break;
		}
		i += FUNC9(s) + 1;
	}
	return ret;
}