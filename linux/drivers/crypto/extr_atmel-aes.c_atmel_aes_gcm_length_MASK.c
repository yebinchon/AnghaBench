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
struct atmel_aes_gcm_ctx {scalar_t__ textlen; int /*<<< orphan*/ * j0; } ;
struct atmel_aes_dev {scalar_t__ datalen; scalar_t__ buflen; scalar_t__ buf; int /*<<< orphan*/ * data; int /*<<< orphan*/  areq; int /*<<< orphan*/  ctx; } ;
struct aead_request {scalar_t__ assoclen; int /*<<< orphan*/  src; } ;

/* Variables and functions */
 int /*<<< orphan*/  AES_AADLENR ; 
 int /*<<< orphan*/  AES_BLOCK_SIZE ; 
 int /*<<< orphan*/  AES_CLENR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  EINVAL ; 
 struct aead_request* FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct atmel_aes_dev*,int /*<<< orphan*/ ) ; 
 struct atmel_aes_gcm_ctx* FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (struct atmel_aes_dev*) ; 
 size_t FUNC5 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct atmel_aes_dev*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (struct atmel_aes_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 (int) ; 

__attribute__((used)) static int FUNC13(struct atmel_aes_dev *dd)
{
	struct atmel_aes_gcm_ctx *ctx = FUNC3(dd->ctx);
	struct aead_request *req = FUNC1(dd->areq);
	u32 j0_lsw, *j0 = ctx->j0;
	size_t padlen;

	/* Write incr32(J0) into IV. */
	j0_lsw = j0[3];
	j0[3] = FUNC9(FUNC8(j0[3]) + 1);
	FUNC7(dd, FUNC0(0), j0);
	j0[3] = j0_lsw;

	/* Set aad and text lengths. */
	FUNC6(dd, AES_AADLENR, req->assoclen);
	FUNC6(dd, AES_CLENR, ctx->textlen);

	/* Check whether AAD are present. */
	if (FUNC12(req->assoclen == 0)) {
		dd->datalen = 0;
		return FUNC4(dd);
	}

	/* Copy assoc data and add padding. */
	padlen = FUNC5(req->assoclen, AES_BLOCK_SIZE);
	if (FUNC12(req->assoclen + padlen > dd->buflen))
		return FUNC2(dd, -EINVAL);
	FUNC10(req->src, FUNC11(req->src), dd->buf, req->assoclen);

	/* Write assoc data into the Input Data register. */
	dd->data = (u32 *)dd->buf;
	dd->datalen = req->assoclen + padlen;
	return FUNC4(dd);
}