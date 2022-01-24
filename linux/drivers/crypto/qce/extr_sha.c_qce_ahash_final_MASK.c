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
struct qce_sha_reqctx {int last_blk; scalar_t__ buflen; int /*<<< orphan*/  sg; int /*<<< orphan*/  tmpbuf; int /*<<< orphan*/  buf; scalar_t__ nbytes_orig; int /*<<< orphan*/  src_orig; } ;
struct qce_device {int (* async_req_enqueue ) (struct qce_device*,TYPE_1__*) ;} ;
struct qce_alg_template {struct qce_device* qce; } ;
struct TYPE_2__ {int /*<<< orphan*/  tfm; } ;
struct ahash_request {TYPE_1__ base; scalar_t__ nbytes; int /*<<< orphan*/  src; } ;

/* Variables and functions */
 struct qce_sha_reqctx* FUNC0 (struct ahash_request*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int FUNC3 (struct qce_device*,TYPE_1__*) ; 
 struct qce_alg_template* FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct ahash_request *req)
{
	struct qce_sha_reqctx *rctx = FUNC0(req);
	struct qce_alg_template *tmpl = FUNC4(req->base.tfm);
	struct qce_device *qce = tmpl->qce;

	if (!rctx->buflen)
		return 0;

	rctx->last_blk = true;

	rctx->src_orig = req->src;
	rctx->nbytes_orig = req->nbytes;

	FUNC1(rctx->tmpbuf, rctx->buf, rctx->buflen);
	FUNC2(rctx->sg, rctx->tmpbuf, rctx->buflen);

	req->src = rctx->sg;
	req->nbytes = rctx->buflen;

	return qce->async_req_enqueue(tmpl->qce, &req->base);
}