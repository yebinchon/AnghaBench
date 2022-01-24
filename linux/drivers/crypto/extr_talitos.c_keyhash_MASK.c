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
struct talitos_ctx {scalar_t__ keylen; } ;
struct scatterlist {int dummy; } ;
struct crypto_wait {int dummy; } ;
struct crypto_ahash {int dummy; } ;
struct ahash_request {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CRYPTO_TFM_REQ_MAY_BACKLOG ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 struct ahash_request* FUNC0 (struct crypto_ahash*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ahash_request*) ; 
 int /*<<< orphan*/  FUNC2 (struct ahash_request*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct crypto_wait*) ; 
 int /*<<< orphan*/  FUNC3 (struct ahash_request*,struct scatterlist*,int /*<<< orphan*/ *,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (struct ahash_request*) ; 
 int /*<<< orphan*/  FUNC5 (struct crypto_ahash*) ; 
 int /*<<< orphan*/  FUNC6 (struct crypto_wait*) ; 
 int /*<<< orphan*/  crypto_req_done ; 
 struct talitos_ctx* FUNC7 (int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/ ,struct crypto_wait*) ; 
 int /*<<< orphan*/  FUNC9 (struct scatterlist*,int /*<<< orphan*/  const*,unsigned int) ; 

__attribute__((used)) static int FUNC10(struct crypto_ahash *tfm, const u8 *key, unsigned int keylen,
		   u8 *hash)
{
	struct talitos_ctx *ctx = FUNC7(FUNC5(tfm));

	struct scatterlist sg[1];
	struct ahash_request *req;
	struct crypto_wait wait;
	int ret;

	FUNC6(&wait);

	req = FUNC0(tfm, GFP_KERNEL);
	if (!req)
		return -ENOMEM;

	/* Keep tfm keylen == 0 during hash of the long key */
	ctx->keylen = 0;
	FUNC2(req, CRYPTO_TFM_REQ_MAY_BACKLOG,
				   crypto_req_done, &wait);

	FUNC9(&sg[0], key, keylen);

	FUNC3(req, sg, hash, keylen);
	ret = FUNC8(FUNC4(req), &wait);

	FUNC1(req);

	return ret;
}