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
typedef  int /*<<< orphan*/  u32 ;
struct mv_cesa_tdma_desc {int flags; scalar_t__ cur_dma; struct mv_cesa_tdma_desc* next; } ;
struct TYPE_3__ {int /*<<< orphan*/ * last; struct mv_cesa_tdma_desc* first; } ;
struct mv_cesa_engine {int /*<<< orphan*/  lock; struct crypto_async_request* req; TYPE_1__ chain; scalar_t__ regs; } ;
struct mv_cesa_ctx {TYPE_2__* ops; } ;
struct crypto_async_request {int /*<<< orphan*/  (* complete ) (struct crypto_async_request*,int /*<<< orphan*/ ) ;int /*<<< orphan*/  tfm; } ;
typedef  scalar_t__ dma_addr_t ;
struct TYPE_4__ {int (* process ) (struct crypto_async_request*,int /*<<< orphan*/ ) ;int /*<<< orphan*/  (* complete ) (struct crypto_async_request*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  CESA_SA_INT_ACC0_IDMA_DONE ; 
 scalar_t__ CESA_TDMA_CUR ; 
 int CESA_TDMA_END_OF_REQ ; 
 int /*<<< orphan*/  EINPROGRESS ; 
 struct mv_cesa_ctx* FUNC0 (int /*<<< orphan*/ ) ; 
 struct crypto_async_request* FUNC1 (struct mv_cesa_engine*,struct crypto_async_request**) ; 
 int /*<<< orphan*/  FUNC2 (struct mv_cesa_engine*,struct crypto_async_request*) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (struct crypto_async_request*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct crypto_async_request*) ; 
 int /*<<< orphan*/  FUNC8 (struct crypto_async_request*,int /*<<< orphan*/ ) ; 

int FUNC9(struct mv_cesa_engine *engine, u32 status)
{
	struct crypto_async_request *req = NULL;
	struct mv_cesa_tdma_desc *tdma = NULL, *next = NULL;
	dma_addr_t tdma_cur;
	int res = 0;

	tdma_cur = FUNC3(engine->regs + CESA_TDMA_CUR);

	for (tdma = engine->chain.first; tdma; tdma = next) {
		FUNC4(&engine->lock);
		next = tdma->next;
		FUNC5(&engine->lock);

		if (tdma->flags & CESA_TDMA_END_OF_REQ) {
			struct crypto_async_request *backlog = NULL;
			struct mv_cesa_ctx *ctx;
			u32 current_status;

			FUNC4(&engine->lock);
			/*
			 * if req is NULL, this means we're processing the
			 * request in engine->req.
			 */
			if (!req)
				req = engine->req;
			else
				req = FUNC1(engine,
								 &backlog);

			/* Re-chaining to the next request */
			engine->chain.first = tdma->next;
			tdma->next = NULL;

			/* If this is the last request, clear the chain */
			if (engine->chain.first == NULL)
				engine->chain.last  = NULL;
			FUNC5(&engine->lock);

			ctx = FUNC0(req->tfm);
			current_status = (tdma->cur_dma == tdma_cur) ?
					  status : CESA_SA_INT_ACC0_IDMA_DONE;
			res = ctx->ops->process(req, current_status);
			ctx->ops->complete(req);

			if (res == 0)
				FUNC2(engine,
									req);

			if (backlog)
				backlog->complete(backlog, -EINPROGRESS);
		}

		if (res || tdma->cur_dma == tdma_cur)
			break;
	}

	/* Save the last request in error to engine->req, so that the core
	 * knows which request was fautly */
	if (res) {
		FUNC4(&engine->lock);
		engine->req = req;
		FUNC5(&engine->lock);
	}

	return res;
}