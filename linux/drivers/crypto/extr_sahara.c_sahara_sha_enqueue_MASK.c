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
struct sahara_sha_reqctx {int last; int active; int first; } ;
struct sahara_dev {int /*<<< orphan*/  kthread; int /*<<< orphan*/  queue_mutex; int /*<<< orphan*/  queue; } ;
struct ahash_request {int /*<<< orphan*/  base; int /*<<< orphan*/  nbytes; } ;

/* Variables and functions */
 struct sahara_sha_reqctx* FUNC0 (struct ahash_request*) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct sahara_dev* dev_ptr ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct ahash_request *req, int last)
{
	struct sahara_sha_reqctx *rctx = FUNC0(req);
	struct sahara_dev *dev = dev_ptr;
	int ret;

	if (!req->nbytes && !last)
		return 0;

	rctx->last = last;

	if (!rctx->active) {
		rctx->active = 1;
		rctx->first = 1;
	}

	FUNC2(&dev->queue_mutex);
	ret = FUNC1(&dev->queue, &req->base);
	FUNC3(&dev->queue_mutex);

	FUNC4(dev->kthread);

	return ret;
}