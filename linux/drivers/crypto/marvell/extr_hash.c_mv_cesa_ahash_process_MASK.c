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
struct mv_cesa_ahash_req {int /*<<< orphan*/  base; } ;
struct crypto_async_request {int dummy; } ;
struct ahash_request {int dummy; } ;

/* Variables and functions */
 scalar_t__ CESA_DMA_REQ ; 
 struct ahash_request* FUNC0 (struct crypto_async_request*) ; 
 struct mv_cesa_ahash_req* FUNC1 (struct ahash_request*) ; 
 int FUNC2 (struct ahash_request*,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct crypto_async_request *req, u32 status)
{
	struct ahash_request *ahashreq = FUNC0(req);
	struct mv_cesa_ahash_req *creq = FUNC1(ahashreq);

	if (FUNC4(&creq->base) == CESA_DMA_REQ)
		return FUNC3(&creq->base, status);

	return FUNC2(ahashreq, status);
}