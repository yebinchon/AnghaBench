#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int uint8_t ;
typedef  scalar_t__ uint32_t ;
struct TYPE_4__ {scalar_t__ start; } ;
typedef  TYPE_1__ atom_exec_context ;

/* Variables and functions */
 int ATOM_ARG_IMM ; 
 scalar_t__ ATOM_CASE_END ; 
 scalar_t__ ATOM_CASE_MAGIC ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 scalar_t__ FUNC1 (int) ; 
 scalar_t__ FUNC2 (int) ; 
 scalar_t__ FUNC3 (TYPE_1__*,int,int*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 

__attribute__((used)) static void FUNC5(atom_exec_context *ctx, int *ptr, int arg)
{
	uint8_t attr = FUNC2((*ptr)++);
	uint32_t src, val, target;
	FUNC0("   switch: ");
	src = FUNC3(ctx, attr, ptr);
	while (FUNC1(*ptr) != ATOM_CASE_END)
		if (FUNC2(*ptr) == ATOM_CASE_MAGIC) {
			(*ptr)++;
			FUNC0("   case: ");
			val =
			    FUNC3(ctx, (attr & 0x38) | ATOM_ARG_IMM,
					 ptr);
			target = FUNC1(*ptr);
			if (val == src) {
				FUNC0("   target: %04X\n", target);
				*ptr = ctx->start + target;
				return;
			}
			(*ptr) += 2;
		} else {
			FUNC4("Bad case\n");
			return;
		}
	(*ptr) += 2;
}