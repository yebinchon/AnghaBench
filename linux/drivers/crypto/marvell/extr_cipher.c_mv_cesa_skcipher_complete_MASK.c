#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct skcipher_request {int /*<<< orphan*/  iv; int /*<<< orphan*/  cryptlen; } ;
struct TYPE_10__ {TYPE_4__* last; } ;
struct mv_cesa_req {TYPE_5__ chain; struct mv_cesa_engine* engine; } ;
struct mv_cesa_skcipher_req {struct mv_cesa_req base; } ;
struct mv_cesa_engine {scalar_t__ sram; int /*<<< orphan*/  load; } ;
struct crypto_async_request {int dummy; } ;
struct TYPE_9__ {TYPE_3__* op; } ;
struct TYPE_6__ {int /*<<< orphan*/  iv; } ;
struct TYPE_7__ {TYPE_1__ blkcipher; } ;
struct TYPE_8__ {TYPE_2__ ctx; } ;

/* Variables and functions */
 scalar_t__ CESA_DMA_REQ ; 
 scalar_t__ CESA_SA_CRYPT_IV_SRAM_OFFSET ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 unsigned int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct skcipher_request*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,scalar_t__,unsigned int) ; 
 scalar_t__ FUNC5 (struct mv_cesa_req*) ; 
 struct skcipher_request* FUNC6 (struct crypto_async_request*) ; 
 struct mv_cesa_skcipher_req* FUNC7 (struct skcipher_request*) ; 

__attribute__((used)) static void
FUNC8(struct crypto_async_request *req)
{
	struct skcipher_request *skreq = FUNC6(req);
	struct mv_cesa_skcipher_req *creq = FUNC7(skreq);
	struct mv_cesa_engine *engine = creq->base.engine;
	unsigned int ivsize;

	FUNC0(skreq->cryptlen, &engine->load);
	ivsize = FUNC1(FUNC2(skreq));

	if (FUNC5(&creq->base) == CESA_DMA_REQ) {
		struct mv_cesa_req *basereq;

		basereq = &creq->base;
		FUNC3(skreq->iv, basereq->chain.last->op->ctx.blkcipher.iv,
		       ivsize);
	} else {
		FUNC4(skreq->iv,
			      engine->sram + CESA_SA_CRYPT_IV_SRAM_OFFSET,
			      ivsize);
	}
}