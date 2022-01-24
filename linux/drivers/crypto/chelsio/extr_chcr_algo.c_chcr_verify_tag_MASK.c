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
struct crypto_aead {int dummy; } ;
struct cpl_fw6_pld {int /*<<< orphan*/ * data; } ;
struct aead_request {scalar_t__ cryptlen; scalar_t__ assoclen; int /*<<< orphan*/  src; } ;

/* Variables and functions */
 scalar_t__ CRYPTO_ALG_SUB_TYPE_AEAD_GCM ; 
 scalar_t__ CRYPTO_ALG_SUB_TYPE_AEAD_RFC4106 ; 
 int EBADMSG ; 
 int SHA512_DIGEST_SIZE ; 
 int FUNC0 (struct crypto_aead*) ; 
 struct crypto_aead* FUNC1 (struct aead_request*) ; 
 int FUNC2 (int /*<<< orphan*/ *,struct cpl_fw6_pld*,int) ; 
 scalar_t__ FUNC3 (struct crypto_aead*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,scalar_t__) ; 

void FUNC6(struct aead_request *req, u8 *input, int *err)
{
	u8 temp[SHA512_DIGEST_SIZE];
	struct crypto_aead *tfm = FUNC1(req);
	int authsize = FUNC0(tfm);
	struct cpl_fw6_pld *fw6_pld;
	int cmp = 0;

	fw6_pld = (struct cpl_fw6_pld *)input;
	if ((FUNC3(tfm) == CRYPTO_ALG_SUB_TYPE_AEAD_RFC4106) ||
	    (FUNC3(tfm) == CRYPTO_ALG_SUB_TYPE_AEAD_GCM)) {
		cmp = FUNC2(&fw6_pld->data[2], (fw6_pld + 1), authsize);
	} else {

		FUNC5(req->src, FUNC4(req->src), temp,
				authsize, req->assoclen +
				req->cryptlen - authsize);
		cmp = FUNC2(temp, (fw6_pld + 1), authsize);
	}
	if (cmp)
		*err = -EBADMSG;
	else
		*err = 0;
}