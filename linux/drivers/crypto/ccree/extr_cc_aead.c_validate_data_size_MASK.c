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
typedef  int /*<<< orphan*/  u32 ;
struct device {int dummy; } ;
struct cc_aead_ctx {unsigned int authsize; int flow_mode; int /*<<< orphan*/  cipher_mode; int /*<<< orphan*/  drvdata; } ;
struct aead_request {unsigned int cryptlen; } ;
struct aead_req_ctx {unsigned int assoclen; int is_single_pass; int /*<<< orphan*/  plaintext_authenticate_only; } ;
typedef  enum drv_crypto_direction { ____Placeholder_drv_crypto_direction } drv_crypto_direction ;

/* Variables and functions */
 int AES_BLOCK_SIZE ; 
 int DES_BLOCK_SIZE ; 
 int /*<<< orphan*/  DRV_CIPHER_CBC ; 
 int /*<<< orphan*/  DRV_CIPHER_CCM ; 
 int /*<<< orphan*/  DRV_CIPHER_CTR ; 
 int /*<<< orphan*/  DRV_CIPHER_GCTR ; 
 int DRV_CRYPTO_DIRECTION_DECRYPT ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (unsigned int,int) ; 
#define  S_DIN_to_AES 129 
#define  S_DIN_to_DES 128 
 struct aead_req_ctx* FUNC1 (struct aead_request*) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*,int) ; 
 struct device* FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct cc_aead_ctx *ctx,
			      enum drv_crypto_direction direct,
			      struct aead_request *req)
{
	struct aead_req_ctx *areq_ctx = FUNC1(req);
	struct device *dev = FUNC3(ctx->drvdata);
	unsigned int assoclen = areq_ctx->assoclen;
	unsigned int cipherlen = (direct == DRV_CRYPTO_DIRECTION_DECRYPT) ?
			(req->cryptlen - ctx->authsize) : req->cryptlen;

	if (direct == DRV_CRYPTO_DIRECTION_DECRYPT &&
	    req->cryptlen < ctx->authsize)
		goto data_size_err;

	areq_ctx->is_single_pass = true; /*defaulted to fast flow*/

	switch (ctx->flow_mode) {
	case S_DIN_to_AES:
		if (ctx->cipher_mode == DRV_CIPHER_CBC &&
		    !FUNC0(cipherlen, AES_BLOCK_SIZE))
			goto data_size_err;
		if (ctx->cipher_mode == DRV_CIPHER_CCM)
			break;
		if (ctx->cipher_mode == DRV_CIPHER_GCTR) {
			if (areq_ctx->plaintext_authenticate_only)
				areq_ctx->is_single_pass = false;
			break;
		}

		if (!FUNC0(assoclen, sizeof(u32)))
			areq_ctx->is_single_pass = false;

		if (ctx->cipher_mode == DRV_CIPHER_CTR &&
		    !FUNC0(cipherlen, sizeof(u32)))
			areq_ctx->is_single_pass = false;

		break;
	case S_DIN_to_DES:
		if (!FUNC0(cipherlen, DES_BLOCK_SIZE))
			goto data_size_err;
		if (!FUNC0(assoclen, DES_BLOCK_SIZE))
			areq_ctx->is_single_pass = false;
		break;
	default:
		FUNC2(dev, "Unexpected flow mode (%d)\n", ctx->flow_mode);
		goto data_size_err;
	}

	return 0;

data_size_err:
	return -EINVAL;
}