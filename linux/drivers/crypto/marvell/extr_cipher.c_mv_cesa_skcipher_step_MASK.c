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
struct skcipher_request {int dummy; } ;
struct mv_cesa_skcipher_req {int /*<<< orphan*/  base; } ;
struct crypto_async_request {int dummy; } ;

/* Variables and functions */
 scalar_t__ CESA_DMA_REQ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct skcipher_request*) ; 
 struct skcipher_request* FUNC3 (struct crypto_async_request*) ; 
 struct mv_cesa_skcipher_req* FUNC4 (struct skcipher_request*) ; 

__attribute__((used)) static void FUNC5(struct crypto_async_request *req)
{
	struct skcipher_request *skreq = FUNC3(req);
	struct mv_cesa_skcipher_req *creq = FUNC4(skreq);

	if (FUNC1(&creq->base) == CESA_DMA_REQ)
		FUNC0(&creq->base);
	else
		FUNC2(skreq);
}