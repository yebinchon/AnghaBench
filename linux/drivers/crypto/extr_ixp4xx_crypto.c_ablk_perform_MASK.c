#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct ix_sa_dir {int /*<<< orphan*/  npe_ctx_idx; int /*<<< orphan*/  npe_mode; int /*<<< orphan*/  npe_ctx_phys; } ;
struct ixp_ctx {struct ix_sa_dir decrypt; struct ix_sa_dir encrypt; int /*<<< orphan*/  configuring; } ;
struct device {int dummy; } ;
struct crypto_ablkcipher {int dummy; } ;
struct TYPE_5__ {struct ablkcipher_request* ablk_req; } ;
struct crypt_ctl {unsigned int crypt_len; int /*<<< orphan*/  ctl_flags; int /*<<< orphan*/  dst_buf; int /*<<< orphan*/  src_buf; int /*<<< orphan*/  mode; int /*<<< orphan*/  iv; scalar_t__ crypt_offs; int /*<<< orphan*/  init_len; int /*<<< orphan*/  crypto_ctx; TYPE_2__ data; } ;
struct buffer_desc {int /*<<< orphan*/  phys_next; int /*<<< orphan*/ * next; } ;
struct TYPE_4__ {int flags; } ;
struct ablkcipher_request {unsigned int nbytes; int /*<<< orphan*/  dst; int /*<<< orphan*/  src; int /*<<< orphan*/  info; TYPE_1__ base; } ;
struct ablk_ctx {int /*<<< orphan*/ * dst; int /*<<< orphan*/ * src; } ;
typedef  int /*<<< orphan*/  gfp_t ;
typedef  enum dma_data_direction { ____Placeholder_dma_data_direction } dma_data_direction ;
struct TYPE_6__ {struct device dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int CRYPTO_TFM_REQ_MAY_SLEEP ; 
 int /*<<< orphan*/  CTL_FLAG_PERFORM_ABLK ; 
 int /*<<< orphan*/  CTL_FLAG_UNUSED ; 
 int DMA_BIDIRECTIONAL ; 
 int DMA_FROM_DEVICE ; 
 int DMA_TO_DEVICE ; 
 int EAGAIN ; 
 int EINPROGRESS ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  NPE_OP_NOT_IN_PLACE ; 
 int /*<<< orphan*/  SEND_QID ; 
 struct ablk_ctx* FUNC1 (struct ablkcipher_request*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,int /*<<< orphan*/ ,unsigned int,struct buffer_desc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct crypt_ctl*) ; 
 struct ixp_ctx* FUNC5 (struct crypto_ablkcipher*) ; 
 unsigned int FUNC6 (struct crypto_ablkcipher*) ; 
 struct crypto_ablkcipher* FUNC7 (struct ablkcipher_request*) ; 
 int /*<<< orphan*/  FUNC8 (struct device*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct crypt_ctl* FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int) ; 
 TYPE_3__* pdev ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ) ; 
 int FUNC13 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC14(struct ablkcipher_request *req, int encrypt)
{
	struct crypto_ablkcipher *tfm = FUNC7(req);
	struct ixp_ctx *ctx = FUNC5(tfm);
	unsigned ivsize = FUNC6(tfm);
	struct ix_sa_dir *dir;
	struct crypt_ctl *crypt;
	unsigned int nbytes = req->nbytes;
	enum dma_data_direction src_direction = DMA_BIDIRECTIONAL;
	struct ablk_ctx *req_ctx = FUNC1(req);
	struct buffer_desc src_hook;
	struct device *dev = &pdev->dev;
	gfp_t flags = req->base.flags & CRYPTO_TFM_REQ_MAY_SLEEP ?
				GFP_KERNEL : GFP_ATOMIC;

	if (FUNC12(SEND_QID))
		return -EAGAIN;
	if (FUNC2(&ctx->configuring))
		return -EAGAIN;

	dir = encrypt ? &ctx->encrypt : &ctx->decrypt;

	crypt = FUNC9();
	if (!crypt)
		return -ENOMEM;

	crypt->data.ablk_req = req;
	crypt->crypto_ctx = dir->npe_ctx_phys;
	crypt->mode = dir->npe_mode;
	crypt->init_len = dir->npe_ctx_idx;

	crypt->crypt_offs = 0;
	crypt->crypt_len = nbytes;

	FUNC0(ivsize && !req->info);
	FUNC10(crypt->iv, req->info, ivsize);
	if (req->src != req->dst) {
		struct buffer_desc dst_hook;
		crypt->mode |= NPE_OP_NOT_IN_PLACE;
		/* This was never tested by Intel
		 * for more than one dst buffer, I think. */
		req_ctx->dst = NULL;
		if (!FUNC3(dev, req->dst, nbytes, &dst_hook,
					flags, DMA_FROM_DEVICE))
			goto free_buf_dest;
		src_direction = DMA_TO_DEVICE;
		req_ctx->dst = dst_hook.next;
		crypt->dst_buf = dst_hook.phys_next;
	} else {
		req_ctx->dst = NULL;
	}
	req_ctx->src = NULL;
	if (!FUNC3(dev, req->src, nbytes, &src_hook,
				flags, src_direction))
		goto free_buf_src;

	req_ctx->src = src_hook.next;
	crypt->src_buf = src_hook.phys_next;
	crypt->ctl_flags |= CTL_FLAG_PERFORM_ABLK;
	FUNC11(SEND_QID, FUNC4(crypt));
	FUNC0(FUNC13(SEND_QID));
	return -EINPROGRESS;

free_buf_src:
	FUNC8(dev, req_ctx->src, crypt->src_buf);
free_buf_dest:
	if (req->src != req->dst) {
		FUNC8(dev, req_ctx->dst, crypt->dst_buf);
	}
	crypt->ctl_flags = CTL_FLAG_UNUSED;
	return -ENOMEM;
}