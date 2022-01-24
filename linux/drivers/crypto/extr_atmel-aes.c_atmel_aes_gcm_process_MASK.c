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
typedef  scalar_t__ u32 ;
struct crypto_aead {int dummy; } ;
struct atmel_aes_gcm_ctx {scalar_t__ textlen; } ;
struct atmel_aes_dev {int /*<<< orphan*/  flags; int /*<<< orphan*/  areq; int /*<<< orphan*/  ctx; } ;
struct aead_request {scalar_t__ cryptlen; scalar_t__ assoclen; } ;

/* Variables and functions */
 int /*<<< orphan*/  AES_FLAGS_GTAGEN ; 
 struct aead_request* FUNC0 (int /*<<< orphan*/ ) ; 
 struct atmel_aes_gcm_ctx* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  atmel_aes_gcm_length ; 
 int FUNC2 (struct atmel_aes_dev*) ; 
 int FUNC3 (struct atmel_aes_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct atmel_aes_dev*,int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (struct crypto_aead*) ; 
 struct crypto_aead* FUNC6 (struct aead_request*) ; 
 scalar_t__ FUNC7 (int) ; 

__attribute__((used)) static int FUNC8(struct atmel_aes_dev *dd)
{
	struct atmel_aes_gcm_ctx *ctx = FUNC1(dd->ctx);
	struct aead_request *req = FUNC0(dd->areq);
	struct crypto_aead *tfm = FUNC6(req);
	bool enc = FUNC2(dd);
	u32 authsize;

	/* Compute text length. */
	authsize = FUNC5(tfm);
	ctx->textlen = req->cryptlen - (enc ? 0 : authsize);

	/*
	 * According to tcrypt test suite, the GCM Automatic Tag Generation
	 * fails when both the message and its associated data are empty.
	 */
	if (FUNC7(req->assoclen != 0 || ctx->textlen != 0))
		dd->flags |= AES_FLAGS_GTAGEN;

	FUNC4(dd, false, NULL);
	return FUNC3(dd, atmel_aes_gcm_length);
}