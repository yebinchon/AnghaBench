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
typedef  int u32 ;
struct crypto_ahash {int dummy; } ;
struct atmel_sha_reqctx {size_t hash_size; int flags; } ;
struct atmel_sha_hmac_ctx {int* ipad; int* opad; } ;
struct atmel_sha_dev {struct ahash_request* req; } ;
struct ahash_request {int nbytes; int /*<<< orphan*/  src; } ;

/* Variables and functions */
 int ATMEL_SHA_DMA_THRESHOLD ; 
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  SHA_BCR ; 
 int /*<<< orphan*/  SHA_CR ; 
 int SHA_CR_FIRST ; 
 int SHA_CR_WUIEHV ; 
 int SHA_CR_WUIHV ; 
 int SHA_FLAGS_ALGO_MASK ; 
 int /*<<< orphan*/  SHA_MR ; 
 int SHA_MR_DUALBUFF ; 
 int SHA_MR_HMAC ; 
 int SHA_MR_MODE_AUTO ; 
 int SHA_MR_MODE_IDATAR0 ; 
 int /*<<< orphan*/  SHA_MSR ; 
 int /*<<< orphan*/  FUNC0 (size_t) ; 
 struct atmel_sha_reqctx* FUNC1 (struct ahash_request*) ; 
 int FUNC2 (struct atmel_sha_dev*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct atmel_sha_dev*,int /*<<< orphan*/ ,int,int,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct atmel_sha_dev*,int /*<<< orphan*/ ,int) ; 
 int FUNC5 (struct atmel_sha_dev*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  atmel_sha_hmac_final_done ; 
 int /*<<< orphan*/  FUNC6 (struct atmel_sha_dev*,int /*<<< orphan*/ ,int) ; 
 struct atmel_sha_hmac_ctx* FUNC7 (struct crypto_ahash*) ; 
 struct crypto_ahash* FUNC8 (struct ahash_request*) ; 

__attribute__((used)) static int FUNC9(struct atmel_sha_dev *dd)
{
	struct ahash_request *req = dd->req;
	struct atmel_sha_reqctx *ctx = FUNC1(req);
	struct crypto_ahash *tfm = FUNC8(req);
	struct atmel_sha_hmac_ctx *hmac = FUNC7(tfm);
	size_t hs = ctx->hash_size;
	size_t i, num_words = hs / sizeof(u32);
	bool use_dma = false;
	u32 mr;

	/* Special case for empty message. */
	if (!req->nbytes)
		return FUNC2(dd, -EINVAL); // TODO:

	/* Check DMA threshold and alignment. */
	if (req->nbytes > ATMEL_SHA_DMA_THRESHOLD &&
	    FUNC4(dd, req->src, req->nbytes))
		use_dma = true;

	/* Write both initial hash values to compute a HMAC. */
	FUNC6(dd, SHA_CR, SHA_CR_WUIHV);
	for (i = 0; i < num_words; ++i)
		FUNC6(dd, FUNC0(i), hmac->ipad[i]);

	FUNC6(dd, SHA_CR, SHA_CR_WUIEHV);
	for (i = 0; i < num_words; ++i)
		FUNC6(dd, FUNC0(i), hmac->opad[i]);

	/* Write the Mode, Message Size, Bytes Count then Control Registers. */
	mr = (SHA_MR_HMAC | SHA_MR_DUALBUFF);
	mr |= ctx->flags & SHA_FLAGS_ALGO_MASK;
	if (use_dma)
		mr |= SHA_MR_MODE_IDATAR0;
	else
		mr |= SHA_MR_MODE_AUTO;
	FUNC6(dd, SHA_MR, mr);

	FUNC6(dd, SHA_MSR, req->nbytes);
	FUNC6(dd, SHA_BCR, req->nbytes);

	FUNC6(dd, SHA_CR, SHA_CR_FIRST);

	/* Process data. */
	if (use_dma)
		return FUNC5(dd, req->src, req->nbytes,
					   atmel_sha_hmac_final_done);

	return FUNC3(dd, req->src, req->nbytes, false, true,
				   atmel_sha_hmac_final_done);
}