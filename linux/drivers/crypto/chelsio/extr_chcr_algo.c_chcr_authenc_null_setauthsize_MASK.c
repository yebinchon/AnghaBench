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
struct crypto_aead {int dummy; } ;
struct chcr_aead_ctx {int /*<<< orphan*/  sw_cipher; int /*<<< orphan*/  mayverify; int /*<<< orphan*/  hmac_ctrl; } ;

/* Variables and functions */
 struct chcr_aead_ctx* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  CHCR_SCMD_HMAC_CTRL_NOP ; 
 int /*<<< orphan*/  VERIFY_HW ; 
 int /*<<< orphan*/  FUNC1 (struct crypto_aead*) ; 
 int FUNC2 (int /*<<< orphan*/ ,unsigned int) ; 

__attribute__((used)) static int FUNC3(struct crypto_aead *tfm,
					unsigned int authsize)
{
	struct chcr_aead_ctx *aeadctx = FUNC0(FUNC1(tfm));

	aeadctx->hmac_ctrl = CHCR_SCMD_HMAC_CTRL_NOP;
	aeadctx->mayverify = VERIFY_HW;
	return FUNC2(aeadctx->sw_cipher, authsize);
}