#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct s5p_aes_reqctx {int /*<<< orphan*/  mode; } ;
struct s5p_aes_dev {int busy; TYPE_2__* req; int /*<<< orphan*/  ctx; int /*<<< orphan*/  lock; int /*<<< orphan*/  queue; } ;
struct crypto_async_request {int /*<<< orphan*/  (* complete ) (struct crypto_async_request*,int /*<<< orphan*/ ) ;} ;
struct TYPE_4__ {int /*<<< orphan*/  tfm; } ;
struct TYPE_5__ {TYPE_1__ base; } ;

/* Variables and functions */
 int /*<<< orphan*/  EINPROGRESS ; 
 TYPE_2__* FUNC0 (struct crypto_async_request*) ; 
 struct s5p_aes_reqctx* FUNC1 (TYPE_2__*) ; 
 struct crypto_async_request* FUNC2 (int /*<<< orphan*/ *) ; 
 struct crypto_async_request* FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct s5p_aes_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (struct crypto_async_request*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC9(unsigned long data)
{
	struct s5p_aes_dev *dev = (struct s5p_aes_dev *)data;
	struct crypto_async_request *async_req, *backlog;
	struct s5p_aes_reqctx *reqctx;
	unsigned long flags;

	FUNC6(&dev->lock, flags);
	backlog   = FUNC3(&dev->queue);
	async_req = FUNC2(&dev->queue);

	if (!async_req) {
		dev->busy = false;
		FUNC7(&dev->lock, flags);
		return;
	}
	FUNC7(&dev->lock, flags);

	if (backlog)
		backlog->complete(backlog, -EINPROGRESS);

	dev->req = FUNC0(async_req);
	dev->ctx = FUNC4(dev->req->base.tfm);
	reqctx   = FUNC1(dev->req);

	FUNC5(dev, reqctx->mode);
}