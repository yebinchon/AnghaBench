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
struct crypto_tfm {int dummy; } ;
struct crypto_aead {int dummy; } ;
struct chcr_aead_ctx {int /*<<< orphan*/  sw_cipher; void* mayverify; int /*<<< orphan*/  hmac_ctrl; } ;

/* Variables and functions */
 struct chcr_aead_ctx* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  CHCR_SCMD_HMAC_CTRL_DIV2 ; 
 int /*<<< orphan*/  CHCR_SCMD_HMAC_CTRL_IPSEC_96BIT ; 
 int /*<<< orphan*/  CHCR_SCMD_HMAC_CTRL_NO_TRUNC ; 
 int /*<<< orphan*/  CHCR_SCMD_HMAC_CTRL_PL1 ; 
 int /*<<< orphan*/  CHCR_SCMD_HMAC_CTRL_PL2 ; 
 int /*<<< orphan*/  CHCR_SCMD_HMAC_CTRL_PL3 ; 
 int /*<<< orphan*/  CHCR_SCMD_HMAC_CTRL_TRUNC_RFC4366 ; 
 int /*<<< orphan*/  CRYPTO_TFM_RES_BAD_KEY_LEN ; 
 int EINVAL ; 
#define  ICV_10 134 
#define  ICV_12 133 
#define  ICV_14 132 
#define  ICV_16 131 
#define  ICV_4 130 
#define  ICV_6 129 
#define  ICV_8 128 
 void* VERIFY_HW ; 
 int /*<<< orphan*/  FUNC1 (struct crypto_aead*) ; 
 int FUNC2 (int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (struct crypto_tfm*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct crypto_aead *tfm,
				unsigned int authsize)
{
	struct chcr_aead_ctx *aeadctx = FUNC0(FUNC1(tfm));

	switch (authsize) {
	case ICV_4:
		aeadctx->hmac_ctrl = CHCR_SCMD_HMAC_CTRL_PL1;
		aeadctx->mayverify = VERIFY_HW;
		break;
	case ICV_6:
		aeadctx->hmac_ctrl = CHCR_SCMD_HMAC_CTRL_PL2;
		aeadctx->mayverify = VERIFY_HW;
		break;
	case ICV_8:
		aeadctx->hmac_ctrl = CHCR_SCMD_HMAC_CTRL_DIV2;
		aeadctx->mayverify = VERIFY_HW;
		break;
	case ICV_10:
		aeadctx->hmac_ctrl = CHCR_SCMD_HMAC_CTRL_TRUNC_RFC4366;
		aeadctx->mayverify = VERIFY_HW;
		break;
	case ICV_12:
		aeadctx->hmac_ctrl = CHCR_SCMD_HMAC_CTRL_IPSEC_96BIT;
		aeadctx->mayverify = VERIFY_HW;
		break;
	case ICV_14:
		aeadctx->hmac_ctrl = CHCR_SCMD_HMAC_CTRL_PL3;
		aeadctx->mayverify = VERIFY_HW;
		break;
	case ICV_16:
		aeadctx->hmac_ctrl = CHCR_SCMD_HMAC_CTRL_NO_TRUNC;
		aeadctx->mayverify = VERIFY_HW;
		break;
	default:
		FUNC3((struct crypto_tfm *)tfm,
				     CRYPTO_TFM_RES_BAD_KEY_LEN);
		return -EINVAL;
	}
	return FUNC2(aeadctx->sw_cipher, authsize);
}