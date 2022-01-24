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
typedef  int u32 ;
struct crypto_aead {int dummy; } ;
struct chcr_aead_ctx {int /*<<< orphan*/  sw_cipher; void* mayverify; void* hmac_ctrl; } ;

/* Variables and functions */
 struct chcr_aead_ctx* FUNC0 (int /*<<< orphan*/ ) ; 
 void* CHCR_SCMD_HMAC_CTRL_DIV2 ; 
 void* CHCR_SCMD_HMAC_CTRL_IPSEC_96BIT ; 
 void* CHCR_SCMD_HMAC_CTRL_NO_TRUNC ; 
 void* CHCR_SCMD_HMAC_CTRL_PL1 ; 
 void* CHCR_SCMD_HMAC_CTRL_PL2 ; 
 void* CHCR_SCMD_HMAC_CTRL_PL3 ; 
 void* CHCR_SCMD_HMAC_CTRL_TRUNC_RFC4366 ; 
 unsigned int ICV_10 ; 
 unsigned int ICV_12 ; 
 unsigned int ICV_14 ; 
 unsigned int ICV_4 ; 
 unsigned int ICV_6 ; 
 void* VERIFY_HW ; 
 void* VERIFY_SW ; 
 int /*<<< orphan*/  FUNC1 (struct crypto_aead*) ; 
 int FUNC2 (struct crypto_aead*) ; 
 int FUNC3 (int /*<<< orphan*/ ,unsigned int) ; 

__attribute__((used)) static int FUNC4(struct crypto_aead *tfm,
				    unsigned int authsize)
{
	struct chcr_aead_ctx *aeadctx = FUNC0(FUNC1(tfm));
	u32 maxauth = FUNC2(tfm);

	/*SHA1 authsize in ipsec is 12 instead of 10 i.e maxauthsize / 2 is not
	 * true for sha1. authsize == 12 condition should be before
	 * authsize == (maxauth >> 1)
	 */
	if (authsize == ICV_4) {
		aeadctx->hmac_ctrl = CHCR_SCMD_HMAC_CTRL_PL1;
		aeadctx->mayverify = VERIFY_HW;
	} else if (authsize == ICV_6) {
		aeadctx->hmac_ctrl = CHCR_SCMD_HMAC_CTRL_PL2;
		aeadctx->mayverify = VERIFY_HW;
	} else if (authsize == ICV_10) {
		aeadctx->hmac_ctrl = CHCR_SCMD_HMAC_CTRL_TRUNC_RFC4366;
		aeadctx->mayverify = VERIFY_HW;
	} else if (authsize == ICV_12) {
		aeadctx->hmac_ctrl = CHCR_SCMD_HMAC_CTRL_IPSEC_96BIT;
		aeadctx->mayverify = VERIFY_HW;
	} else if (authsize == ICV_14) {
		aeadctx->hmac_ctrl = CHCR_SCMD_HMAC_CTRL_PL3;
		aeadctx->mayverify = VERIFY_HW;
	} else if (authsize == (maxauth >> 1)) {
		aeadctx->hmac_ctrl = CHCR_SCMD_HMAC_CTRL_DIV2;
		aeadctx->mayverify = VERIFY_HW;
	} else if (authsize == maxauth) {
		aeadctx->hmac_ctrl = CHCR_SCMD_HMAC_CTRL_NO_TRUNC;
		aeadctx->mayverify = VERIFY_HW;
	} else {
		aeadctx->hmac_ctrl = CHCR_SCMD_HMAC_CTRL_NO_TRUNC;
		aeadctx->mayverify = VERIFY_SW;
	}
	return FUNC3(aeadctx->sw_cipher, authsize);
}