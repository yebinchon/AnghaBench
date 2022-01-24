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
struct lgdt3305_state {int dummy; } ;
struct lgdt3305_reg {int /*<<< orphan*/  val; int /*<<< orphan*/  reg; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 int FUNC2 (struct lgdt3305_state*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct lgdt3305_state *state,
			       struct lgdt3305_reg *regs, int len)
{
	int i, ret;

	FUNC1("writing %d registers...\n", len);

	for (i = 0; i < len - 1; i++) {
		ret = FUNC2(state, regs[i].reg, regs[i].val);
		if (FUNC0(ret))
			return ret;
	}
	return 0;
}