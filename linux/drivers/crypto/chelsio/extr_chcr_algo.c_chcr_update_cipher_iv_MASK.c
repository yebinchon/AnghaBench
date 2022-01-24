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
struct crypto_ablkcipher {int dummy; } ;
struct cpl_fw6_pld {int /*<<< orphan*/ * data; } ;
struct chcr_blkcipher_req_ctx {int processed; scalar_t__ op; scalar_t__ iv; } ;
struct ablkcipher_request {int /*<<< orphan*/ * info; } ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 int AES_BLOCK_SIZE ; 
 int CRYPTO_ALG_SUB_TYPE_CBC ; 
 int CRYPTO_ALG_SUB_TYPE_CTR ; 
 int CRYPTO_ALG_SUB_TYPE_CTR_RFC3686 ; 
 int CRYPTO_ALG_SUB_TYPE_XTS ; 
 scalar_t__ CTR_RFC3686_IV_SIZE ; 
 scalar_t__ CTR_RFC3686_NONCE_SIZE ; 
 struct chcr_blkcipher_req_ctx* FUNC0 (struct ablkcipher_request*) ; 
 int FUNC1 (struct ablkcipher_request*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 struct crypto_ablkcipher* FUNC3 (struct ablkcipher_request*) ; 
 int /*<<< orphan*/  FUNC4 (struct crypto_ablkcipher*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC8(struct ablkcipher_request *req,
				   struct cpl_fw6_pld *fw6_pld, u8 *iv)
{
	struct crypto_ablkcipher *tfm = FUNC3(req);
	struct chcr_blkcipher_req_ctx *reqctx = FUNC0(req);
	int subtype = FUNC6(FUNC4(tfm));
	int ret = 0;

	if (subtype == CRYPTO_ALG_SUB_TYPE_CTR)
		FUNC5(iv, req->info, (reqctx->processed /
			   AES_BLOCK_SIZE));
	else if (subtype == CRYPTO_ALG_SUB_TYPE_CTR_RFC3686)
		*(__be32 *)(reqctx->iv + CTR_RFC3686_NONCE_SIZE +
			CTR_RFC3686_IV_SIZE) = FUNC2((reqctx->processed /
						AES_BLOCK_SIZE) + 1);
	else if (subtype == CRYPTO_ALG_SUB_TYPE_XTS)
		ret = FUNC1(req, iv, 0);
	else if (subtype == CRYPTO_ALG_SUB_TYPE_CBC) {
		if (reqctx->op)
			/*Updated before sending last WR*/
			FUNC7(iv, req->info, AES_BLOCK_SIZE);
		else
			FUNC7(iv, &fw6_pld->data[2], AES_BLOCK_SIZE);
	}

	return ret;

}