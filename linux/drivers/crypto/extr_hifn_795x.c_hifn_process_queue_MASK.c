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
struct hifn_device {scalar_t__ started; int /*<<< orphan*/  lock; int /*<<< orphan*/  queue; } ;
struct crypto_async_request {int /*<<< orphan*/  (* complete ) (struct crypto_async_request*,int /*<<< orphan*/ ) ;} ;
struct ablkcipher_request {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  EINPROGRESS ; 
 scalar_t__ HIFN_QUEUE_LENGTH ; 
 struct ablkcipher_request* FUNC0 (struct crypto_async_request*) ; 
 struct crypto_async_request* FUNC1 (int /*<<< orphan*/ *) ; 
 struct crypto_async_request* FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (struct ablkcipher_request*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (struct crypto_async_request*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct hifn_device *dev)
{
	struct crypto_async_request *async_req, *backlog;
	struct ablkcipher_request *req;
	unsigned long flags;
	int err = 0;

	while (dev->started < HIFN_QUEUE_LENGTH) {
		FUNC4(&dev->lock, flags);
		backlog = FUNC2(&dev->queue);
		async_req = FUNC1(&dev->queue);
		FUNC5(&dev->lock, flags);

		if (!async_req)
			break;

		if (backlog)
			backlog->complete(backlog, -EINPROGRESS);

		req = FUNC0(async_req);

		err = FUNC3(req);
		if (err)
			break;
	}

	return err;
}