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
struct chcr_aead_reqctx {int /*<<< orphan*/  op; scalar_t__ verify; } ;
struct chcr_aead_ctx {scalar_t__ mayverify; } ;
struct aead_request {int dummy; } ;

/* Variables and functions */
 struct chcr_aead_ctx* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  CHCR_DECRYPT_OP ; 
#define  CRYPTO_ALG_SUB_TYPE_AEAD_CCM 133 
#define  CRYPTO_ALG_SUB_TYPE_AEAD_RFC4309 132 
#define  CRYPTO_ALG_SUB_TYPE_CBC_NULL 131 
#define  CRYPTO_ALG_SUB_TYPE_CBC_SHA 130 
#define  CRYPTO_ALG_SUB_TYPE_CTR_NULL 129 
#define  CRYPTO_ALG_SUB_TYPE_CTR_SHA 128 
 scalar_t__ VERIFY_HW ; 
 scalar_t__ VERIFY_SW ; 
 int /*<<< orphan*/  FUNC1 (struct crypto_aead*) ; 
 struct chcr_aead_reqctx* FUNC2 (struct aead_request*) ; 
 int FUNC3 (struct aead_request*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  create_aead_ccm_wr ; 
 int /*<<< orphan*/  create_authenc_wr ; 
 int /*<<< orphan*/  create_gcm_wr ; 
 int FUNC4 (struct crypto_aead*) ; 
 struct crypto_aead* FUNC5 (struct aead_request*) ; 
 int FUNC6 (struct crypto_aead*) ; 

__attribute__((used)) static int FUNC7(struct aead_request *req)
{
	struct crypto_aead *tfm = FUNC5(req);
	struct chcr_aead_ctx *aeadctx = FUNC0(FUNC1(tfm));
	struct chcr_aead_reqctx *reqctx = FUNC2(req);
	int size;

	if (aeadctx->mayverify == VERIFY_SW) {
		size = FUNC4(tfm);
		reqctx->verify = VERIFY_SW;
	} else {
		size = 0;
		reqctx->verify = VERIFY_HW;
	}
	reqctx->op = CHCR_DECRYPT_OP;
	switch (FUNC6(tfm)) {
	case CRYPTO_ALG_SUB_TYPE_CBC_SHA:
	case CRYPTO_ALG_SUB_TYPE_CTR_SHA:
	case CRYPTO_ALG_SUB_TYPE_CBC_NULL:
	case CRYPTO_ALG_SUB_TYPE_CTR_NULL:
		return FUNC3(req, size, create_authenc_wr);
	case CRYPTO_ALG_SUB_TYPE_AEAD_CCM:
	case CRYPTO_ALG_SUB_TYPE_AEAD_RFC4309:
		return FUNC3(req, size, create_aead_ccm_wr);
	default:
		return FUNC3(req, size, create_gcm_wr);
	}
}