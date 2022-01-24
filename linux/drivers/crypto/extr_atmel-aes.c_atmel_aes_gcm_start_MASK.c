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
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u64 ;
typedef  int /*<<< orphan*/  u32 ;
struct crypto_aead {int dummy; } ;
struct atmel_aes_reqctx {int dummy; } ;
struct atmel_aes_gcm_ctx {int /*<<< orphan*/ * j0; } ;
struct atmel_aes_dev {size_t buflen; int /*<<< orphan*/ * buf; int /*<<< orphan*/  areq; int /*<<< orphan*/  ctx; } ;
struct aead_request {void* iv; } ;

/* Variables and functions */
 size_t AES_BLOCK_SIZE ; 
 int EINVAL ; 
 size_t GCM_AES_IV_SIZE ; 
 struct aead_request* FUNC0 (int /*<<< orphan*/ ) ; 
 struct atmel_aes_reqctx* FUNC1 (struct aead_request*) ; 
 int FUNC2 (struct atmel_aes_dev*,int) ; 
 struct atmel_aes_gcm_ctx* FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (struct atmel_aes_dev*,int /*<<< orphan*/  const*,size_t,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int (*) (struct atmel_aes_dev*)) ; 
 int FUNC5 (struct atmel_aes_dev*) ; 
 int FUNC6 (struct atmel_aes_dev*) ; 
 size_t FUNC7 (size_t,size_t) ; 
 int /*<<< orphan*/  FUNC8 (struct atmel_aes_dev*,struct atmel_aes_reqctx*) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (size_t) ; 
 size_t FUNC11 (struct crypto_aead*) ; 
 struct crypto_aead* FUNC12 (struct aead_request*) ; 
 scalar_t__ FUNC13 (int) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,void const*,size_t) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,size_t) ; 

__attribute__((used)) static int FUNC16(struct atmel_aes_dev *dd)
{
	struct atmel_aes_gcm_ctx *ctx = FUNC3(dd->ctx);
	struct aead_request *req = FUNC0(dd->areq);
	struct crypto_aead *tfm = FUNC12(req);
	struct atmel_aes_reqctx *rctx = FUNC1(req);
	size_t ivsize = FUNC11(tfm);
	size_t datalen, padlen;
	const void *iv = req->iv;
	u8 *data = dd->buf;
	int err;

	FUNC8(dd, rctx);

	err = FUNC6(dd);
	if (err)
		return FUNC2(dd, err);

	if (FUNC13(ivsize == GCM_AES_IV_SIZE)) {
		FUNC14(ctx->j0, iv, ivsize);
		ctx->j0[3] = FUNC9(1);
		return FUNC5(dd);
	}

	padlen = FUNC7(ivsize, AES_BLOCK_SIZE);
	datalen = ivsize + padlen + AES_BLOCK_SIZE;
	if (datalen > dd->buflen)
		return FUNC2(dd, -EINVAL);

	FUNC14(data, iv, ivsize);
	FUNC15(data + ivsize, 0, padlen + sizeof(u64));
	((u64 *)(data + datalen))[-1] = FUNC10(ivsize * 8);

	return FUNC4(dd, (const u32 *)data, datalen,
				   NULL, ctx->j0, atmel_aes_gcm_process);
}