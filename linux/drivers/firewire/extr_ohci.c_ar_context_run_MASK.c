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
struct ar_context {int descriptors_bus; int /*<<< orphan*/  regs; int /*<<< orphan*/  ohci; int /*<<< orphan*/  buffer; int /*<<< orphan*/  pointer; } ;

/* Variables and functions */
 unsigned int AR_BUFFERS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int CONTEXT_RUN ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ar_context*,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC4(struct ar_context *ctx)
{
	unsigned int i;

	for (i = 0; i < AR_BUFFERS; i++)
		FUNC2(ctx, i);

	ctx->pointer = ctx->buffer;

	FUNC3(ctx->ohci, FUNC0(ctx->regs), ctx->descriptors_bus | 1);
	FUNC3(ctx->ohci, FUNC1(ctx->regs), CONTEXT_RUN);
}