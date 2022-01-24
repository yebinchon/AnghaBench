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
struct skcipher_request {int /*<<< orphan*/  cryptlen; int /*<<< orphan*/  dst; int /*<<< orphan*/  base; } ;
struct crypto_skcipher {int dummy; } ;
struct artpec6_cryptotfm_context {int crypto_type; } ;
struct artpec6_crypto_request_context {int decrypt; int /*<<< orphan*/  common; } ;

/* Variables and functions */
#define  ARTPEC6_CRYPTO_CIPHER_AES_CBC 130 
#define  ARTPEC6_CRYPTO_CIPHER_AES_ECB 129 
#define  ARTPEC6_CRYPTO_CIPHER_AES_XTS 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,void (*) (struct crypto_async_request*),int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 void FUNC2 (struct crypto_async_request*) ; 
 void FUNC3 (struct crypto_async_request*) ; 
 int FUNC4 (struct skcipher_request*) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 struct artpec6_cryptotfm_context* FUNC6 (struct crypto_skcipher*) ; 
 struct crypto_skcipher* FUNC7 (struct skcipher_request*) ; 
 struct artpec6_crypto_request_context* FUNC8 (struct skcipher_request*) ; 

__attribute__((used)) static int FUNC9(struct skcipher_request *req)
{
	int ret;
	struct crypto_skcipher *cipher = FUNC7(req);
	struct artpec6_cryptotfm_context *ctx = FUNC6(cipher);
	struct artpec6_crypto_request_context *req_ctx = NULL;
	void (*complete)(struct crypto_async_request *req);

	req_ctx = FUNC8(req);

	switch (ctx->crypto_type) {
	case ARTPEC6_CRYPTO_CIPHER_AES_CBC:
	case ARTPEC6_CRYPTO_CIPHER_AES_ECB:
	case ARTPEC6_CRYPTO_CIPHER_AES_XTS:
		req_ctx->decrypt = 1;
		break;
	default:
		break;
	}


	switch (ctx->crypto_type) {
	case ARTPEC6_CRYPTO_CIPHER_AES_CBC:
		complete = artpec6_crypto_complete_cbc_decrypt;
		break;
	default:
		complete = artpec6_crypto_complete_crypto;
		break;
	}

	ret = FUNC1(&req_ctx->common, &req->base,
				  complete,
				  req->dst, req->cryptlen);
	if (ret)
		return ret;

	ret = FUNC4(req);
	if (ret) {
		FUNC0(&req_ctx->common);
		return ret;
	}

	return FUNC5(&req_ctx->common);
}