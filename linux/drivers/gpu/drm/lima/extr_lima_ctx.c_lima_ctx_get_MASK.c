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
typedef  int /*<<< orphan*/  u32 ;
struct lima_ctx_mgr {int /*<<< orphan*/  lock; int /*<<< orphan*/  handles; } ;
struct lima_ctx {int /*<<< orphan*/  refcnt; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct lima_ctx* FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

struct lima_ctx *FUNC4(struct lima_ctx_mgr *mgr, u32 id)
{
	struct lima_ctx *ctx;

	FUNC1(&mgr->lock);
	ctx = FUNC3(&mgr->handles, id);
	if (ctx)
		FUNC0(&ctx->refcnt);
	FUNC2(&mgr->lock);
	return ctx;
}