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
typedef  int u8 ;
struct crypto_aead {int dummy; } ;
struct chcr_aead_reqctx {scalar_t__ scratch_pad; } ;
struct chcr_aead_ctx {int /*<<< orphan*/ * salt; } ;
struct aead_request {int /*<<< orphan*/ * iv; } ;

/* Variables and functions */
 struct chcr_aead_ctx* FUNC0 (int /*<<< orphan*/ ) ; 
 unsigned int CRYPTO_ALG_SUB_TYPE_AEAD_RFC4309 ; 
 int /*<<< orphan*/  FUNC1 (struct crypto_aead*) ; 
 struct chcr_aead_reqctx* FUNC2 (struct aead_request*) ; 
 struct crypto_aead* FUNC3 (struct aead_request*) ; 
 int FUNC4 (struct aead_request*,int*,unsigned short) ; 
 unsigned short FUNC5 (unsigned int) ; 
 int /*<<< orphan*/  FUNC6 (int*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (int*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC8(struct aead_request *req,
			     u8 *ivptr,
			     unsigned int sub_type,
			     unsigned short op_type,
			     unsigned int assoclen)
{
	struct chcr_aead_reqctx *reqctx = FUNC2(req);
	struct crypto_aead *tfm = FUNC3(req);
	struct chcr_aead_ctx *aeadctx = FUNC0(FUNC1(tfm));
	int rc = 0;

	if (sub_type == CRYPTO_ALG_SUB_TYPE_AEAD_RFC4309) {
		ivptr[0] = 3;
		FUNC6(ivptr + 1, &aeadctx->salt[0], 3);
		FUNC6(ivptr + 4, req->iv, 8);
		FUNC7(ivptr + 12, 0, 4);
	} else {
		FUNC6(ivptr, req->iv, 16);
	}
	if (assoclen)
		*((unsigned short *)(reqctx->scratch_pad + 16)) =
				FUNC5(assoclen);

	rc = FUNC4(req, ivptr, op_type);
	/* zero the ctr value */
	FUNC7(ivptr + 15 - ivptr[0], 0, ivptr[0] + 1);
	return rc;
}