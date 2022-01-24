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
struct skcipher_request {int dummy; } ;
struct TYPE_2__ {struct mv_cesa_engine* engine; } ;
struct mv_cesa_skcipher_req {TYPE_1__ base; } ;
struct mv_cesa_engine {int dummy; } ;
struct crypto_async_request {int dummy; } ;

/* Variables and functions */
 scalar_t__ CESA_DMA_REQ ; 
 scalar_t__ FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (struct skcipher_request*) ; 
 int /*<<< orphan*/  FUNC2 (struct skcipher_request*) ; 
 struct skcipher_request* FUNC3 (struct crypto_async_request*) ; 
 struct mv_cesa_skcipher_req* FUNC4 (struct skcipher_request*) ; 

__attribute__((used)) static inline void FUNC5(struct crypto_async_request *req,
					    struct mv_cesa_engine *engine)
{
	struct skcipher_request *skreq = FUNC3(req);
	struct mv_cesa_skcipher_req *creq = FUNC4(skreq);
	creq->base.engine = engine;

	if (FUNC0(&creq->base) == CESA_DMA_REQ)
		FUNC1(skreq);
	else
		FUNC2(skreq);
}