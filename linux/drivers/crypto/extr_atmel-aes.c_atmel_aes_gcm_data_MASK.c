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
typedef  int u32 ;
struct scatterlist {int dummy; } ;
struct atmel_aes_gcm_ctx {scalar_t__ textlen; int /*<<< orphan*/  dst; int /*<<< orphan*/  src; } ;
struct TYPE_2__ {scalar_t__ has_dualbuff; } ;
struct atmel_aes_dev {scalar_t__ datalen; int data; int (* resume ) (struct atmel_aes_dev*) ;TYPE_1__ caps; int /*<<< orphan*/  areq; int /*<<< orphan*/  ctx; } ;
struct aead_request {int /*<<< orphan*/  assoclen; int /*<<< orphan*/  dst; int /*<<< orphan*/  src; } ;

/* Variables and functions */
 scalar_t__ AES_BLOCK_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AES_IER ; 
 int AES_INT_DATARDY ; 
 int /*<<< orphan*/  AES_ISR ; 
 int /*<<< orphan*/  AES_MR ; 
 int AES_MR_DUALBUFF ; 
 int AES_MR_SMOD_IDATAR0 ; 
 int AES_MR_SMOD_MASK ; 
 scalar_t__ ATMEL_AES_DMA_THRESHOLD ; 
 int EINPROGRESS ; 
 struct aead_request* FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct atmel_aes_dev*,struct scatterlist*,struct scatterlist*,scalar_t__,int (*) (struct atmel_aes_dev*)) ; 
 int FUNC3 (struct atmel_aes_dev*,struct scatterlist*,struct scatterlist*,scalar_t__,int (*) (struct atmel_aes_dev*)) ; 
 struct atmel_aes_gcm_ctx* FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (struct atmel_aes_dev*) ; 
 int FUNC6 (struct atmel_aes_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct atmel_aes_dev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (struct atmel_aes_dev*,int /*<<< orphan*/ ,int) ; 
 struct scatterlist* FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (int) ; 

__attribute__((used)) static int FUNC11(struct atmel_aes_dev *dd)
{
	struct atmel_aes_gcm_ctx *ctx = FUNC4(dd->ctx);
	struct aead_request *req = FUNC1(dd->areq);
	bool use_dma = (ctx->textlen >= ATMEL_AES_DMA_THRESHOLD);
	struct scatterlist *src, *dst;
	u32 isr, mr;

	/* Write AAD first. */
	while (dd->datalen > 0) {
		FUNC8(dd, FUNC0(0), dd->data);
		dd->data += 4;
		dd->datalen -= AES_BLOCK_SIZE;

		isr = FUNC6(dd, AES_ISR);
		if (!(isr & AES_INT_DATARDY)) {
			dd->resume = atmel_aes_gcm_data;
			FUNC7(dd, AES_IER, AES_INT_DATARDY);
			return -EINPROGRESS;
		}
	}

	/* GMAC only. */
	if (FUNC10(ctx->textlen == 0))
		return FUNC5(dd);

	/* Prepare src and dst scatter lists to transfer cipher/plain texts */
	src = FUNC9(ctx->src, req->src, req->assoclen);
	dst = ((req->src == req->dst) ? src :
	       FUNC9(ctx->dst, req->dst, req->assoclen));

	if (use_dma) {
		/* Update the Mode Register for DMA transfers. */
		mr = FUNC6(dd, AES_MR);
		mr &= ~(AES_MR_SMOD_MASK | AES_MR_DUALBUFF);
		mr |= AES_MR_SMOD_IDATAR0;
		if (dd->caps.has_dualbuff)
			mr |= AES_MR_DUALBUFF;
		FUNC7(dd, AES_MR, mr);

		return FUNC3(dd, src, dst, ctx->textlen,
					   atmel_aes_gcm_tag_init);
	}

	return FUNC2(dd, src, dst, ctx->textlen,
				   atmel_aes_gcm_tag_init);
}