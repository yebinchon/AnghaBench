#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct device {int dummy; } ;
struct crypto_tfm {int dummy; } ;
struct crypto_skcipher {int dummy; } ;
struct cc_hkey_info {unsigned int keylen; unsigned int hw_key1; unsigned int hw_key2; } ;
struct TYPE_5__ {void* slot; void* alg; } ;
struct TYPE_4__ {void* key2_slot; void* key1_slot; } ;
struct cc_cipher_ctx {unsigned int keylen; int key_type; TYPE_2__ cpp; int /*<<< orphan*/  flow_mode; int /*<<< orphan*/  cipher_mode; TYPE_3__* drvdata; TYPE_1__ hw; } ;
typedef  int /*<<< orphan*/  hki ;
struct TYPE_6__ {int /*<<< orphan*/  hw_rev; } ;

/* Variables and functions */
 void* CC_CPP_AES ; 
 void* CC_CPP_SM4 ; 
#define  CC_HW_PROTECTED_KEY 129 
 int /*<<< orphan*/  CC_HW_REV_713 ; 
#define  CC_POLICY_PROTECTED_KEY 128 
 int /*<<< orphan*/  CRYPTO_TFM_RES_BAD_KEY_LEN ; 
 int /*<<< orphan*/  DRV_CIPHER_BITLOCKER ; 
 int /*<<< orphan*/  DRV_CIPHER_CBC ; 
 int /*<<< orphan*/  DRV_CIPHER_CTR ; 
 int /*<<< orphan*/  DRV_CIPHER_ESSIV ; 
 int /*<<< orphan*/  DRV_CIPHER_XTS ; 
 int EINVAL ; 
 void* END_OF_KEYS ; 
 int /*<<< orphan*/  S_DIN_to_AES ; 
 int /*<<< orphan*/  S_DIN_to_SM4 ; 
 void* FUNC0 (unsigned int) ; 
 void* FUNC1 (unsigned int) ; 
 int FUNC2 (unsigned int) ; 
 struct crypto_tfm* FUNC3 (struct crypto_skcipher*) ; 
 int /*<<< orphan*/  FUNC4 (struct crypto_tfm*) ; 
 struct cc_cipher_ctx* FUNC5 (struct crypto_tfm*) ; 
 int /*<<< orphan*/  FUNC6 (struct crypto_tfm*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct device*,char*,struct cc_cipher_ctx*,void*,...) ; 
 int /*<<< orphan*/  FUNC8 (struct device*,char*,...) ; 
 struct device* FUNC9 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC10 (char*,int /*<<< orphan*/ *,unsigned int) ; 
 int /*<<< orphan*/  FUNC11 (struct cc_hkey_info*,int /*<<< orphan*/  const*,unsigned int) ; 
 scalar_t__ FUNC12 (struct cc_cipher_ctx*,unsigned int) ; 

__attribute__((used)) static int FUNC13(struct crypto_skcipher *sktfm, const u8 *key,
			     unsigned int keylen)
{
	struct crypto_tfm *tfm = FUNC3(sktfm);
	struct cc_cipher_ctx *ctx_p = FUNC5(tfm);
	struct device *dev = FUNC9(ctx_p->drvdata);
	struct cc_hkey_info hki;

	FUNC7(dev, "Setting HW key in context @%p for %s. keylen=%u\n",
		ctx_p, FUNC4(tfm), keylen);
	FUNC10("key", (u8 *)key, keylen);

	/* STAT_PHASE_0: Init and sanity checks */

	/* This check the size of the protected key token */
	if (keylen != sizeof(hki)) {
		FUNC8(dev, "Unsupported protected key size %d.\n", keylen);
		FUNC6(tfm, CRYPTO_TFM_RES_BAD_KEY_LEN);
		return -EINVAL;
	}

	FUNC11(&hki, key, keylen);

	/* The real key len for crypto op is the size of the HW key
	 * referenced by the HW key slot, not the hardware key token
	 */
	keylen = hki.keylen;

	if (FUNC12(ctx_p, keylen)) {
		FUNC8(dev, "Unsupported key size %d.\n", keylen);
		FUNC6(tfm, CRYPTO_TFM_RES_BAD_KEY_LEN);
		return -EINVAL;
	}

	ctx_p->keylen = keylen;

	switch (FUNC2(hki.hw_key1)) {
	case CC_HW_PROTECTED_KEY:
		if (ctx_p->flow_mode == S_DIN_to_SM4) {
			FUNC8(dev, "Only AES HW protected keys are supported\n");
			return -EINVAL;
		}

		ctx_p->hw.key1_slot = FUNC1(hki.hw_key1);
		if (ctx_p->hw.key1_slot == END_OF_KEYS) {
			FUNC8(dev, "Unsupported hw key1 number (%d)\n",
				hki.hw_key1);
			return -EINVAL;
		}

		if (ctx_p->cipher_mode == DRV_CIPHER_XTS ||
		    ctx_p->cipher_mode == DRV_CIPHER_ESSIV ||
		    ctx_p->cipher_mode == DRV_CIPHER_BITLOCKER) {
			if (hki.hw_key1 == hki.hw_key2) {
				FUNC8(dev, "Illegal hw key numbers (%d,%d)\n",
					hki.hw_key1, hki.hw_key2);
				return -EINVAL;
			}

			ctx_p->hw.key2_slot = FUNC1(hki.hw_key2);
			if (ctx_p->hw.key2_slot == END_OF_KEYS) {
				FUNC8(dev, "Unsupported hw key2 number (%d)\n",
					hki.hw_key2);
				return -EINVAL;
			}
		}

		ctx_p->key_type = CC_HW_PROTECTED_KEY;
		FUNC7(dev, "HW protected key  %d/%d set\n.",
			ctx_p->hw.key1_slot, ctx_p->hw.key2_slot);
		break;

	case CC_POLICY_PROTECTED_KEY:
		if (ctx_p->drvdata->hw_rev < CC_HW_REV_713) {
			FUNC8(dev, "CPP keys not supported in this hardware revision.\n");
			return -EINVAL;
		}

		if (ctx_p->cipher_mode != DRV_CIPHER_CBC &&
		    ctx_p->cipher_mode != DRV_CIPHER_CTR) {
			FUNC8(dev, "CPP keys only supported in CBC or CTR modes.\n");
			return -EINVAL;
		}

		ctx_p->cpp.slot = FUNC0(hki.hw_key1);
		if (ctx_p->flow_mode == S_DIN_to_AES)
			ctx_p->cpp.alg = CC_CPP_AES;
		else /* Must be SM4 since due to sethkey registration */
			ctx_p->cpp.alg = CC_CPP_SM4;
		ctx_p->key_type = CC_POLICY_PROTECTED_KEY;
		FUNC7(dev, "policy protected key alg: %d slot: %d.\n",
			ctx_p->cpp.alg, ctx_p->cpp.slot);
		break;

	default:
		FUNC8(dev, "Unsupported protected key (%d)\n", hki.hw_key1);
		return -EINVAL;
	}

	return 0;
}