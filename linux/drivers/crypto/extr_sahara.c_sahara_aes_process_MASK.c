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
struct sahara_dev {int flags; int /*<<< orphan*/  nb_in_sg; int /*<<< orphan*/  in_sg; int /*<<< orphan*/  device; int /*<<< orphan*/  nb_out_sg; int /*<<< orphan*/  out_sg; int /*<<< orphan*/  dma_completion; struct sahara_ctx* ctx; int /*<<< orphan*/  iv_base; int /*<<< orphan*/  total; } ;
struct sahara_ctx {int dummy; } ;
struct sahara_aes_reqctx {int mode; } ;
struct ablkcipher_request {int /*<<< orphan*/  info; int /*<<< orphan*/  dst; int /*<<< orphan*/  src; int /*<<< orphan*/  nbytes; } ;

/* Variables and functions */
 int /*<<< orphan*/  AES_KEYSIZE_128 ; 
 int /*<<< orphan*/  DMA_FROM_DEVICE ; 
 int /*<<< orphan*/  DMA_TO_DEVICE ; 
 int EINVAL ; 
 int ETIMEDOUT ; 
 int FLAGS_CBC ; 
 int FLAGS_MODE_MASK ; 
 int /*<<< orphan*/  SAHARA_TIMEOUT_MS ; 
 struct sahara_aes_reqctx* FUNC0 (struct ablkcipher_request*) ; 
 struct sahara_ctx* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ablkcipher_request*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 struct sahara_dev* dev_ptr ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int FUNC9 (struct sahara_dev*) ; 
 unsigned long FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC11(struct ablkcipher_request *req)
{
	struct sahara_dev *dev = dev_ptr;
	struct sahara_ctx *ctx;
	struct sahara_aes_reqctx *rctx;
	int ret;
	unsigned long timeout;

	/* Request is ready to be dispatched by the device */
	FUNC3(dev->device,
		"dispatch request (nbytes=%d, src=%p, dst=%p)\n",
		req->nbytes, req->src, req->dst);

	/* assign new request to device */
	dev->total = req->nbytes;
	dev->in_sg = req->src;
	dev->out_sg = req->dst;

	rctx = FUNC0(req);
	ctx = FUNC1(FUNC2(req));
	rctx->mode &= FLAGS_MODE_MASK;
	dev->flags = (dev->flags & ~FLAGS_MODE_MASK) | rctx->mode;

	if ((dev->flags & FLAGS_CBC) && req->info)
		FUNC6(dev->iv_base, req->info, AES_KEYSIZE_128);

	/* assign new context to device */
	dev->ctx = ctx;

	FUNC8(&dev->dma_completion);

	ret = FUNC9(dev);
	if (ret)
		return -EINVAL;

	timeout = FUNC10(&dev->dma_completion,
				FUNC7(SAHARA_TIMEOUT_MS));
	if (!timeout) {
		FUNC4(dev->device, "AES timeout\n");
		return -ETIMEDOUT;
	}

	FUNC5(dev->device, dev->out_sg, dev->nb_out_sg,
		DMA_FROM_DEVICE);
	FUNC5(dev->device, dev->in_sg, dev->nb_in_sg,
		DMA_TO_DEVICE);

	return 0;
}