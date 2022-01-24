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
struct atmel_aes_reqctx {int dummy; } ;
struct atmel_aes_dev {scalar_t__ total; int /*<<< orphan*/  areq; int /*<<< orphan*/  ctx; } ;
struct atmel_aes_ctr_ctx {scalar_t__ offset; int /*<<< orphan*/  iv; } ;
struct ablkcipher_request {int /*<<< orphan*/  info; } ;

/* Variables and functions */
 int /*<<< orphan*/  AES_BLOCK_SIZE ; 
 struct ablkcipher_request* FUNC0 (int /*<<< orphan*/ ) ; 
 struct atmel_aes_reqctx* FUNC1 (struct ablkcipher_request*) ; 
 int FUNC2 (struct atmel_aes_dev*,int) ; 
 struct atmel_aes_ctr_ctx* FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (struct atmel_aes_dev*) ; 
 int FUNC5 (struct atmel_aes_dev*) ; 
 int /*<<< orphan*/  FUNC6 (struct atmel_aes_dev*,struct atmel_aes_reqctx*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(struct atmel_aes_dev *dd)
{
	struct atmel_aes_ctr_ctx *ctx = FUNC3(dd->ctx);
	struct ablkcipher_request *req = FUNC0(dd->areq);
	struct atmel_aes_reqctx *rctx = FUNC1(req);
	int err;

	FUNC6(dd, rctx);

	err = FUNC5(dd);
	if (err)
		return FUNC2(dd, err);

	FUNC7(ctx->iv, req->info, AES_BLOCK_SIZE);
	ctx->offset = 0;
	dd->total = 0;
	return FUNC4(dd);
}