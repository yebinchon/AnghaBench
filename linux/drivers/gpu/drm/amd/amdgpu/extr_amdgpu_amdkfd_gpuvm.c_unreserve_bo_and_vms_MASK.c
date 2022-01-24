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
struct bo_vm_reservation_context {int reserved; int /*<<< orphan*/ * vm_pd; int /*<<< orphan*/ * sync; int /*<<< orphan*/  list; int /*<<< orphan*/  ticket; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(struct bo_vm_reservation_context *ctx,
				 bool wait, bool intr)
{
	int ret = 0;

	if (wait)
		ret = FUNC0(ctx->sync, intr);

	if (ctx->reserved)
		FUNC2(&ctx->ticket, &ctx->list);
	FUNC1(ctx->vm_pd);

	ctx->sync = NULL;

	ctx->reserved = false;
	ctx->vm_pd = NULL;

	return ret;
}