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
struct mv_cesa_req {struct mv_cesa_engine* engine; } ;
struct mv_cesa_engine {int /*<<< orphan*/  lock; int /*<<< orphan*/  queue; } ;
struct crypto_async_request {int dummy; } ;

/* Variables and functions */
 scalar_t__ CESA_DMA_REQ ; 
 int EBUSY ; 
 int EINPROGRESS ; 
 int FUNC0 (int /*<<< orphan*/ *,struct crypto_async_request*) ; 
 int /*<<< orphan*/  FUNC1 (struct mv_cesa_engine*) ; 
 scalar_t__ FUNC2 (struct mv_cesa_req*) ; 
 int /*<<< orphan*/  FUNC3 (struct mv_cesa_engine*,struct mv_cesa_req*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

int FUNC6(struct crypto_async_request *req,
		      struct mv_cesa_req *creq)
{
	int ret;
	struct mv_cesa_engine *engine = creq->engine;

	FUNC4(&engine->lock);
	ret = FUNC0(&engine->queue, req);
	if ((FUNC2(creq) == CESA_DMA_REQ) &&
	    (ret == -EINPROGRESS || ret == -EBUSY))
		FUNC3(engine, creq);
	FUNC5(&engine->lock);

	if (ret != -EINPROGRESS)
		return ret;

	FUNC1(engine);

	return -EINPROGRESS;
}