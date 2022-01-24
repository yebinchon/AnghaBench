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
struct omap_aes_reqctx {int mode; struct omap_aes_dev* dd; } ;
struct omap_aes_dev {int flags; struct aead_request* aead_req; struct omap_aes_ctx* ctx; int /*<<< orphan*/  lock; int /*<<< orphan*/  aead_queue; } ;
struct omap_aes_ctx {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* complete ) (TYPE_1__*,int /*<<< orphan*/ ) ;} ;
struct aead_request {TYPE_1__ base; } ;

/* Variables and functions */
 int /*<<< orphan*/  EINPROGRESS ; 
 int FLAGS_BUSY ; 
 int FLAGS_MODE_MASK ; 
 struct aead_request* FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *,struct aead_request*) ; 
 struct aead_request* FUNC2 (int /*<<< orphan*/ *) ; 
 struct omap_aes_reqctx* FUNC3 (struct aead_request*) ; 
 struct omap_aes_ctx* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct aead_request*) ; 
 int FUNC6 (struct omap_aes_dev*) ; 
 int FUNC7 (struct omap_aes_dev*,struct aead_request*) ; 
 int /*<<< orphan*/  FUNC8 (struct omap_aes_dev*,int) ; 
 int FUNC9 (struct omap_aes_dev*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_1__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC13(struct omap_aes_dev *dd,
				     struct aead_request *req)
{
	struct omap_aes_ctx *ctx;
	struct aead_request *backlog;
	struct omap_aes_reqctx *rctx;
	unsigned long flags;
	int err, ret = 0;

	FUNC10(&dd->lock, flags);
	if (req)
		ret = FUNC1(&dd->aead_queue, req);
	if (dd->flags & FLAGS_BUSY) {
		FUNC11(&dd->lock, flags);
		return ret;
	}

	backlog = FUNC2(&dd->aead_queue);
	req = FUNC0(&dd->aead_queue);
	if (req)
		dd->flags |= FLAGS_BUSY;
	FUNC11(&dd->lock, flags);

	if (!req)
		return ret;

	if (backlog)
		backlog->base.complete(&backlog->base, -EINPROGRESS);

	ctx = FUNC4(FUNC5(req));
	rctx = FUNC3(req);

	dd->ctx = ctx;
	rctx->dd = dd;
	dd->aead_req = req;

	rctx->mode &= FLAGS_MODE_MASK;
	dd->flags = (dd->flags & ~FLAGS_MODE_MASK) | rctx->mode;

	err = FUNC7(dd, req);
	if (err)
		return err;

	err = FUNC9(dd);
	if (!err)
		err = FUNC6(dd);

	if (err) {
		FUNC8(dd, err);
		FUNC13(dd, NULL);
	}

	return ret;
}