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
typedef  int /*<<< orphan*/  uint8_t ;
struct qat_alg_aead_ctx {int /*<<< orphan*/  dec_fw_req; int /*<<< orphan*/  enc_fw_req; int /*<<< orphan*/ * dec_cd; int /*<<< orphan*/ * enc_cd; } ;
struct crypto_aead {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ICP_QAT_HW_CIPHER_CBC_MODE ; 
 struct qat_alg_aead_ctx* FUNC0 (struct crypto_aead*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (struct crypto_aead*,int /*<<< orphan*/  const*,unsigned int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct crypto_aead *tfm, const uint8_t *key,
			      unsigned int keylen)
{
	struct qat_alg_aead_ctx *ctx = FUNC0(tfm);

	FUNC1(ctx->enc_cd, 0, sizeof(*ctx->enc_cd));
	FUNC1(ctx->dec_cd, 0, sizeof(*ctx->dec_cd));
	FUNC1(&ctx->enc_fw_req, 0, sizeof(ctx->enc_fw_req));
	FUNC1(&ctx->dec_fw_req, 0, sizeof(ctx->dec_fw_req));

	return FUNC2(tfm, key, keylen,
					  ICP_QAT_HW_CIPHER_CBC_MODE);
}