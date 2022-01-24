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
struct chcr_blkcipher_req_ctx {int /*<<< orphan*/  op; int /*<<< orphan*/  processed; } ;
struct ablkcipher_request {int /*<<< orphan*/  info; } ;

/* Variables and functions */
 int /*<<< orphan*/  AES_BLOCK_SIZE ; 
 int CRYPTO_ALG_SUB_TYPE_CBC ; 
 int CRYPTO_ALG_SUB_TYPE_CTR ; 
 int CRYPTO_ALG_SUB_TYPE_XTS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct chcr_blkcipher_req_ctx* FUNC1 (struct ablkcipher_request*) ; 
 int FUNC2 (struct ablkcipher_request*,int /*<<< orphan*/ *,int) ; 
 struct crypto_ablkcipher* FUNC3 (struct ablkcipher_request*) ; 
 int /*<<< orphan*/  FUNC4 (struct crypto_ablkcipher*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(struct ablkcipher_request *req,
				   struct cpl_fw6_pld *fw6_pld, u8 *iv)
{
	struct crypto_ablkcipher *tfm = FUNC3(req);
	struct chcr_blkcipher_req_ctx *reqctx = FUNC1(req);
	int subtype = FUNC6(FUNC4(tfm));
	int ret = 0;

	if (subtype == CRYPTO_ALG_SUB_TYPE_CTR)
		FUNC5(iv, req->info, FUNC0(reqctx->processed,
						       AES_BLOCK_SIZE));
	else if (subtype == CRYPTO_ALG_SUB_TYPE_XTS)
		ret = FUNC2(req, iv, 1);
	else if (subtype == CRYPTO_ALG_SUB_TYPE_CBC) {
		/*Already updated for Decrypt*/
		if (!reqctx->op)
			FUNC7(iv, &fw6_pld->data[2], AES_BLOCK_SIZE);

	}
	return ret;

}