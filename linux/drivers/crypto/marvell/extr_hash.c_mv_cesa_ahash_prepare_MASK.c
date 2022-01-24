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
struct mv_cesa_engine {int dummy; } ;
struct TYPE_2__ {struct mv_cesa_engine* engine; } ;
struct mv_cesa_ahash_req {TYPE_1__ base; } ;
struct crypto_async_request {int dummy; } ;
struct ahash_request {int dummy; } ;

/* Variables and functions */
 scalar_t__ CESA_DMA_REQ ; 
 struct ahash_request* FUNC0 (struct crypto_async_request*) ; 
 struct mv_cesa_ahash_req* FUNC1 (struct ahash_request*) ; 
 int /*<<< orphan*/  FUNC2 (struct ahash_request*) ; 
 int /*<<< orphan*/  FUNC3 (struct ahash_request*) ; 
 scalar_t__ FUNC4 (TYPE_1__*) ; 

__attribute__((used)) static void FUNC5(struct crypto_async_request *req,
				  struct mv_cesa_engine *engine)
{
	struct ahash_request *ahashreq = FUNC0(req);
	struct mv_cesa_ahash_req *creq = FUNC1(ahashreq);

	creq->base.engine = engine;

	if (FUNC4(&creq->base) == CESA_DMA_REQ)
		FUNC2(ahashreq);
	else
		FUNC3(ahashreq);
}