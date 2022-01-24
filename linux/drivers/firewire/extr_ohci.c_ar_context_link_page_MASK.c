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
struct descriptor {int /*<<< orphan*/  branch_address; scalar_t__ transfer_status; int /*<<< orphan*/  res_count; } ;
struct ar_context {size_t last_buffer_index; int /*<<< orphan*/  regs; int /*<<< orphan*/  ohci; struct descriptor* descriptors; } ;

/* Variables and functions */
 int /*<<< orphan*/  CONTEXT_WAKE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 

__attribute__((used)) static void FUNC5(struct ar_context *ctx, unsigned int index)
{
	struct descriptor *d;

	d = &ctx->descriptors[index];
	d->branch_address  &= FUNC2(~0xf);
	d->res_count       =  FUNC1(PAGE_SIZE);
	d->transfer_status =  0;

	FUNC4(); /* finish init of new descriptors before branch_address update */
	d = &ctx->descriptors[ctx->last_buffer_index];
	d->branch_address  |= FUNC2(1);

	ctx->last_buffer_index = index;

	FUNC3(ctx->ohci, FUNC0(ctx->regs), CONTEXT_WAKE);
}