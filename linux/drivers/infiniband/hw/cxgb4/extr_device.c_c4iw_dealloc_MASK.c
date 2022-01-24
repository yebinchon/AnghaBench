#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct uld_ctx {TYPE_1__* dev; } ;
struct TYPE_4__ {scalar_t__ oc_mw_kva; scalar_t__ bar2_kva; } ;
struct TYPE_3__ {int /*<<< orphan*/  ibdev; TYPE_2__ rdev; int /*<<< orphan*/  atids; int /*<<< orphan*/  stids; int /*<<< orphan*/  hwtids; int /*<<< orphan*/  wait; int /*<<< orphan*/  mrs; int /*<<< orphan*/  qps; int /*<<< orphan*/  cqs; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

void FUNC6(struct uld_ctx *ctx)
{
	FUNC1(&ctx->dev->rdev);
	FUNC0(!FUNC5(&ctx->dev->cqs));
	FUNC0(!FUNC5(&ctx->dev->qps));
	FUNC0(!FUNC5(&ctx->dev->mrs));
	FUNC4(ctx->dev->wait, FUNC5(&ctx->dev->hwtids));
	FUNC0(!FUNC5(&ctx->dev->stids));
	FUNC0(!FUNC5(&ctx->dev->atids));
	if (ctx->dev->rdev.bar2_kva)
		FUNC3(ctx->dev->rdev.bar2_kva);
	if (ctx->dev->rdev.oc_mw_kva)
		FUNC3(ctx->dev->rdev.oc_mw_kva);
	FUNC2(&ctx->dev->ibdev);
	ctx->dev = NULL;
}