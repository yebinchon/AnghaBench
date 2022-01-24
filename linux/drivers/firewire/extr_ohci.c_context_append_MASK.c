#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct descriptor_buffer {int buffer_bus; int used; struct descriptor* buffer; } ;
struct descriptor {int control; void* branch_address; } ;
struct context {int prev_z; struct descriptor* prev; TYPE_1__* ohci; struct descriptor_buffer* buffer_tail; } ;
typedef  int dma_addr_t ;
struct TYPE_2__ {int quirks; } ;

/* Variables and functions */
 int /*<<< orphan*/  DESCRIPTOR_CMD ; 
 int /*<<< orphan*/  DESCRIPTOR_INPUT_MORE ; 
 int QUIRK_IR_WAKE ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 void* FUNC1 (int) ; 
 struct descriptor* FUNC2 (struct descriptor*,int) ; 
 scalar_t__ FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 () ; 

__attribute__((used)) static void FUNC5(struct context *ctx,
			   struct descriptor *d, int z, int extra)
{
	dma_addr_t d_bus;
	struct descriptor_buffer *desc = ctx->buffer_tail;
	struct descriptor *d_branch;

	d_bus = desc->buffer_bus + (d - desc->buffer) * sizeof(*d);

	desc->used += (z + extra) * sizeof(*d);

	FUNC4(); /* finish init of new descriptors before branch_address update */

	d_branch = FUNC2(ctx->prev, ctx->prev_z);
	d_branch->branch_address = FUNC1(d_bus | z);

	/*
	 * VT6306 incorrectly checks only the single descriptor at the
	 * CommandPtr when the wake bit is written, so if it's a
	 * multi-descriptor block starting with an INPUT_MORE, put a copy of
	 * the branch address in the first descriptor.
	 *
	 * Not doing this for transmit contexts since not sure how it interacts
	 * with skip addresses.
	 */
	if (FUNC3(ctx->ohci->quirks & QUIRK_IR_WAKE) &&
	    d_branch != ctx->prev &&
	    (ctx->prev->control & FUNC0(DESCRIPTOR_CMD)) ==
	     FUNC0(DESCRIPTOR_INPUT_MORE)) {
		ctx->prev->branch_address = FUNC1(d_bus | z);
	}

	ctx->prev = d;
	ctx->prev_z = z;
}