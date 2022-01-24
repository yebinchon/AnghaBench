#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_6__ ;
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u8 ;
struct TYPE_11__ {TYPE_3__* pdev; int /*<<< orphan*/ * ports; } ;
struct uld_ctx {TYPE_4__ lldi; } ;
struct sk_buff {int /*<<< orphan*/  dev; } ;
struct TYPE_13__ {int /*<<< orphan*/  result_size; } ;
struct hash_wr_param {int kctx_len; int opad_needed; scalar_t__ sg_len; int last; int more; scalar_t__ scmd1; scalar_t__ bfr_len; int /*<<< orphan*/  hash_size; TYPE_6__ alg_prm; } ;
struct crypto_ahash {int /*<<< orphan*/  (* init ) (struct ahash_request*) ;} ;
struct chcr_dev {int dummy; } ;
struct TYPE_9__ {int result; int /*<<< orphan*/  processed; int /*<<< orphan*/  srcsg; } ;
struct chcr_ahash_req_ctx {scalar_t__ data_len; TYPE_2__ hctx_wr; int /*<<< orphan*/  reqbfr; int /*<<< orphan*/  reqlen; } ;
struct TYPE_8__ {int flags; } ;
struct ahash_request {scalar_t__ nbytes; int /*<<< orphan*/  src; TYPE_1__ base; } ;
struct TYPE_12__ {int /*<<< orphan*/  tx_qidx; struct chcr_dev* dev; } ;
struct TYPE_10__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  CPL_PRIORITY_DATA ; 
 int CRYPTO_TFM_REQ_MAY_BACKLOG ; 
 int EBUSY ; 
 int EINPROGRESS ; 
 int ENOMEM ; 
 int ENOSPC ; 
 int ENXIO ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (struct sk_buff*) ; 
 int FUNC2 (struct sk_buff*) ; 
 struct uld_ctx* FUNC3 (TYPE_5__*) ; 
 struct chcr_ahash_req_ctx* FUNC4 (struct ahash_request*) ; 
 int /*<<< orphan*/  FUNC5 (struct chcr_dev*) ; 
 int FUNC6 (int /*<<< orphan*/ *,struct ahash_request*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,struct ahash_request*) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC9 (struct chcr_dev*) ; 
 int /*<<< orphan*/  FUNC10 (struct chcr_ahash_req_ctx*) ; 
 int /*<<< orphan*/  FUNC11 (struct sk_buff*) ; 
 struct sk_buff* FUNC12 (struct ahash_request*,struct hash_wr_param*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct crypto_ahash*) ; 
 struct crypto_ahash* FUNC15 (struct ahash_request*) ; 
 int /*<<< orphan*/  FUNC16 (struct crypto_ahash*) ; 
 scalar_t__ FUNC17 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (TYPE_6__*,int /*<<< orphan*/ ) ; 
 TYPE_5__* FUNC20 (struct crypto_ahash*) ; 
 scalar_t__ FUNC21 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC22 (scalar_t__,scalar_t__) ; 
 int FUNC23 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC24 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC25 (struct ahash_request*) ; 
 scalar_t__ FUNC26 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC27(struct ahash_request *req)
{
	struct chcr_ahash_req_ctx *req_ctx = FUNC4(req);
	struct crypto_ahash *rtfm = FUNC15(req);
	struct chcr_dev *dev = FUNC20(rtfm)->dev;
	struct uld_ctx *u_ctx = NULL;
	struct sk_buff *skb;
	struct hash_wr_param params;
	u8  bs;
	int error, isfull = 0;

	rtfm->init(req);
	bs = FUNC17(FUNC16(rtfm));
	error = FUNC9(dev);
	if (error)
		return -ENXIO;

	u_ctx = FUNC3(FUNC20(rtfm));
	if (FUNC26(FUNC18(u_ctx->lldi.ports[0],
					    FUNC20(rtfm)->tx_qidx))) {
		isfull = 1;
		if (!(req->base.flags & CRYPTO_TFM_REQ_MAY_BACKLOG)) {
			error = -ENOSPC;
			goto err;
		}
	}

	FUNC10(req_ctx);
	error = FUNC6(&u_ctx->lldi.pdev->dev, req);
	if (error) {
		error = -ENOMEM;
		goto err;
	}

	FUNC19(&params.alg_prm, FUNC14(rtfm));
	params.kctx_len = FUNC23(params.alg_prm.result_size, 16);
	if (FUNC21(FUNC16(rtfm))) {
		params.kctx_len *= 2;
		params.opad_needed = 1;
	} else {
		params.opad_needed = 0;
	}
	params.sg_len = FUNC8(req->src, !!req_ctx->reqlen,
				FUNC0(params.kctx_len), 0);
	if (params.sg_len < req->nbytes) {
		if (FUNC21(FUNC16(rtfm))) {
			params.kctx_len /= 2;
			params.opad_needed = 0;
		}
		params.last = 0;
		params.more = 1;
		params.scmd1 = 0;
		params.sg_len = FUNC22(params.sg_len, bs);
		params.hash_size = params.alg_prm.result_size;
	} else {
		params.sg_len = req->nbytes;
		params.hash_size = FUNC14(rtfm);
		params.last = 1;
		params.more = 0;
		params.scmd1 = req->nbytes + req_ctx->data_len;

	}
	params.bfr_len = 0;
	req_ctx->hctx_wr.result = 1;
	req_ctx->hctx_wr.srcsg = req->src;
	req_ctx->data_len += params.bfr_len + params.sg_len;

	if (req->nbytes == 0) {
		FUNC13(req_ctx->reqbfr, bs, 0);
		params.more = 1;
		params.bfr_len = bs;
	}

	skb = FUNC12(req, &params);
	if (FUNC1(skb)) {
		error = FUNC2(skb);
		goto unmap;
	}
	req_ctx->hctx_wr.processed += params.sg_len;
	skb->dev = u_ctx->lldi.ports[0];
	FUNC24(skb, CPL_PRIORITY_DATA, FUNC20(rtfm)->tx_qidx);
	FUNC11(skb);
	return isfull ? -EBUSY : -EINPROGRESS;
unmap:
	FUNC7(&u_ctx->lldi.pdev->dev, req);
err:
	FUNC5(dev);
	return error;
}