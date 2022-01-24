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
struct atmel_aes_gcm_ctx {scalar_t__ textlen; scalar_t__* tag; } ;
struct atmel_aes_dev {int flags; int /*<<< orphan*/  areq; int /*<<< orphan*/  ctx; } ;
struct aead_request {int /*<<< orphan*/  src; int /*<<< orphan*/  dst; scalar_t__ assoclen; } ;

/* Variables and functions */
 int AES_FLAGS_GTAGEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int EBADMSG ; 
 struct aead_request* FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (struct atmel_aes_dev*,int) ; 
 struct atmel_aes_gcm_ctx* FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (struct atmel_aes_dev*) ; 
 int /*<<< orphan*/  FUNC6 (struct atmel_aes_dev*,int /*<<< orphan*/ ,scalar_t__*) ; 
 scalar_t__ FUNC7 (struct crypto_aead*) ; 
 struct crypto_aead* FUNC8 (struct aead_request*) ; 
 scalar_t__ FUNC9 (scalar_t__*,scalar_t__*,scalar_t__) ; 
 scalar_t__ FUNC10 (int) ; 
 int /*<<< orphan*/  FUNC11 (scalar_t__*,int /*<<< orphan*/ ,scalar_t__,scalar_t__,int) ; 

__attribute__((used)) static int FUNC12(struct atmel_aes_dev *dd)
{
	struct atmel_aes_gcm_ctx *ctx = FUNC4(dd->ctx);
	struct aead_request *req = FUNC2(dd->areq);
	struct crypto_aead *tfm = FUNC8(req);
	bool enc = FUNC5(dd);
	u32 offset, authsize, itag[4], *otag = ctx->tag;
	int err;

	/* Read the computed tag. */
	if (FUNC10(dd->flags & AES_FLAGS_GTAGEN))
		FUNC6(dd, FUNC1(0), ctx->tag);
	else
		FUNC6(dd, FUNC0(0), ctx->tag);

	offset = req->assoclen + ctx->textlen;
	authsize = FUNC7(tfm);
	if (enc) {
		FUNC11(otag, req->dst, offset, authsize, 1);
		err = 0;
	} else {
		FUNC11(itag, req->src, offset, authsize, 0);
		err = FUNC9(itag, otag, authsize) ? -EBADMSG : 0;
	}

	return FUNC3(dd, err);
}