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
struct crypto_ablkcipher {int dummy; } ;
struct atmel_aes_reqctx {unsigned long mode; int /*<<< orphan*/  lastc; } ;
struct atmel_aes_dev {int dummy; } ;
struct atmel_aes_base_ctx {int is_aead; int /*<<< orphan*/  block_size; } ;
struct ablkcipher_request {int /*<<< orphan*/  base; scalar_t__ nbytes; int /*<<< orphan*/  src; int /*<<< orphan*/  dst; } ;

/* Variables and functions */
 int /*<<< orphan*/  AES_BLOCK_SIZE ; 
#define  AES_FLAGS_CFB16 131 
#define  AES_FLAGS_CFB32 130 
#define  AES_FLAGS_CFB64 129 
#define  AES_FLAGS_CFB8 128 
 unsigned long AES_FLAGS_ENCRYPT ; 
 unsigned long AES_FLAGS_OPMODE_MASK ; 
 int /*<<< orphan*/  CFB16_BLOCK_SIZE ; 
 int /*<<< orphan*/  CFB32_BLOCK_SIZE ; 
 int /*<<< orphan*/  CFB64_BLOCK_SIZE ; 
 int /*<<< orphan*/  CFB8_BLOCK_SIZE ; 
 int ENODEV ; 
 struct atmel_aes_reqctx* FUNC0 (struct ablkcipher_request*) ; 
 struct atmel_aes_dev* FUNC1 (struct atmel_aes_base_ctx*) ; 
 int FUNC2 (struct atmel_aes_dev*,int /*<<< orphan*/ *) ; 
 struct atmel_aes_base_ctx* FUNC3 (struct crypto_ablkcipher*) ; 
 int FUNC4 (struct crypto_ablkcipher*) ; 
 struct crypto_ablkcipher* FUNC5 (struct ablkcipher_request*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct ablkcipher_request *req, unsigned long mode)
{
	struct crypto_ablkcipher *ablkcipher = FUNC5(req);
	struct atmel_aes_base_ctx *ctx = FUNC3(ablkcipher);
	struct atmel_aes_reqctx *rctx;
	struct atmel_aes_dev *dd;

	switch (mode & AES_FLAGS_OPMODE_MASK) {
	case AES_FLAGS_CFB8:
		ctx->block_size = CFB8_BLOCK_SIZE;
		break;

	case AES_FLAGS_CFB16:
		ctx->block_size = CFB16_BLOCK_SIZE;
		break;

	case AES_FLAGS_CFB32:
		ctx->block_size = CFB32_BLOCK_SIZE;
		break;

	case AES_FLAGS_CFB64:
		ctx->block_size = CFB64_BLOCK_SIZE;
		break;

	default:
		ctx->block_size = AES_BLOCK_SIZE;
		break;
	}
	ctx->is_aead = false;

	dd = FUNC1(ctx);
	if (!dd)
		return -ENODEV;

	rctx = FUNC0(req);
	rctx->mode = mode;

	if (!(mode & AES_FLAGS_ENCRYPT) && (req->src == req->dst)) {
		int ivsize = FUNC4(ablkcipher);

		FUNC6(rctx->lastc, req->src,
			(req->nbytes - ivsize), ivsize, 0);
	}

	return FUNC2(dd, &req->base);
}