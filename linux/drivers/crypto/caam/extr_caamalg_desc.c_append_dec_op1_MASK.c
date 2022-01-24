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
 int JUMP_COND_SHRD ; 
 int JUMP_TEST_ALL ; 
 int OP_ALG_AAI_DK ; 
 int OP_ALG_ALGSEL_AES ; 
 int OP_ALG_ALGSEL_MASK ; 
 int OP_ALG_AS_INIT ; 
 int OP_ALG_AS_INITFINAL ; 
 int OP_ALG_DECRYPT ; 
 int* FUNC0 (int*,int) ; 
 int /*<<< orphan*/  FUNC1 (int*,int) ; 
 int /*<<< orphan*/  FUNC2 (int*,int*) ; 

__attribute__((used)) static inline void FUNC3(u32 *desc, u32 type)
{
	u32 *jump_cmd, *uncond_jump_cmd;

	/* DK bit is valid only for AES */
	if ((type & OP_ALG_ALGSEL_MASK) != OP_ALG_ALGSEL_AES) {
		FUNC1(desc, type | OP_ALG_AS_INITFINAL |
				 OP_ALG_DECRYPT);
		return;
	}

	jump_cmd = FUNC0(desc, JUMP_TEST_ALL | JUMP_COND_SHRD);
	FUNC1(desc, type | OP_ALG_AS_INIT | OP_ALG_DECRYPT);
	uncond_jump_cmd = FUNC0(desc, JUMP_TEST_ALL);
	FUNC2(desc, jump_cmd);
	FUNC1(desc, type | OP_ALG_AS_INIT | OP_ALG_DECRYPT |
			 OP_ALG_AAI_DK);
	FUNC2(desc, uncond_jump_cmd);
}