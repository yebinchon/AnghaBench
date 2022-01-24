#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct device {int dummy; } ;
struct crypto_aead {int dummy; } ;
struct chcr_aead_reqctx {scalar_t__ iv_dma; scalar_t__ b0_dma; scalar_t__ b0_len; int /*<<< orphan*/  iv; } ;
struct aead_request {unsigned int assoclen; unsigned int cryptlen; scalar_t__ src; scalar_t__ dst; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_BIDIRECTIONAL ; 
 int /*<<< orphan*/  DMA_FROM_DEVICE ; 
 int /*<<< orphan*/  DMA_TO_DEVICE ; 
 int ENOMEM ; 
 scalar_t__ IV ; 
 struct chcr_aead_reqctx* FUNC0 (struct aead_request*) ; 
 unsigned int FUNC1 (struct crypto_aead*) ; 
 struct crypto_aead* FUNC2 (struct aead_request*) ; 
 int FUNC3 (struct device*,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct device*,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (struct device*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (struct device*,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct device*,scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__) ; 

int FUNC9(struct device *dev,
		      struct aead_request *req,
		      unsigned short op_type)
{
	int error;
	struct chcr_aead_reqctx  *reqctx = FUNC0(req);
	struct crypto_aead *tfm = FUNC2(req);
	unsigned int authsize = FUNC1(tfm);
	int dst_size;

	dst_size = req->assoclen + req->cryptlen + (op_type ?
				-authsize : authsize);
	if (!req->cryptlen || !dst_size)
		return 0;
	reqctx->iv_dma = FUNC4(dev, reqctx->iv, (IV + reqctx->b0_len),
					DMA_BIDIRECTIONAL);
	if (FUNC5(dev, reqctx->iv_dma))
		return -ENOMEM;
	if (reqctx->b0_len)
		reqctx->b0_dma = reqctx->iv_dma + IV;
	else
		reqctx->b0_dma = 0;
	if (req->src == req->dst) {
		error = FUNC3(dev, req->src, FUNC8(req->src),
				   DMA_BIDIRECTIONAL);
		if (!error)
			goto err;
	} else {
		error = FUNC3(dev, req->src, FUNC8(req->src),
				   DMA_TO_DEVICE);
		if (!error)
			goto err;
		error = FUNC3(dev, req->dst, FUNC8(req->dst),
				   DMA_FROM_DEVICE);
		if (!error) {
			FUNC6(dev, req->src, FUNC8(req->src),
				   DMA_TO_DEVICE);
			goto err;
		}
	}

	return 0;
err:
	FUNC7(dev, reqctx->iv_dma, IV, DMA_BIDIRECTIONAL);
	return -ENOMEM;
}