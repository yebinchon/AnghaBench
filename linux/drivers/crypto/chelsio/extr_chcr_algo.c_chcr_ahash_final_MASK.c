#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u8 ;
struct TYPE_7__ {int /*<<< orphan*/ * ports; } ;
struct uld_ctx {TYPE_2__ lldi; } ;
struct sk_buff {int /*<<< orphan*/  dev; } ;
struct TYPE_9__ {int /*<<< orphan*/  result_size; } ;
struct hash_wr_param {int opad_needed; scalar_t__ sg_len; int kctx_len; scalar_t__ bfr_len; int last; int more; scalar_t__ scmd1; int /*<<< orphan*/  hash_size; TYPE_4__ alg_prm; } ;
struct crypto_ahash {int dummy; } ;
struct chcr_dev {int dummy; } ;
struct TYPE_6__ {int isfinal; int result; int /*<<< orphan*/  srcsg; } ;
struct chcr_ahash_req_ctx {scalar_t__ reqlen; scalar_t__ data_len; int /*<<< orphan*/  reqbfr; TYPE_1__ hctx_wr; } ;
struct ahash_request {int /*<<< orphan*/  src; } ;
struct TYPE_8__ {int /*<<< orphan*/  tx_qidx; struct chcr_dev* dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  CPL_PRIORITY_DATA ; 
 int EINPROGRESS ; 
 int EINVAL ; 
 int ENXIO ; 
 scalar_t__ FUNC0 (struct sk_buff*) ; 
 int FUNC1 (struct sk_buff*) ; 
 struct uld_ctx* FUNC2 (TYPE_3__*) ; 
 struct chcr_ahash_req_ctx* FUNC3 (struct ahash_request*) ; 
 int /*<<< orphan*/  FUNC4 (struct chcr_dev*) ; 
 int FUNC5 (struct chcr_dev*) ; 
 int /*<<< orphan*/  FUNC6 (struct chcr_ahash_req_ctx*) ; 
 int /*<<< orphan*/  FUNC7 (struct sk_buff*) ; 
 struct sk_buff* FUNC8 (struct ahash_request*,struct hash_wr_param*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (struct crypto_ahash*) ; 
 struct crypto_ahash* FUNC11 (struct ahash_request*) ; 
 int /*<<< orphan*/  FUNC12 (struct crypto_ahash*) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC15 (struct crypto_ahash*) ; 
 scalar_t__ FUNC16 (int /*<<< orphan*/ ) ; 
 int FUNC17 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC18 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC19(struct ahash_request *req)
{
	struct chcr_ahash_req_ctx *req_ctx = FUNC3(req);
	struct crypto_ahash *rtfm = FUNC11(req);
	struct chcr_dev *dev = FUNC15(rtfm)->dev;
	struct hash_wr_param params;
	struct sk_buff *skb;
	struct uld_ctx *u_ctx = NULL;
	u8 bs = FUNC13(FUNC12(rtfm));
	int error = -EINVAL;

	error = FUNC5(dev);
	if (error)
		return -ENXIO;

	FUNC6(req_ctx);
	u_ctx = FUNC2(FUNC15(rtfm));
	if (FUNC16(FUNC12(rtfm)))
		params.opad_needed = 1;
	else
		params.opad_needed = 0;
	params.sg_len = 0;
	req_ctx->hctx_wr.isfinal = 1;
	FUNC14(&params.alg_prm, FUNC10(rtfm));
	params.kctx_len = FUNC17(params.alg_prm.result_size, 16);
	if (FUNC16(FUNC12(rtfm))) {
		params.opad_needed = 1;
		params.kctx_len *= 2;
	} else {
		params.opad_needed = 0;
	}

	req_ctx->hctx_wr.result = 1;
	params.bfr_len = req_ctx->reqlen;
	req_ctx->data_len += params.bfr_len + params.sg_len;
	req_ctx->hctx_wr.srcsg = req->src;
	if (req_ctx->reqlen == 0) {
		FUNC9(req_ctx->reqbfr, bs, req_ctx->data_len);
		params.last = 0;
		params.more = 1;
		params.scmd1 = 0;
		params.bfr_len = bs;

	} else {
		params.scmd1 = req_ctx->data_len;
		params.last = 1;
		params.more = 0;
	}
	params.hash_size = FUNC10(rtfm);
	skb = FUNC8(req, &params);
	if (FUNC0(skb)) {
		error = FUNC1(skb);
		goto err;
	}
	req_ctx->reqlen = 0;
	skb->dev = u_ctx->lldi.ports[0];
	FUNC18(skb, CPL_PRIORITY_DATA, FUNC15(rtfm)->tx_qidx);
	FUNC7(skb);
	return -EINPROGRESS;
err:
	FUNC4(dev);
	return error;
}