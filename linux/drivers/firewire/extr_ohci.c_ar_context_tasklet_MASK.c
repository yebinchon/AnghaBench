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
struct ar_context {int /*<<< orphan*/ * pointer; void* buffer; } ;

/* Variables and functions */
 unsigned int AR_BUFFERS ; 
 unsigned int PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC0 (struct ar_context*,char*) ; 
 unsigned int FUNC1 (struct ar_context*) ; 
 int /*<<< orphan*/  FUNC2 (struct ar_context*,unsigned int) ; 
 unsigned int FUNC3 (struct ar_context*,unsigned int*) ; 
 int /*<<< orphan*/  FUNC4 (struct ar_context*,unsigned int,unsigned int) ; 
 void* FUNC5 (struct ar_context*,void*,void*) ; 

__attribute__((used)) static void FUNC6(unsigned long data)
{
	struct ar_context *ctx = (struct ar_context *)data;
	unsigned int end_buffer_index, end_buffer_offset;
	void *p, *end;

	p = ctx->pointer;
	if (!p)
		return;

	end_buffer_index = FUNC3(ctx,
							&end_buffer_offset);
	FUNC4(ctx, end_buffer_index, end_buffer_offset);
	end = ctx->buffer + end_buffer_index * PAGE_SIZE + end_buffer_offset;

	if (end_buffer_index < FUNC1(ctx)) {
		/*
		 * The filled part of the overall buffer wraps around; handle
		 * all packets up to the buffer end here.  If the last packet
		 * wraps around, its tail will be visible after the buffer end
		 * because the buffer start pages are mapped there again.
		 */
		void *buffer_end = ctx->buffer + AR_BUFFERS * PAGE_SIZE;
		p = FUNC5(ctx, p, buffer_end);
		if (p < buffer_end)
			goto error;
		/* adjust p to point back into the actual buffer */
		p -= AR_BUFFERS * PAGE_SIZE;
	}

	p = FUNC5(ctx, p, end);
	if (p != end) {
		if (p > end)
			FUNC0(ctx, "inconsistent descriptor");
		goto error;
	}

	ctx->pointer = p;
	FUNC2(ctx, end_buffer_index);

	return;

error:
	ctx->pointer = NULL;
}