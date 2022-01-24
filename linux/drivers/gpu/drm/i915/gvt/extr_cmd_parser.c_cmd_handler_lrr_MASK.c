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
struct parser_exec_state {TYPE_2__* vgpu; } ;
struct TYPE_4__ {TYPE_1__* gvt; } ;
struct TYPE_3__ {int /*<<< orphan*/  dev_priv; } ;

/* Variables and functions */
 int EBADRQC ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct parser_exec_state*) ; 
 int /*<<< orphan*/  FUNC2 (struct parser_exec_state*,int) ; 
 int FUNC3 (struct parser_exec_state*,int /*<<< orphan*/ ,int,char*) ; 
 scalar_t__ FUNC4 (struct parser_exec_state*,int) ; 

__attribute__((used)) static int FUNC5(struct parser_exec_state *s)
{
	int i, ret = 0;
	int cmd_len = FUNC1(s);

	for (i = 1; i < cmd_len; i += 2) {
		if (FUNC0(s->vgpu->gvt->dev_priv))
			ret |= ((FUNC4(s, i) ||
					(FUNC4(s, i + 1)))) ?
				-EBADRQC : 0;
		if (ret)
			break;
		ret |= FUNC3(s, FUNC2(s, i), i, "lrr-src");
		if (ret)
			break;
		ret |= FUNC3(s, FUNC2(s, i + 1), i, "lrr-dst");
		if (ret)
			break;
	}
	return ret;
}