#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct TYPE_9__ {int /*<<< orphan*/  opcode; int /*<<< orphan*/  dir; } ;
struct TYPE_10__ {TYPE_4__ bf; } ;
struct TYPE_7__ {unsigned int key_len; } ;
struct TYPE_8__ {TYPE_2__ bf; } ;
struct TYPE_6__ {unsigned int w; } ;
struct dynamic_sa_ctl {TYPE_5__ sa_command_0; TYPE_3__ sa_command_1; TYPE_1__ sa_contents; } ;
struct crypto_tfm {int dummy; } ;
struct crypto_aead {int dummy; } ;
struct crypto4xx_ctx {int sa_len; scalar_t__ sa_out; scalar_t__ sa_in; } ;

/* Variables and functions */
 int /*<<< orphan*/  CRYPTO_FEEDBACK_MODE_NO_FB ; 
 int /*<<< orphan*/  CRYPTO_MODE_CTR ; 
 int /*<<< orphan*/  CRYPTO_TFM_RES_BAD_KEY_LEN ; 
 int /*<<< orphan*/  DIR_INBOUND ; 
 int /*<<< orphan*/  DIR_OUTBOUND ; 
 int EINVAL ; 
 scalar_t__ SA_AES128_GCM_LEN ; 
 unsigned int SA_AES_GCM_CONTENTS ; 
 int /*<<< orphan*/  SA_CIPHER_ALG_AES ; 
 int /*<<< orphan*/  SA_COPY_PAYLOAD ; 
 int /*<<< orphan*/  SA_EXTENDED_SN_OFF ; 
 int /*<<< orphan*/  SA_HASH_ALG_GHASH ; 
 int /*<<< orphan*/  SA_HASH_MODE_HASH ; 
 int /*<<< orphan*/  SA_LOAD_HASH_FROM_SA ; 
 int /*<<< orphan*/  SA_LOAD_IV_FROM_STATE ; 
 int /*<<< orphan*/  SA_MC_DISABLE ; 
 int /*<<< orphan*/  SA_NOT_COPY_HDR ; 
 int /*<<< orphan*/  SA_NOT_COPY_PAD ; 
 int /*<<< orphan*/  SA_NOT_SAVE_IV ; 
 int /*<<< orphan*/  SA_NO_HEADER_PROC ; 
 int /*<<< orphan*/  SA_OPCODE_ENCRYPT_HASH ; 
 int /*<<< orphan*/  SA_OPCODE_HASH_DECRYPT ; 
 int /*<<< orphan*/  SA_OP_GROUP_BASIC ; 
 int /*<<< orphan*/  SA_PAD_TYPE_ZERO ; 
 int /*<<< orphan*/  SA_SAVE_HASH ; 
 int /*<<< orphan*/  SA_SEQ_MASK_ON ; 
 int FUNC0 (struct crypto4xx_ctx*,struct crypto_aead*,int /*<<< orphan*/  const*,unsigned int) ; 
 scalar_t__ FUNC1 (unsigned int) ; 
 int FUNC2 (struct crypto4xx_ctx*,scalar_t__) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (struct crypto4xx_ctx*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*,unsigned int) ; 
 int /*<<< orphan*/  FUNC6 (struct crypto_aead*,int /*<<< orphan*/ ) ; 
 struct crypto_tfm* FUNC7 (struct crypto_aead*) ; 
 struct crypto4xx_ctx* FUNC8 (struct crypto_tfm*) ; 
 int /*<<< orphan*/  FUNC9 (struct dynamic_sa_ctl*) ; 
 int /*<<< orphan*/  FUNC10 (struct dynamic_sa_ctl*) ; 
 int /*<<< orphan*/  FUNC11 (scalar_t__,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC12 (char*,int) ; 
 int /*<<< orphan*/  FUNC13 (struct dynamic_sa_ctl*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct dynamic_sa_ctl*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC15(struct crypto_aead *cipher,
			     const u8 *key, unsigned int keylen)
{
	struct crypto_tfm *tfm = FUNC7(cipher);
	struct crypto4xx_ctx *ctx = FUNC8(tfm);
	struct dynamic_sa_ctl *sa;
	int    rc = 0;

	if (FUNC1(keylen) != 0) {
		FUNC6(cipher, CRYPTO_TFM_RES_BAD_KEY_LEN);
		return -EINVAL;
	}

	rc = FUNC0(ctx, cipher, key, keylen);
	if (rc)
		return rc;

	if (ctx->sa_in || ctx->sa_out)
		FUNC4(ctx);

	rc = FUNC2(ctx, SA_AES128_GCM_LEN + (keylen - 16) / 4);
	if (rc)
		return rc;

	sa  = (struct dynamic_sa_ctl *) ctx->sa_in;

	sa->sa_contents.w = SA_AES_GCM_CONTENTS | (keylen << 2);
	FUNC13(sa, SA_SAVE_HASH, SA_NOT_SAVE_IV,
				 SA_LOAD_HASH_FROM_SA, SA_LOAD_IV_FROM_STATE,
				 SA_NO_HEADER_PROC, SA_HASH_ALG_GHASH,
				 SA_CIPHER_ALG_AES, SA_PAD_TYPE_ZERO,
				 SA_OP_GROUP_BASIC, SA_OPCODE_HASH_DECRYPT,
				 DIR_INBOUND);
	FUNC14(sa, CRYPTO_MODE_CTR, SA_HASH_MODE_HASH,
				 CRYPTO_FEEDBACK_MODE_NO_FB, SA_EXTENDED_SN_OFF,
				 SA_SEQ_MASK_ON, SA_MC_DISABLE,
				 SA_NOT_COPY_PAD, SA_COPY_PAYLOAD,
				 SA_NOT_COPY_HDR);

	sa->sa_command_1.bf.key_len = keylen >> 3;

	FUNC5(FUNC10(sa),
				 key, keylen);

	rc = FUNC3(FUNC9(sa),
		key, keylen);
	if (rc) {
		FUNC12("GCM hash key setting failed = %d\n", rc);
		goto err;
	}

	FUNC11(ctx->sa_out, ctx->sa_in, ctx->sa_len * 4);
	sa = (struct dynamic_sa_ctl *) ctx->sa_out;
	sa->sa_command_0.bf.dir = DIR_OUTBOUND;
	sa->sa_command_0.bf.opcode = SA_OPCODE_ENCRYPT_HASH;

	return 0;
err:
	FUNC4(ctx);
	return rc;
}