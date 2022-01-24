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
struct chcr_aead_reqctx {int* scratch_pad; } ;
struct aead_request {scalar_t__ cryptlen; scalar_t__ assoclen; } ;

/* Variables and functions */
 unsigned short CHCR_DECRYPT_OP ; 
 struct chcr_aead_reqctx* FUNC0 (struct aead_request*) ; 
 unsigned int FUNC1 (struct crypto_aead*) ; 
 struct crypto_aead* FUNC2 (struct aead_request*) ; 
 int /*<<< orphan*/  FUNC3 (int*,int*,int) ; 
 int FUNC4 (int*,scalar_t__,unsigned int) ; 

__attribute__((used)) static int FUNC5(struct aead_request *req, u8 *ivptr,
			unsigned short op_type)
{
	unsigned int l, lp, m;
	int rc;
	struct crypto_aead *aead = FUNC2(req);
	struct chcr_aead_reqctx *reqctx = FUNC0(req);
	u8 *b0 = reqctx->scratch_pad;

	m = FUNC1(aead);

	FUNC3(b0, ivptr, 16);

	lp = b0[0];
	l = lp + 1;

	/* set m, bits 3-5 */
	*b0 |= (8 * ((m - 2) / 2));

	/* set adata, bit 6, if associated data is used */
	if (req->assoclen)
		*b0 |= 64;
	rc = FUNC4(b0 + 16 - l,
			 (op_type == CHCR_DECRYPT_OP) ?
			 req->cryptlen - m : req->cryptlen, l);

	return rc;
}