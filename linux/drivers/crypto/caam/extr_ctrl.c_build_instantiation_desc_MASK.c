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
typedef  int u32 ;

/* Variables and functions */
 int JUMP_CLASS_CLASS1 ; 
 int JUMP_TYPE_HALT ; 
 int /*<<< orphan*/  LDST_SRCDST_WORD_CLRW ; 
 int OP_ALG_AAI_RNG4_SK ; 
 int OP_ALG_AAI_SHIFT ; 
 int OP_ALG_ALGSEL_RNG ; 
 int OP_ALG_AS_INIT ; 
 int OP_TYPE_CLASS1_ALG ; 
 int* FUNC0 (int*,int) ; 
 int /*<<< orphan*/  FUNC1 (int*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int*,int) ; 
 int /*<<< orphan*/  FUNC3 (int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int*,int*) ; 

__attribute__((used)) static void FUNC5(u32 *desc, int handle, int do_sk)
{
	u32 *jump_cmd, op_flags;

	FUNC3(desc, 0);

	op_flags = OP_TYPE_CLASS1_ALG | OP_ALG_ALGSEL_RNG |
			(handle << OP_ALG_AAI_SHIFT) | OP_ALG_AS_INIT;

	/* INIT RNG in non-test mode */
	FUNC2(desc, op_flags);

	if (!handle && do_sk) {
		/*
		 * For SH0, Secure Keys must be generated as well
		 */

		/* wait for done */
		jump_cmd = FUNC0(desc, JUMP_CLASS_CLASS1);
		FUNC4(desc, jump_cmd);

		/*
		 * load 1 to clear written reg:
		 * resets the done interrrupt and returns the RNG to idle.
		 */
		FUNC1(desc, 1, LDST_SRCDST_WORD_CLRW);

		/* Initialize State Handle  */
		FUNC2(desc, OP_TYPE_CLASS1_ALG | OP_ALG_ALGSEL_RNG |
				 OP_ALG_AAI_RNG4_SK);
	}

	FUNC0(desc, JUMP_CLASS_CLASS1 | JUMP_TYPE_HALT);
}