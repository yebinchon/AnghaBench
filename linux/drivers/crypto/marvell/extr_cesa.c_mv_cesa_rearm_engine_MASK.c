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
struct mv_cesa_engine {int /*<<< orphan*/  lock; struct crypto_async_request* req; } ;
struct mv_cesa_ctx {TYPE_1__* ops; } ;
struct crypto_async_request {int /*<<< orphan*/  tfm; int /*<<< orphan*/  (* complete ) (struct crypto_async_request*,int /*<<< orphan*/ ) ;} ;
struct TYPE_2__ {int /*<<< orphan*/  (* step ) (struct crypto_async_request*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  EINPROGRESS ; 
 struct mv_cesa_ctx* FUNC0 (int /*<<< orphan*/ ) ; 
 struct crypto_async_request* FUNC1 (struct mv_cesa_engine*,struct crypto_async_request**) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct crypto_async_request*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct crypto_async_request*) ; 

__attribute__((used)) static void FUNC6(struct mv_cesa_engine *engine)
{
	struct crypto_async_request *req = NULL, *backlog = NULL;
	struct mv_cesa_ctx *ctx;


	FUNC2(&engine->lock);
	if (!engine->req) {
		req = FUNC1(engine, &backlog);
		engine->req = req;
	}
	FUNC3(&engine->lock);

	if (!req)
		return;

	if (backlog)
		backlog->complete(backlog, -EINPROGRESS);

	ctx = FUNC0(req->tfm);
	ctx->ops->step(req);
}