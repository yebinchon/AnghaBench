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
struct rk_crypto_info {int busy; int /*<<< orphan*/  queue_task; int /*<<< orphan*/  lock; int /*<<< orphan*/  queue; } ;
struct crypto_async_request {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,struct crypto_async_request*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct rk_crypto_info *dev,
			      struct crypto_async_request *async_req)
{
	unsigned long flags;
	int ret;

	FUNC1(&dev->lock, flags);
	ret = FUNC0(&dev->queue, async_req);
	if (dev->busy) {
		FUNC2(&dev->lock, flags);
		return ret;
	}
	dev->busy = true;
	FUNC2(&dev->lock, flags);
	FUNC3(&dev->queue_task);

	return ret;
}