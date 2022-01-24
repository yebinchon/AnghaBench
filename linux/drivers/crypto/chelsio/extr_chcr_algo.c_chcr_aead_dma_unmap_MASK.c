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
struct chcr_aead_reqctx {scalar_t__ b0_len; int /*<<< orphan*/  iv_dma; } ;
struct aead_request {unsigned int assoclen; unsigned int cryptlen; scalar_t__ src; scalar_t__ dst; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_BIDIRECTIONAL ; 
 int /*<<< orphan*/  DMA_FROM_DEVICE ; 
 int /*<<< orphan*/  DMA_TO_DEVICE ; 
 scalar_t__ IV ; 
 struct chcr_aead_reqctx* FUNC0 (struct aead_request*) ; 
 unsigned int FUNC1 (struct crypto_aead*) ; 
 struct crypto_aead* FUNC2 (struct aead_request*) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct device*,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 

void FUNC6(struct device *dev,
			 struct aead_request *req,
			 unsigned short op_type)
{
	struct chcr_aead_reqctx  *reqctx = FUNC0(req);
	struct crypto_aead *tfm = FUNC2(req);
	unsigned int authsize = FUNC1(tfm);
	int dst_size;

	dst_size = req->assoclen + req->cryptlen + (op_type ?
					-authsize : authsize);
	if (!req->cryptlen || !dst_size)
		return;

	FUNC4(dev, reqctx->iv_dma, (IV + reqctx->b0_len),
					DMA_BIDIRECTIONAL);
	if (req->src == req->dst) {
		FUNC3(dev, req->src, FUNC5(req->src),
				   DMA_BIDIRECTIONAL);
	} else {
		FUNC3(dev, req->src, FUNC5(req->src),
				   DMA_TO_DEVICE);
		FUNC3(dev, req->dst, FUNC5(req->dst),
				   DMA_FROM_DEVICE);
	}
}