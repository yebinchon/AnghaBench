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
struct lgdt3306a_state {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct lgdt3306a_state*) ; 
 int FUNC3 (struct lgdt3306a_state*,int,int,int) ; 

__attribute__((used)) static int FUNC4(struct lgdt3306a_state *state,
				     int mode)
{
	int ret;

	FUNC0("(%d)\n", mode);

	if (mode == 0) {
		/* into reset */
		ret = FUNC3(state, 0x0000, 7, 0);
		if (FUNC1(ret))
			goto fail;

		/* power down */
		ret = FUNC3(state, 0x0000, 0, 0);
		if (FUNC1(ret))
			goto fail;

	} else {
		/* out of reset */
		ret = FUNC3(state, 0x0000, 7, 1);
		if (FUNC1(ret))
			goto fail;

		/* power up */
		ret = FUNC3(state, 0x0000, 0, 1);
		if (FUNC1(ret))
			goto fail;
	}

#ifdef DBG_DUMP
	lgdt3306a_DumpAllRegs(state);
#endif
fail:
	return ret;
}