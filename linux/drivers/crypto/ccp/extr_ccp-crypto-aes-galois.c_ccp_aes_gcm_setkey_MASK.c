#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct crypto_aead {int dummy; } ;
struct TYPE_3__ {unsigned int key_len; int /*<<< orphan*/  key; int /*<<< orphan*/  key_sg; int /*<<< orphan*/  mode; int /*<<< orphan*/  type; } ;
struct TYPE_4__ {TYPE_1__ aes; } ;
struct ccp_ctx {TYPE_2__ u; } ;

/* Variables and functions */
#define  AES_KEYSIZE_128 130 
#define  AES_KEYSIZE_192 129 
#define  AES_KEYSIZE_256 128 
 int /*<<< orphan*/  CCP_AES_MODE_GCM ; 
 int /*<<< orphan*/  CCP_AES_TYPE_128 ; 
 int /*<<< orphan*/  CCP_AES_TYPE_192 ; 
 int /*<<< orphan*/  CCP_AES_TYPE_256 ; 
 int /*<<< orphan*/  CRYPTO_TFM_RES_BAD_KEY_LEN ; 
 int EINVAL ; 
 struct ccp_ctx* FUNC0 (struct crypto_aead*) ; 
 int /*<<< orphan*/  FUNC1 (struct crypto_aead*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned int) ; 

__attribute__((used)) static int FUNC4(struct crypto_aead *tfm, const u8 *key,
			      unsigned int key_len)
{
	struct ccp_ctx *ctx = FUNC0(tfm);

	switch (key_len) {
	case AES_KEYSIZE_128:
		ctx->u.aes.type = CCP_AES_TYPE_128;
		break;
	case AES_KEYSIZE_192:
		ctx->u.aes.type = CCP_AES_TYPE_192;
		break;
	case AES_KEYSIZE_256:
		ctx->u.aes.type = CCP_AES_TYPE_256;
		break;
	default:
		FUNC1(tfm, CRYPTO_TFM_RES_BAD_KEY_LEN);
		return -EINVAL;
	}

	ctx->u.aes.mode = CCP_AES_MODE_GCM;
	ctx->u.aes.key_len = key_len;

	FUNC2(ctx->u.aes.key, key, key_len);
	FUNC3(&ctx->u.aes.key_sg, ctx->u.aes.key, key_len);

	return 0;
}