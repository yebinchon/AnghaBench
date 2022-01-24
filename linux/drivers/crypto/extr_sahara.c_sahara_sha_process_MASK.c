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
struct sahara_sha_reqctx {int /*<<< orphan*/  digest_size; scalar_t__ context; int /*<<< orphan*/  context_size; scalar_t__ sg_in_idx; scalar_t__ first; } ;
struct sahara_dev {scalar_t__ context_base; int /*<<< orphan*/  nb_in_sg; int /*<<< orphan*/  in_sg; int /*<<< orphan*/  device; int /*<<< orphan*/  dma_completion; scalar_t__* hw_phys_desc; TYPE_1__** hw_desc; } ;
struct ahash_request {scalar_t__ result; } ;
struct TYPE_2__ {scalar_t__ next; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_TO_DEVICE ; 
 int ETIMEDOUT ; 
 int /*<<< orphan*/  SAHARA_REG_DAR ; 
 int /*<<< orphan*/  SAHARA_TIMEOUT_MS ; 
 struct sahara_sha_reqctx* FUNC0 (struct ahash_request*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 struct sahara_dev* dev_ptr ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct sahara_dev*) ; 
 int /*<<< orphan*/  FUNC7 (struct sahara_dev*) ; 
 int /*<<< orphan*/  FUNC8 (struct sahara_dev*,struct sahara_sha_reqctx*,struct ahash_request*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct sahara_dev*,struct sahara_sha_reqctx*,struct ahash_request*,int) ; 
 int FUNC10 (struct ahash_request*) ; 
 int /*<<< orphan*/  FUNC11 (struct sahara_dev*,scalar_t__,int /*<<< orphan*/ ) ; 
 unsigned long FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC13(struct ahash_request *req)
{
	struct sahara_dev *dev = dev_ptr;
	struct sahara_sha_reqctx *rctx = FUNC0(req);
	int ret;
	unsigned long timeout;

	ret = FUNC10(req);
	if (!ret)
		return ret;

	if (rctx->first) {
		FUNC9(dev, rctx, req, 0);
		dev->hw_desc[0]->next = 0;
		rctx->first = 0;
	} else {
		FUNC3(dev->context_base, rctx->context, rctx->context_size);

		FUNC8(dev, rctx, req, 0);
		dev->hw_desc[0]->next = dev->hw_phys_desc[1];
		FUNC9(dev, rctx, req, 1);
		dev->hw_desc[1]->next = 0;
	}

	FUNC6(dev);
	FUNC7(dev);

	FUNC5(&dev->dma_completion);

	FUNC11(dev, dev->hw_phys_desc[0], SAHARA_REG_DAR);

	timeout = FUNC12(&dev->dma_completion,
				FUNC4(SAHARA_TIMEOUT_MS));
	if (!timeout) {
		FUNC1(dev->device, "SHA timeout\n");
		return -ETIMEDOUT;
	}

	if (rctx->sg_in_idx)
		FUNC2(dev->device, dev->in_sg, dev->nb_in_sg,
			     DMA_TO_DEVICE);

	FUNC3(rctx->context, dev->context_base, rctx->context_size);

	if (req->result)
		FUNC3(req->result, rctx->context, rctx->digest_size);

	return 0;
}