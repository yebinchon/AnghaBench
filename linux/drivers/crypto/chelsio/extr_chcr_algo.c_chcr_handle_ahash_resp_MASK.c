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
struct TYPE_7__ {TYPE_1__* pdev; } ;
struct uld_ctx {TYPE_2__ lldi; } ;
struct crypto_ahash {int dummy; } ;
struct cpl_fw6_pld {int dummy; } ;
struct chcr_hctx_per_wr {scalar_t__ processed; int result; scalar_t__ is_sg_map; scalar_t__ isfinal; scalar_t__ dma_addr; int /*<<< orphan*/  dma_len; } ;
struct chcr_dev {int dummy; } ;
struct chcr_ahash_req_ctx {scalar_t__ reqlen; int /*<<< orphan*/  partial_hash; struct chcr_hctx_per_wr hctx_wr; } ;
struct TYPE_8__ {int /*<<< orphan*/  (* complete ) (TYPE_3__*,int) ;} ;
struct ahash_request {scalar_t__ nbytes; TYPE_3__ base; int /*<<< orphan*/  result; } ;
struct TYPE_9__ {struct chcr_dev* dev; } ;
struct TYPE_6__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_TO_DEVICE ; 
 int SHA224_DIGEST_SIZE ; 
 int SHA256_DIGEST_SIZE ; 
 int SHA384_DIGEST_SIZE ; 
 int SHA512_DIGEST_SIZE ; 
 struct uld_ctx* FUNC0 (TYPE_4__*) ; 
 struct chcr_ahash_req_ctx* FUNC1 (struct ahash_request*) ; 
 int FUNC2 (struct ahash_request*) ; 
 int /*<<< orphan*/  FUNC3 (struct chcr_dev*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,struct ahash_request*) ; 
 int FUNC5 (struct crypto_ahash*) ; 
 struct crypto_ahash* FUNC6 (struct ahash_request*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_4__* FUNC8 (struct crypto_ahash*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_3__*,int) ; 

__attribute__((used)) static inline void FUNC11(struct ahash_request *req,
					  unsigned char *input,
					  int err)
{
	struct chcr_ahash_req_ctx *reqctx = FUNC1(req);
	struct chcr_hctx_per_wr *hctx_wr = &reqctx->hctx_wr;
	int digestsize, updated_digestsize;
	struct crypto_ahash *tfm = FUNC6(req);
	struct uld_ctx *u_ctx = FUNC0(FUNC8(tfm));
	struct chcr_dev *dev = FUNC8(tfm)->dev;

	if (input == NULL)
		goto out;
	digestsize = FUNC5(FUNC6(req));
	updated_digestsize = digestsize;
	if (digestsize == SHA224_DIGEST_SIZE)
		updated_digestsize = SHA256_DIGEST_SIZE;
	else if (digestsize == SHA384_DIGEST_SIZE)
		updated_digestsize = SHA512_DIGEST_SIZE;

	if (hctx_wr->dma_addr) {
		FUNC7(&u_ctx->lldi.pdev->dev, hctx_wr->dma_addr,
				 hctx_wr->dma_len, DMA_TO_DEVICE);
		hctx_wr->dma_addr = 0;
	}
	if (hctx_wr->isfinal || ((hctx_wr->processed + reqctx->reqlen) ==
				 req->nbytes)) {
		if (hctx_wr->result == 1) {
			hctx_wr->result = 0;
			FUNC9(req->result, input + sizeof(struct cpl_fw6_pld),
			       digestsize);
		} else {
			FUNC9(reqctx->partial_hash,
			       input + sizeof(struct cpl_fw6_pld),
			       updated_digestsize);

		}
		goto unmap;
	}
	FUNC9(reqctx->partial_hash, input + sizeof(struct cpl_fw6_pld),
	       updated_digestsize);

	err = FUNC2(req);
	if (err)
		goto unmap;
	return;
unmap:
	if (hctx_wr->is_sg_map)
		FUNC4(&u_ctx->lldi.pdev->dev, req);


out:
	FUNC3(dev);
	req->base.complete(&req->base, err);
}