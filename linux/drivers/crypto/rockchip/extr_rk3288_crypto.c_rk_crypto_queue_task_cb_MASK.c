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
struct rk_crypto_info {int busy; int (* start ) (struct rk_crypto_info*) ;struct crypto_async_request* async_req; int /*<<< orphan*/  (* complete ) (struct crypto_async_request*,int) ;int /*<<< orphan*/  lock; int /*<<< orphan*/  queue; int /*<<< orphan*/  err; } ;
struct crypto_async_request {int /*<<< orphan*/  (* complete ) (struct crypto_async_request*,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  EINPROGRESS ; 
 struct crypto_async_request* FUNC0 (int /*<<< orphan*/ *) ; 
 struct crypto_async_request* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (struct crypto_async_request*,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct rk_crypto_info*) ; 
 int /*<<< orphan*/  FUNC6 (struct crypto_async_request*,int) ; 

__attribute__((used)) static void FUNC7(unsigned long data)
{
	struct rk_crypto_info *dev = (struct rk_crypto_info *)data;
	struct crypto_async_request *async_req, *backlog;
	unsigned long flags;
	int err = 0;

	dev->err = 0;
	FUNC2(&dev->lock, flags);
	backlog   = FUNC1(&dev->queue);
	async_req = FUNC0(&dev->queue);

	if (!async_req) {
		dev->busy = false;
		FUNC3(&dev->lock, flags);
		return;
	}
	FUNC3(&dev->lock, flags);

	if (backlog) {
		backlog->complete(backlog, -EINPROGRESS);
		backlog = NULL;
	}

	dev->async_req = async_req;
	err = dev->start(dev);
	if (err)
		dev->complete(dev->async_req, err);
}