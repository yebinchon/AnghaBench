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
typedef  int /*<<< orphan*/  u8 ;
typedef  int u32 ;
typedef  int u16 ;
struct scatterlist {int dummy; } ;
struct TYPE_2__ {scalar_t__ has_ctr32; } ;
struct atmel_aes_dev {scalar_t__ total; TYPE_1__ caps; int /*<<< orphan*/  areq; int /*<<< orphan*/  ctx; } ;
struct atmel_aes_ctr_ctx {scalar_t__ offset; int /*<<< orphan*/ * iv; int /*<<< orphan*/  dst; int /*<<< orphan*/  src; } ;
struct ablkcipher_request {scalar_t__ nbytes; int /*<<< orphan*/  dst; int /*<<< orphan*/  src; } ;

/* Variables and functions */
 int AES_BLOCK_SIZE ; 
 size_t ATMEL_AES_DMA_THRESHOLD ; 
 int FUNC0 (size_t,int) ; 
 struct ablkcipher_request* FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct atmel_aes_dev*,struct scatterlist*,struct scatterlist*,size_t,int (*) (struct atmel_aes_dev*)) ; 
 struct atmel_aes_ctr_ctx* FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (struct atmel_aes_dev*,struct scatterlist*,struct scatterlist*,size_t,int (*) (struct atmel_aes_dev*)) ; 
 int FUNC5 (struct atmel_aes_dev*) ; 
 int /*<<< orphan*/  FUNC6 (struct atmel_aes_dev*,int,int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int) ; 
 struct scatterlist* FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t) ; 
 scalar_t__ FUNC11 (int) ; 

__attribute__((used)) static int FUNC12(struct atmel_aes_dev *dd)
{
	struct atmel_aes_ctr_ctx *ctx = FUNC3(dd->ctx);
	struct ablkcipher_request *req = FUNC1(dd->areq);
	struct scatterlist *src, *dst;
	u32 ctr, blocks;
	size_t datalen;
	bool use_dma, fragmented = false;

	/* Check for transfer completion. */
	ctx->offset += dd->total;
	if (ctx->offset >= req->nbytes)
		return FUNC5(dd);

	/* Compute data length. */
	datalen = req->nbytes - ctx->offset;
	blocks = FUNC0(datalen, AES_BLOCK_SIZE);
	ctr = FUNC7(ctx->iv[3]);
	if (dd->caps.has_ctr32) {
		/* Check 32bit counter overflow. */
		u32 start = ctr;
		u32 end = start + blocks - 1;

		if (end < start) {
			ctr |= 0xffffffff;
			datalen = AES_BLOCK_SIZE * -start;
			fragmented = true;
		}
	} else {
		/* Check 16bit counter overflow. */
		u16 start = ctr & 0xffff;
		u16 end = start + (u16)blocks - 1;

		if (blocks >> 16 || end < start) {
			ctr |= 0xffff;
			datalen = AES_BLOCK_SIZE * (0x10000-start);
			fragmented = true;
		}
	}
	use_dma = (datalen >= ATMEL_AES_DMA_THRESHOLD);

	/* Jump to offset. */
	src = FUNC10(ctx->src, req->src, ctx->offset);
	dst = ((req->src == req->dst) ? src :
	       FUNC10(ctx->dst, req->dst, ctx->offset));

	/* Configure hardware. */
	FUNC6(dd, use_dma, ctx->iv);
	if (FUNC11(fragmented)) {
		/*
		 * Increment the counter manually to cope with the hardware
		 * counter overflow.
		 */
		ctx->iv[3] = FUNC8(ctr);
		FUNC9((u8 *)ctx->iv, AES_BLOCK_SIZE);
	}

	if (use_dma)
		return FUNC4(dd, src, dst, datalen,
					   atmel_aes_ctr_transfer);

	return FUNC2(dd, src, dst, datalen,
				   atmel_aes_ctr_transfer);
}