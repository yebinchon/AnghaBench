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
typedef  int /*<<< orphan*/  u32 ;
struct mv_xor_chan {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct mv_xor_chan*) ; 
 int /*<<< orphan*/  FUNC1 (struct mv_xor_chan*) ; 
 int /*<<< orphan*/  FUNC2 (struct mv_xor_chan*) ; 
 int /*<<< orphan*/  FUNC3 (struct mv_xor_chan*) ; 
 int /*<<< orphan*/  FUNC4 (struct mv_xor_chan*) ; 
 int /*<<< orphan*/  FUNC5 (struct mv_xor_chan*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct mv_xor_chan*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC9(struct mv_xor_chan *chan)
{
	u32 val;

	val = FUNC8(FUNC1(chan));
	FUNC6(FUNC7(chan), "config       0x%08x\n", val);

	val = FUNC8(FUNC0(chan));
	FUNC6(FUNC7(chan), "activation   0x%08x\n", val);

	val = FUNC8(FUNC4(chan));
	FUNC6(FUNC7(chan), "intr cause   0x%08x\n", val);

	val = FUNC8(FUNC5(chan));
	FUNC6(FUNC7(chan), "intr mask    0x%08x\n", val);

	val = FUNC8(FUNC3(chan));
	FUNC6(FUNC7(chan), "error cause  0x%08x\n", val);

	val = FUNC8(FUNC2(chan));
	FUNC6(FUNC7(chan), "error addr   0x%08x\n", val);
}