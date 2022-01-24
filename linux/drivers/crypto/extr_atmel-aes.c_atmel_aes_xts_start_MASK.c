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
struct TYPE_2__ {int /*<<< orphan*/  keylen; } ;
struct atmel_aes_xts_ctx {TYPE_1__ base; int /*<<< orphan*/  key2; } ;
struct atmel_aes_reqctx {int dummy; } ;
struct atmel_aes_dev {unsigned long flags; int /*<<< orphan*/  areq; int /*<<< orphan*/  ctx; } ;
struct ablkcipher_request {int /*<<< orphan*/  info; } ;

/* Variables and functions */
 int AES_FLAGS_ECB ; 
 int AES_FLAGS_ENCRYPT ; 
 unsigned long AES_FLAGS_MODE_MASK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct ablkcipher_request* FUNC1 (int /*<<< orphan*/ ) ; 
 struct atmel_aes_reqctx* FUNC2 (struct ablkcipher_request*) ; 
 int FUNC3 (struct atmel_aes_dev*,int) ; 
 int FUNC4 (struct atmel_aes_dev*) ; 
 int /*<<< orphan*/  FUNC5 (struct atmel_aes_dev*,struct atmel_aes_reqctx*) ; 
 int FUNC6 (struct atmel_aes_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct atmel_aes_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct atmel_aes_dev*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct atmel_aes_xts_ctx* FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  atmel_aes_xts_process_data ; 

__attribute__((used)) static int FUNC10(struct atmel_aes_dev *dd)
{
	struct atmel_aes_xts_ctx *ctx = FUNC9(dd->ctx);
	struct ablkcipher_request *req = FUNC1(dd->areq);
	struct atmel_aes_reqctx *rctx = FUNC2(req);
	unsigned long flags;
	int err;

	FUNC5(dd, rctx);

	err = FUNC4(dd);
	if (err)
		return FUNC3(dd, err);

	/* Compute the tweak value from req->info with ecb(aes). */
	flags = dd->flags;
	dd->flags &= ~AES_FLAGS_MODE_MASK;
	dd->flags |= (AES_FLAGS_ECB | AES_FLAGS_ENCRYPT);
	FUNC8(dd, false, NULL,
				 ctx->key2, ctx->base.keylen);
	dd->flags = flags;

	FUNC7(dd, FUNC0(0), req->info);
	return FUNC6(dd, atmel_aes_xts_process_data);
}