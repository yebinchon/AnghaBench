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
struct atmel_aes_reqctx {int dummy; } ;
struct atmel_aes_dev {TYPE_1__* ctx; int /*<<< orphan*/  areq; } ;
struct ablkcipher_request {scalar_t__ nbytes; int /*<<< orphan*/  dst; int /*<<< orphan*/  src; int /*<<< orphan*/  info; } ;
struct TYPE_2__ {scalar_t__ block_size; } ;

/* Variables and functions */
 scalar_t__ AES_BLOCK_SIZE ; 
 scalar_t__ ATMEL_AES_DMA_THRESHOLD ; 
 struct ablkcipher_request* FUNC0 (int /*<<< orphan*/ ) ; 
 struct atmel_aes_reqctx* FUNC1 (struct ablkcipher_request*) ; 
 int FUNC2 (struct atmel_aes_dev*,int) ; 
 int FUNC3 (struct atmel_aes_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct atmel_aes_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct atmel_aes_dev*) ; 
 int /*<<< orphan*/  FUNC6 (struct atmel_aes_dev*,struct atmel_aes_reqctx*) ; 
 int /*<<< orphan*/  atmel_aes_transfer_complete ; 
 int /*<<< orphan*/  FUNC7 (struct atmel_aes_dev*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(struct atmel_aes_dev *dd)
{
	struct ablkcipher_request *req = FUNC0(dd->areq);
	struct atmel_aes_reqctx *rctx = FUNC1(req);
	bool use_dma = (req->nbytes >= ATMEL_AES_DMA_THRESHOLD ||
			dd->ctx->block_size != AES_BLOCK_SIZE);
	int err;

	FUNC6(dd, rctx);

	err = FUNC5(dd);
	if (err)
		return FUNC2(dd, err);

	FUNC7(dd, use_dma, req->info);
	if (use_dma)
		return FUNC4(dd, req->src, req->dst, req->nbytes,
					   atmel_aes_transfer_complete);

	return FUNC3(dd, req->src, req->dst, req->nbytes,
				   atmel_aes_transfer_complete);
}