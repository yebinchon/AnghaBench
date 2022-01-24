#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct skcipher_request {int /*<<< orphan*/  cryptlen; int /*<<< orphan*/  dst; int /*<<< orphan*/  src; } ;
struct mv_cesa_skcipher_req {scalar_t__ src_nents; scalar_t__ dst_nents; } ;
struct mv_cesa_op_ctx {int dummy; } ;
struct crypto_skcipher {int dummy; } ;
struct TYPE_4__ {TYPE_1__* caps; int /*<<< orphan*/  dev; } ;
struct TYPE_3__ {scalar_t__ has_tdma; } ;

/* Variables and functions */
 int /*<<< orphan*/  CESA_SA_DESC_CFG_OP_CRYPT_ONLY ; 
 int /*<<< orphan*/  CESA_SA_DESC_CFG_OP_MSK ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,unsigned int) ; 
 TYPE_2__* cesa_dev ; 
 unsigned int FUNC1 (struct crypto_skcipher*) ; 
 struct crypto_skcipher* FUNC2 (struct skcipher_request*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int FUNC4 (struct skcipher_request*,struct mv_cesa_op_ctx*) ; 
 int FUNC5 (struct skcipher_request*,struct mv_cesa_op_ctx*) ; 
 int /*<<< orphan*/  FUNC6 (struct mv_cesa_op_ctx*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 void* FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct mv_cesa_skcipher_req* FUNC8 (struct skcipher_request*) ; 

__attribute__((used)) static int FUNC9(struct skcipher_request *req,
				     struct mv_cesa_op_ctx *tmpl)
{
	struct mv_cesa_skcipher_req *creq = FUNC8(req);
	struct crypto_skcipher *tfm = FUNC2(req);
	unsigned int blksize = FUNC1(tfm);
	int ret;

	if (!FUNC0(req->cryptlen, blksize))
		return -EINVAL;

	creq->src_nents = FUNC7(req->src, req->cryptlen);
	if (creq->src_nents < 0) {
		FUNC3(cesa_dev->dev, "Invalid number of src SG");
		return creq->src_nents;
	}
	creq->dst_nents = FUNC7(req->dst, req->cryptlen);
	if (creq->dst_nents < 0) {
		FUNC3(cesa_dev->dev, "Invalid number of dst SG");
		return creq->dst_nents;
	}

	FUNC6(tmpl, CESA_SA_DESC_CFG_OP_CRYPT_ONLY,
			      CESA_SA_DESC_CFG_OP_MSK);

	if (cesa_dev->caps->has_tdma)
		ret = FUNC4(req, tmpl);
	else
		ret = FUNC5(req, tmpl);

	return ret;
}