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
struct atmel_aes_reqctx {unsigned long mode; } ;
struct atmel_aes_dev {int dummy; } ;
struct atmel_aes_base_ctx {int is_aead; int /*<<< orphan*/  block_size; } ;
struct aead_request {int /*<<< orphan*/  base; } ;

/* Variables and functions */
 int /*<<< orphan*/  AES_BLOCK_SIZE ; 
 unsigned long AES_FLAGS_GCM ; 
 int ENODEV ; 
 struct atmel_aes_reqctx* FUNC0 (struct aead_request*) ; 
 struct atmel_aes_dev* FUNC1 (struct atmel_aes_base_ctx*) ; 
 int FUNC2 (struct atmel_aes_dev*,int /*<<< orphan*/ *) ; 
 struct atmel_aes_base_ctx* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct aead_request*) ; 

__attribute__((used)) static int FUNC5(struct aead_request *req,
			       unsigned long mode)
{
	struct atmel_aes_base_ctx *ctx;
	struct atmel_aes_reqctx *rctx;
	struct atmel_aes_dev *dd;

	ctx = FUNC3(FUNC4(req));
	ctx->block_size = AES_BLOCK_SIZE;
	ctx->is_aead = true;

	dd = FUNC1(ctx);
	if (!dd)
		return -ENODEV;

	rctx = FUNC0(req);
	rctx->mode = AES_FLAGS_GCM | mode;

	return FUNC2(dd, &req->base);
}