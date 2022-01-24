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
struct scatterlist {int dummy; } ;
struct qce_sha_ctx {int /*<<< orphan*/ * authkey; } ;
struct crypto_wait {int dummy; } ;
struct crypto_ahash {int /*<<< orphan*/  base; } ;
struct ahash_request {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CRYPTO_TFM_REQ_MAY_BACKLOG ; 
 int /*<<< orphan*/  CRYPTO_TFM_RES_BAD_KEY_LEN ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (struct crypto_ahash*) ; 
 int FUNC1 (struct crypto_ahash*) ; 
 scalar_t__ QCE_MAX_ALIGN_SIZE ; 
 unsigned int SHA1_DIGEST_SIZE ; 
 unsigned int SHA256_DIGEST_SIZE ; 
 struct ahash_request* FUNC2 (struct crypto_ahash*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ahash_request*) ; 
 int /*<<< orphan*/  FUNC4 (struct ahash_request*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct crypto_wait*) ; 
 int /*<<< orphan*/  FUNC5 (struct ahash_request*,struct scatterlist*,int /*<<< orphan*/ *,unsigned int) ; 
 int /*<<< orphan*/  FUNC6 (struct crypto_ahash*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct ahash_request*) ; 
 unsigned int FUNC8 (struct crypto_ahash*) ; 
 int /*<<< orphan*/  FUNC9 (struct crypto_ahash*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct crypto_ahash*) ; 
 struct crypto_ahash* FUNC11 (char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct crypto_ahash*) ; 
 int /*<<< orphan*/  FUNC13 (struct crypto_wait*) ; 
 int /*<<< orphan*/  crypto_req_done ; 
 unsigned int FUNC14 (int /*<<< orphan*/ ) ; 
 struct qce_sha_ctx* FUNC15 (int /*<<< orphan*/ *) ; 
 int FUNC16 (int /*<<< orphan*/ ,struct crypto_wait*) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC18 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,unsigned int) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC21 (struct scatterlist*,int /*<<< orphan*/ *,unsigned int) ; 

__attribute__((used)) static int FUNC22(struct crypto_ahash *tfm, const u8 *key,
				 unsigned int keylen)
{
	unsigned int digestsize = FUNC8(tfm);
	struct qce_sha_ctx *ctx = FUNC15(&tfm->base);
	struct crypto_wait wait;
	struct ahash_request *req;
	struct scatterlist sg;
	unsigned int blocksize;
	struct crypto_ahash *ahash_tfm;
	u8 *buf;
	int ret;
	const char *alg_name;

	blocksize = FUNC14(FUNC10(tfm));
	FUNC20(ctx->authkey, 0, sizeof(ctx->authkey));

	if (keylen <= blocksize) {
		FUNC19(ctx->authkey, key, keylen);
		return 0;
	}

	if (digestsize == SHA1_DIGEST_SIZE)
		alg_name = "sha1-qce";
	else if (digestsize == SHA256_DIGEST_SIZE)
		alg_name = "sha256-qce";
	else
		return -EINVAL;

	ahash_tfm = FUNC11(alg_name, 0, 0);
	if (FUNC0(ahash_tfm))
		return FUNC1(ahash_tfm);

	req = FUNC2(ahash_tfm, GFP_KERNEL);
	if (!req) {
		ret = -ENOMEM;
		goto err_free_ahash;
	}

	FUNC13(&wait);
	FUNC4(req, CRYPTO_TFM_REQ_MAY_BACKLOG,
				   crypto_req_done, &wait);
	FUNC6(ahash_tfm, ~0);

	buf = FUNC18(keylen + QCE_MAX_ALIGN_SIZE, GFP_KERNEL);
	if (!buf) {
		ret = -ENOMEM;
		goto err_free_req;
	}

	FUNC19(buf, key, keylen);
	FUNC21(&sg, buf, keylen);
	FUNC5(req, &sg, ctx->authkey, keylen);

	ret = FUNC16(FUNC7(req), &wait);
	if (ret)
		FUNC9(tfm, CRYPTO_TFM_RES_BAD_KEY_LEN);

	FUNC17(buf);
err_free_req:
	FUNC3(req);
err_free_ahash:
	FUNC12(ahash_tfm);
	return ret;
}