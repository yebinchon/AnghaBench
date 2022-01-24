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
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int /*<<< orphan*/  atom_exec_context ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int,int,int*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int,int*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int,int*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int,int,int*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(atom_exec_context *ctx, int *ptr, int arg)
{
	uint8_t attr = FUNC1((*ptr)++);
	uint32_t dst, mask, src, saved;
	int dptr = *ptr;
	FUNC0("   dst: ");
	dst = FUNC2(ctx, arg, attr, ptr, &saved, 1);
	mask = FUNC4(ctx, ((attr >> 3) & 7), ptr);
	FUNC0("   mask: 0x%08x", mask);
	FUNC0("   src: ");
	src = FUNC3(ctx, attr, ptr);
	dst &= mask;
	dst |= src;
	FUNC0("   dst: ");
	FUNC5(ctx, arg, attr, &dptr, dst, saved);
}