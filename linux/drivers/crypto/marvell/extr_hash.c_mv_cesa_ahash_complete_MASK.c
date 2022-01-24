#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_6__ ;
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct mv_cesa_engine {int /*<<< orphan*/  load; scalar_t__ regs; } ;
struct TYPE_11__ {TYPE_4__* last; } ;
struct TYPE_12__ {TYPE_5__ chain; struct mv_cesa_engine* engine; } ;
struct mv_cesa_ahash_req {void** state; scalar_t__ algo_le; scalar_t__ last_req; TYPE_6__ base; } ;
struct crypto_async_request {int dummy; } ;
struct ahash_request {int /*<<< orphan*/  nbytes; scalar_t__ result; } ;
typedef  void* __le32 ;
typedef  int /*<<< orphan*/  __be32 ;
struct TYPE_10__ {int flags; TYPE_3__* op; } ;
struct TYPE_7__ {void** hash; } ;
struct TYPE_8__ {TYPE_1__ hash; } ;
struct TYPE_9__ {TYPE_2__ ctx; } ;

/* Variables and functions */
 scalar_t__ CESA_DMA_REQ ; 
 scalar_t__ FUNC0 (int) ; 
 int CESA_TDMA_RESULT ; 
 int CESA_TDMA_TYPE_MSK ; 
 struct ahash_request* FUNC1 (struct crypto_async_request*) ; 
 struct mv_cesa_ahash_req* FUNC2 (struct ahash_request*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (void*) ; 
 void* FUNC5 (void*) ; 
 unsigned int FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct ahash_request*) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__,void**,unsigned int) ; 
 scalar_t__ FUNC9 (TYPE_6__*) ; 
 void* FUNC10 (scalar_t__) ; 

__attribute__((used)) static void FUNC11(struct crypto_async_request *req)
{
	struct ahash_request *ahashreq = FUNC1(req);
	struct mv_cesa_ahash_req *creq = FUNC2(ahashreq);
	struct mv_cesa_engine *engine = creq->base.engine;
	unsigned int digsize;
	int i;

	digsize = FUNC6(FUNC7(ahashreq));

	if (FUNC9(&creq->base) == CESA_DMA_REQ &&
	    (creq->base.chain.last->flags & CESA_TDMA_TYPE_MSK) == CESA_TDMA_RESULT) {
		__le32 *data = NULL;

		/*
		 * Result is already in the correct endianess when the SA is
		 * used
		 */
		data = creq->base.chain.last->op->ctx.hash.hash;
		for (i = 0; i < digsize / 4; i++)
			creq->state[i] = FUNC5(data[i]);

		FUNC8(ahashreq->result, data, digsize);
	} else {
		for (i = 0; i < digsize / 4; i++)
			creq->state[i] = FUNC10(engine->regs +
						       FUNC0(i));
		if (creq->last_req) {
			/*
			* Hardware's MD5 digest is in little endian format, but
			* SHA in big endian format
			*/
			if (creq->algo_le) {
				__le32 *result = (void *)ahashreq->result;

				for (i = 0; i < digsize / 4; i++)
					result[i] = FUNC5(creq->state[i]);
			} else {
				__be32 *result = (void *)ahashreq->result;

				for (i = 0; i < digsize / 4; i++)
					result[i] = FUNC4(creq->state[i]);
			}
		}
	}

	FUNC3(ahashreq->nbytes, &engine->load);
}