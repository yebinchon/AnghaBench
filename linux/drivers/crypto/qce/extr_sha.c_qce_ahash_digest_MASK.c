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
struct qce_sha_reqctx {int first_blk; int last_blk; int /*<<< orphan*/  nbytes_orig; int /*<<< orphan*/  src_orig; } ;
struct qce_device {int (* async_req_enqueue ) (struct qce_device*,TYPE_1__*) ;} ;
struct qce_alg_template {struct qce_device* qce; } ;
struct TYPE_2__ {int /*<<< orphan*/  tfm; } ;
struct ahash_request {TYPE_1__ base; int /*<<< orphan*/  nbytes; int /*<<< orphan*/  src; } ;

/* Variables and functions */
 struct qce_sha_reqctx* FUNC0 (struct ahash_request*) ; 
 int FUNC1 (struct ahash_request*) ; 
 int FUNC2 (struct qce_device*,TYPE_1__*) ; 
 struct qce_alg_template* FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct ahash_request *req)
{
	struct qce_sha_reqctx *rctx = FUNC0(req);
	struct qce_alg_template *tmpl = FUNC3(req->base.tfm);
	struct qce_device *qce = tmpl->qce;
	int ret;

	ret = FUNC1(req);
	if (ret)
		return ret;

	rctx->src_orig = req->src;
	rctx->nbytes_orig = req->nbytes;
	rctx->first_blk = true;
	rctx->last_blk = true;

	return qce->async_req_enqueue(tmpl->qce, &req->base);
}