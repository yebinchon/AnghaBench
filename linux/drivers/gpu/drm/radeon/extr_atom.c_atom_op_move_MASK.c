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
typedef  int uint8_t ;
typedef  int uint32_t ;
typedef  int /*<<< orphan*/  atom_exec_context ;

/* Variables and functions */
 int ATOM_SRC_DWORD ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int,int,int*,int*,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ *,int,int*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int,int,int*,int,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int,int,int*) ; 

__attribute__((used)) static void FUNC6(atom_exec_context *ctx, int *ptr, int arg)
{
	uint8_t attr = FUNC1((*ptr)++);
	uint32_t src, saved;
	int dptr = *ptr;
	if (((attr >> 3) & 7) != ATOM_SRC_DWORD)
		FUNC2(ctx, arg, attr, ptr, &saved, 0);
	else {
		FUNC5(ctx, arg, attr, ptr);
		saved = 0xCDCDCDCD;
	}
	FUNC0("   src: ");
	src = FUNC3(ctx, attr, ptr);
	FUNC0("   dst: ");
	FUNC4(ctx, arg, attr, &dptr, src, saved);
}