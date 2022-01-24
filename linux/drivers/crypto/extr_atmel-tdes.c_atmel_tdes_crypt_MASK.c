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
struct atmel_tdes_reqctx {unsigned long mode; } ;
struct atmel_tdes_ctx {int /*<<< orphan*/  dd; void* block_size; } ;
struct ablkcipher_request {int /*<<< orphan*/  nbytes; } ;

/* Variables and functions */
 void* CFB16_BLOCK_SIZE ; 
 void* CFB32_BLOCK_SIZE ; 
 void* CFB8_BLOCK_SIZE ; 
 void* DES_BLOCK_SIZE ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,void*) ; 
 unsigned long TDES_FLAGS_CFB16 ; 
 unsigned long TDES_FLAGS_CFB32 ; 
 unsigned long TDES_FLAGS_CFB8 ; 
 struct atmel_tdes_reqctx* FUNC1 (struct ablkcipher_request*) ; 
 int FUNC2 (int /*<<< orphan*/ ,struct ablkcipher_request*) ; 
 struct atmel_tdes_ctx* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct ablkcipher_request*) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 

__attribute__((used)) static int FUNC6(struct ablkcipher_request *req, unsigned long mode)
{
	struct atmel_tdes_ctx *ctx = FUNC3(
			FUNC4(req));
	struct atmel_tdes_reqctx *rctx = FUNC1(req);

	if (mode & TDES_FLAGS_CFB8) {
		if (!FUNC0(req->nbytes, CFB8_BLOCK_SIZE)) {
			FUNC5("request size is not exact amount of CFB8 blocks\n");
			return -EINVAL;
		}
		ctx->block_size = CFB8_BLOCK_SIZE;
	} else if (mode & TDES_FLAGS_CFB16) {
		if (!FUNC0(req->nbytes, CFB16_BLOCK_SIZE)) {
			FUNC5("request size is not exact amount of CFB16 blocks\n");
			return -EINVAL;
		}
		ctx->block_size = CFB16_BLOCK_SIZE;
	} else if (mode & TDES_FLAGS_CFB32) {
		if (!FUNC0(req->nbytes, CFB32_BLOCK_SIZE)) {
			FUNC5("request size is not exact amount of CFB32 blocks\n");
			return -EINVAL;
		}
		ctx->block_size = CFB32_BLOCK_SIZE;
	} else {
		if (!FUNC0(req->nbytes, DES_BLOCK_SIZE)) {
			FUNC5("request size is not exact amount of DES blocks\n");
			return -EINVAL;
		}
		ctx->block_size = DES_BLOCK_SIZE;
	}

	rctx->mode = mode;

	return FUNC2(ctx->dd, req);
}