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
typedef  unsigned int u8 ;
struct TYPE_11__ {TYPE_3__* pdev; int /*<<< orphan*/ * ports; } ;
struct uld_ctx {TYPE_4__ lldi; } ;
struct sk_buff {int /*<<< orphan*/  dev; } ;
struct TYPE_13__ {int /*<<< orphan*/  result_size; } ;
struct hash_wr_param {unsigned int sg_len; int more; unsigned int bfr_len; TYPE_6__ alg_prm; int /*<<< orphan*/  hash_size; scalar_t__ scmd1; scalar_t__ last; scalar_t__ opad_needed; int /*<<< orphan*/  kctx_len; } ;
struct crypto_ahash {int dummy; } ;
struct chcr_dev {int dummy; } ;
struct TYPE_9__ {unsigned int processed; int /*<<< orphan*/  srcsg; } ;
struct chcr_ahash_req_ctx {unsigned int reqlen; unsigned int data_len; scalar_t__ reqbfr; int /*<<< orphan*/  skbfr; TYPE_2__ hctx_wr; } ;
struct TYPE_8__ {int flags; } ;
struct ahash_request {unsigned int nbytes; int /*<<< orphan*/  src; TYPE_1__ base; } ;
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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct sk_buff*) ; 
 int FUNC2 (struct sk_buff*) ; 
 struct uld_ctx* FUNC3 (TYPE_5__*) ; 
 struct chcr_ahash_req_ctx* FUNC4 (struct ahash_request*) ; 
 int /*<<< orphan*/  FUNC5 (struct chcr_dev*) ; 
 int FUNC6 (int /*<<< orphan*/ *,struct ahash_request*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,struct ahash_request*) ; 
 unsigned int FUNC8 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC9 (struct chcr_dev*) ; 
 int /*<<< orphan*/  FUNC10 (struct chcr_ahash_req_ctx*) ; 
 int /*<<< orphan*/  FUNC11 (struct sk_buff*) ; 
 struct sk_buff* FUNC12 (struct ahash_request*,struct hash_wr_param*) ; 
 int /*<<< orphan*/  FUNC13 (struct crypto_ahash*) ; 
 struct crypto_ahash* FUNC14 (struct ahash_request*) ; 
 int /*<<< orphan*/  FUNC15 (struct crypto_ahash*) ; 
 unsigned int FUNC16 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (TYPE_6__*,int /*<<< orphan*/ ) ; 
 TYPE_5__* FUNC19 (struct crypto_ahash*) ; 
 unsigned int FUNC20 (unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC22 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC25 (scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC26 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC27(struct ahash_request *req)
{
	struct chcr_ahash_req_ctx *req_ctx = FUNC4(req);
	struct crypto_ahash *rtfm = FUNC14(req);
	struct uld_ctx *u_ctx = NULL;
	struct chcr_dev *dev = FUNC19(rtfm)->dev;
	struct sk_buff *skb;
	u8 remainder = 0, bs;
	unsigned int nbytes = req->nbytes;
	struct hash_wr_param params;
	int error, isfull = 0;

	bs = FUNC16(FUNC15(rtfm));
	u_ctx = FUNC3(FUNC19(rtfm));

	if (nbytes + req_ctx->reqlen >= bs) {
		remainder = (nbytes + req_ctx->reqlen) % bs;
		nbytes = nbytes + req_ctx->reqlen - remainder;
	} else {
		FUNC24(req->src, FUNC23(req->src), req_ctx->reqbfr
				   + req_ctx->reqlen, nbytes, 0);
		req_ctx->reqlen += nbytes;
		return 0;
	}
	error = FUNC9(dev);
	if (error)
		return -ENXIO;
	/* Detach state for CHCR means lldi or padap is freed. Increasing
	 * inflight count for dev guarantees that lldi and padap is valid
	 */
	if (FUNC26(FUNC17(u_ctx->lldi.ports[0],
					    FUNC19(rtfm)->tx_qidx))) {
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
	FUNC18(&params.alg_prm, FUNC13(rtfm));
	params.kctx_len = FUNC21(params.alg_prm.result_size, 16);
	params.sg_len = FUNC8(req->src, !!req_ctx->reqlen,
				     FUNC0(params.kctx_len), 0);
	if (params.sg_len > req->nbytes)
		params.sg_len = req->nbytes;
	params.sg_len = FUNC20(params.sg_len + req_ctx->reqlen, bs) -
			req_ctx->reqlen;
	params.opad_needed = 0;
	params.more = 1;
	params.last = 0;
	params.bfr_len = req_ctx->reqlen;
	params.scmd1 = 0;
	req_ctx->hctx_wr.srcsg = req->src;

	params.hash_size = params.alg_prm.result_size;
	req_ctx->data_len += params.sg_len + params.bfr_len;
	skb = FUNC12(req, &params);
	if (FUNC1(skb)) {
		error = FUNC2(skb);
		goto unmap;
	}

	req_ctx->hctx_wr.processed += params.sg_len;
	if (remainder) {
		/* Swap buffers */
		FUNC25(req_ctx->reqbfr, req_ctx->skbfr);
		FUNC24(req->src, FUNC23(req->src),
				   req_ctx->reqbfr, remainder, req->nbytes -
				   remainder);
	}
	req_ctx->reqlen = remainder;
	skb->dev = u_ctx->lldi.ports[0];
	FUNC22(skb, CPL_PRIORITY_DATA, FUNC19(rtfm)->tx_qidx);
	FUNC11(skb);

	return isfull ? -EBUSY : -EINPROGRESS;
unmap:
	FUNC7(&u_ctx->lldi.pdev->dev, req);
err:
	FUNC5(dev);
	return error;
}