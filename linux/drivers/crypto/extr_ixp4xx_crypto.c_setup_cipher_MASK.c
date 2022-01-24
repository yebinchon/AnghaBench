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
typedef  int u32 ;
struct ix_sa_dir {int npe_ctx_idx; int /*<<< orphan*/  npe_mode; int /*<<< orphan*/ * npe_ctx; } ;
struct ixp_ctx {struct ix_sa_dir decrypt; struct ix_sa_dir encrypt; } ;
struct crypto_tfm {int crt_flags; } ;
typedef  int /*<<< orphan*/  cipher_cfg ;

/* Variables and functions */
 int CRYPTO_TFM_RES_BAD_KEY_LEN ; 
 int DES3_EDE_KEY_SIZE ; 
 int EINVAL ; 
 int MOD_AES ; 
 int MOD_AES128 ; 
 int MOD_AES192 ; 
 int MOD_AES256 ; 
 int /*<<< orphan*/  NPE_OP_CRYPT_ENABLE ; 
 int /*<<< orphan*/  NPE_OP_CRYPT_ENCRYPT ; 
 int FUNC0 (struct crypto_tfm*) ; 
 int FUNC1 (struct crypto_tfm*) ; 
 int FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct crypto_tfm*,int /*<<< orphan*/  const*) ; 
 struct ixp_ctx* FUNC4 (struct crypto_tfm*) ; 
 int FUNC5 (struct crypto_tfm*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC8(struct crypto_tfm *tfm, int encrypt,
		const u8 *key, int key_len)
{
	u8 *cinfo;
	u32 cipher_cfg;
	u32 keylen_cfg = 0;
	struct ix_sa_dir *dir;
	struct ixp_ctx *ctx = FUNC4(tfm);
	u32 *flags = &tfm->crt_flags;

	dir = encrypt ? &ctx->encrypt : &ctx->decrypt;
	cinfo = dir->npe_ctx;

	if (encrypt) {
		cipher_cfg = FUNC1(tfm);
		dir->npe_mode |= NPE_OP_CRYPT_ENCRYPT;
	} else {
		cipher_cfg = FUNC0(tfm);
	}
	if (cipher_cfg & MOD_AES) {
		switch (key_len) {
		case 16: keylen_cfg = MOD_AES128; break;
		case 24: keylen_cfg = MOD_AES192; break;
		case 32: keylen_cfg = MOD_AES256; break;
		default:
			*flags |= CRYPTO_TFM_RES_BAD_KEY_LEN;
			return -EINVAL;
		}
		cipher_cfg |= keylen_cfg;
	} else {
		FUNC3(tfm, key);
	}
	/* write cfg word to cryptinfo */
	*(u32*)cinfo = FUNC2(cipher_cfg);
	cinfo += sizeof(cipher_cfg);

	/* write cipher key to cryptinfo */
	FUNC6(cinfo, key, key_len);
	/* NPE wants keylen set to DES3_EDE_KEY_SIZE even for single DES */
	if (key_len < DES3_EDE_KEY_SIZE && !(cipher_cfg & MOD_AES)) {
		FUNC7(cinfo + key_len, 0, DES3_EDE_KEY_SIZE -key_len);
		key_len = DES3_EDE_KEY_SIZE;
	}
	dir->npe_ctx_idx = sizeof(cipher_cfg) + key_len;
	dir->npe_mode |= NPE_OP_CRYPT_ENABLE;
	if ((cipher_cfg & MOD_AES) && !encrypt) {
		return FUNC5(tfm);
	}
	return 0;
}