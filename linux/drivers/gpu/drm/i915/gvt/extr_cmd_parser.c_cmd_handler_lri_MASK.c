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
typedef  int u32 ;
struct parser_exec_state {scalar_t__ ring_id; TYPE_1__* vgpu; } ;
struct intel_gvt {int /*<<< orphan*/  dev_priv; } ;
struct TYPE_2__ {struct intel_gvt* gvt; } ;

/* Variables and functions */
 scalar_t__ BCS0 ; 
 int FUNC0 (int) ; 
 int /*<<< orphan*/  DERRMR ; 
 int EBADRQC ; 
 int EFAULT ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int MAX_VALID_LEN ; 
 scalar_t__ RCS0 ; 
 int FUNC2 (struct parser_exec_state*) ; 
 scalar_t__ FUNC3 (struct parser_exec_state*,int) ; 
 int FUNC4 (struct parser_exec_state*,scalar_t__,int,char*) ; 
 scalar_t__ FUNC5 (struct parser_exec_state*,int) ; 
 int /*<<< orphan*/  FUNC6 (char*,int,int) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(struct parser_exec_state *s)
{
	int i, ret = 0;
	int cmd_len = FUNC2(s);
	struct intel_gvt *gvt = s->vgpu->gvt;
	u32 valid_len = FUNC0(1);

	/*
	 * Official intel docs are somewhat sloppy , check the definition of
	 * MI_LOAD_REGISTER_IMM.
	 */
	#define MAX_VALID_LEN 127
	if ((cmd_len < valid_len) || (cmd_len > MAX_VALID_LEN)) {
		FUNC6("len is not valid:  len=%u  valid_len=%u\n",
			cmd_len, valid_len);
		return -EFAULT;
	}

	for (i = 1; i < cmd_len; i += 2) {
		if (FUNC1(gvt->dev_priv) && s->ring_id != RCS0) {
			if (s->ring_id == BCS0 &&
			    FUNC3(s, i) == FUNC7(DERRMR))
				ret |= 0;
			else
				ret |= FUNC5(s, i) ? -EBADRQC : 0;
		}
		if (ret)
			break;
		ret |= FUNC4(s, FUNC3(s, i), i, "lri");
		if (ret)
			break;
	}
	return ret;
}