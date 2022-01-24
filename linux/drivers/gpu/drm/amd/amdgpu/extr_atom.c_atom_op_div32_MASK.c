#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int uint64_t ;
typedef  scalar_t__ uint32_t ;
struct TYPE_7__ {TYPE_1__* ctx; } ;
typedef  TYPE_2__ atom_exec_context ;
struct TYPE_6__ {scalar_t__* divmul; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (TYPE_2__*,int,int /*<<< orphan*/ ,int*,int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC3 (TYPE_2__*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC4 (int,scalar_t__) ; 
 scalar_t__ FUNC5 (int) ; 
 scalar_t__ FUNC6 (int) ; 

__attribute__((used)) static void FUNC7(atom_exec_context *ctx, int *ptr, int arg)
{
	uint64_t val64;
	uint8_t attr = FUNC1((*ptr)++);
	uint32_t dst, src;
	FUNC0("   src1: ");
	dst = FUNC2(ctx, arg, attr, ptr, NULL, 1);
	FUNC0("   src2: ");
	src = FUNC3(ctx, attr, ptr);
	if (src != 0) {
		val64 = dst;
		val64 |= ((uint64_t)ctx->ctx->divmul[1]) << 32;
		FUNC4(val64, src);
		ctx->ctx->divmul[0] = FUNC5(val64);
		ctx->ctx->divmul[1] = FUNC6(val64);
	} else {
		ctx->ctx->divmul[0] = 0;
		ctx->ctx->divmul[1] = 0;
	}
}