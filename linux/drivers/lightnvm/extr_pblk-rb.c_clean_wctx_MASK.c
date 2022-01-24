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
struct pblk_w_ctx {int /*<<< orphan*/  lba; int /*<<< orphan*/  ppa; int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  ADDR_EMPTY ; 
 int PBLK_SUBMITTED_ENTRY ; 
 int /*<<< orphan*/  PBLK_WRITABLE_ENTRY ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct pblk_w_ctx *w_ctx)
{
	int flags;

	flags = FUNC0(w_ctx->flags);
	FUNC1(!(flags & PBLK_SUBMITTED_ENTRY),
			"pblk: overwriting unsubmitted data\n");

	/* Release flags on context. Protect from writes and reads */
	FUNC3(&w_ctx->flags, PBLK_WRITABLE_ENTRY);
	FUNC2(&w_ctx->ppa);
	w_ctx->lba = ADDR_EMPTY;
}