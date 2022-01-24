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
struct mv_xor_chan {int /*<<< orphan*/  idx; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int XOR_INT_ERR_DECODE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct mv_xor_chan*) ; 
 int /*<<< orphan*/  FUNC4 (struct mv_xor_chan*) ; 

__attribute__((used)) static void FUNC5(struct mv_xor_chan *chan,
					  u32 intr_cause)
{
	if (intr_cause & XOR_INT_ERR_DECODE) {
		FUNC1(FUNC4(chan), "ignoring address decode error\n");
		return;
	}

	FUNC2(FUNC4(chan), "error on chan %d. intr cause 0x%08x\n",
		chan->idx, intr_cause);

	FUNC3(chan);
	FUNC0(1);
}