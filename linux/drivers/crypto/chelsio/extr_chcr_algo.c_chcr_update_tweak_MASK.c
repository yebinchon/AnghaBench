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
typedef  int /*<<< orphan*/  u32 ;
struct crypto_aes_ctx {int dummy; } ;
struct crypto_ablkcipher {int dummy; } ;
struct chcr_blkcipher_req_ctx {int last_req_len; int /*<<< orphan*/  iv; } ;
struct ablkcipher_request {int dummy; } ;
struct ablk_ctx {int enckey_len; int /*<<< orphan*/ * key; } ;
typedef  int /*<<< orphan*/  le128 ;
typedef  int /*<<< orphan*/  aes ;

/* Variables and functions */
 struct ablk_ctx* FUNC0 (int /*<<< orphan*/ ) ; 
 int AES_BLOCK_SIZE ; 
 struct chcr_blkcipher_req_ctx* FUNC1 (struct ablkcipher_request*) ; 
 int /*<<< orphan*/  FUNC2 (struct crypto_aes_ctx*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct crypto_aes_ctx*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC4 (struct crypto_aes_ctx*,int /*<<< orphan*/ *,unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (struct crypto_ablkcipher*) ; 
 struct crypto_ablkcipher* FUNC6 (struct ablkcipher_request*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (struct crypto_aes_ctx*,int) ; 

__attribute__((used)) static int FUNC11(struct ablkcipher_request *req, u8 *iv,
			     u32 isfinal)
{
	struct crypto_ablkcipher *tfm = FUNC6(req);
	struct ablk_ctx *ablkctx = FUNC0(FUNC5(tfm));
	struct chcr_blkcipher_req_ctx *reqctx = FUNC1(req);
	struct crypto_aes_ctx aes;
	int ret, i;
	u8 *key;
	unsigned int keylen;
	int round = reqctx->last_req_len / AES_BLOCK_SIZE;
	int round8 = round / 8;

	FUNC9(iv, reqctx->iv, AES_BLOCK_SIZE);

	keylen = ablkctx->enckey_len / 2;
	key = ablkctx->key + keylen;
	ret = FUNC4(&aes, key, keylen);
	if (ret)
		return ret;
	FUNC3(&aes, iv, iv);
	for (i = 0; i < round8; i++)
		FUNC7((le128 *)iv, (le128 *)iv);

	for (i = 0; i < (round % 8); i++)
		FUNC8((le128 *)iv, (le128 *)iv);

	if (!isfinal)
		FUNC2(&aes, iv, iv);

	FUNC10(&aes, sizeof(aes));
	return 0;
}