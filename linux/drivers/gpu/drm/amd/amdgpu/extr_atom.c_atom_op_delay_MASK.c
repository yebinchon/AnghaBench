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
typedef  int /*<<< orphan*/  atom_exec_context ;

/* Variables and functions */
 int ATOM_UNIT_MICROSEC ; 
 int /*<<< orphan*/  FUNC0 (char*,unsigned int) ; 
 unsigned int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (unsigned int) ; 

__attribute__((used)) static void FUNC6(atom_exec_context *ctx, int *ptr, int arg)
{
	unsigned count = FUNC1((*ptr)++);
	FUNC0("   count: %d\n", count);
	if (arg == ATOM_UNIT_MICROSEC)
		FUNC5(count);
	else if (!FUNC2())
		FUNC3(count);
	else
		FUNC4(count);
}