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
typedef  int u8 ;
struct lgdt3306a_state {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 scalar_t__ FUNC1 (int) ; 
 int FUNC2 (struct lgdt3306a_state*,int,int*) ; 
 int FUNC3 (struct lgdt3306a_state*,int,int,int) ; 
 int FUNC4 (struct lgdt3306a_state*,int,int) ; 

__attribute__((used)) static int FUNC5(struct lgdt3306a_state *state,
				     int mode)
{
	u8 val;
	int ret;

	FUNC0("(%d)\n", mode);

	if (mode) {
		ret = FUNC2(state, 0x0070, &val);
		if (FUNC1(ret))
			goto fail;
		/*
		 * Tristate bus; TPOUTEN=0x80, TPCLKOUTEN=0x20,
		 * TPDATAOUTEN=0x08
		 */
		val &= ~0xa8;
		ret = FUNC4(state, 0x0070, val);
		if (FUNC1(ret))
			goto fail;

		/* AGCIFOUTENB=0x40; 1=Disable IFAGC pin */
		ret = FUNC3(state, 0x0003, 6, 1);
		if (FUNC1(ret))
			goto fail;

	} else {
		/* enable IFAGC pin */
		ret = FUNC3(state, 0x0003, 6, 0);
		if (FUNC1(ret))
			goto fail;

		ret = FUNC2(state, 0x0070, &val);
		if (FUNC1(ret))
			goto fail;

		val |= 0xa8; /* enable bus */
		ret = FUNC4(state, 0x0070, val);
		if (FUNC1(ret))
			goto fail;
	}

fail:
	return ret;
}