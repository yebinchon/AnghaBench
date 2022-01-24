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
struct qce_device {int result; int /*<<< orphan*/  done_tasklet; int /*<<< orphan*/  lock; struct crypto_async_request* req; int /*<<< orphan*/  queue; } ;
struct crypto_async_request {int /*<<< orphan*/  (* complete ) (struct crypto_async_request*,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  EINPROGRESS ; 
 struct crypto_async_request* FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *,struct crypto_async_request*) ; 
 struct crypto_async_request* FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (struct crypto_async_request*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (struct crypto_async_request*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC10(struct qce_device *qce,
			    struct crypto_async_request *req)
{
	struct crypto_async_request *async_req, *backlog;
	unsigned long flags;
	int ret = 0, err;

	FUNC5(&qce->lock, flags);

	if (req)
		ret = FUNC1(&qce->queue, req);

	/* busy, do not dequeue request */
	if (qce->req) {
		FUNC7(&qce->lock, flags);
		return ret;
	}

	backlog = FUNC2(&qce->queue);
	async_req = FUNC0(&qce->queue);
	if (async_req)
		qce->req = async_req;

	FUNC7(&qce->lock, flags);

	if (!async_req)
		return ret;

	if (backlog) {
		FUNC4(&qce->lock);
		backlog->complete(backlog, -EINPROGRESS);
		FUNC6(&qce->lock);
	}

	err = FUNC3(async_req);
	if (err) {
		qce->result = err;
		FUNC9(&qce->done_tasklet);
	}

	return ret;
}