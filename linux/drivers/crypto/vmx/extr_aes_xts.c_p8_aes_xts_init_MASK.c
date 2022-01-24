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
struct skcipher_request {int dummy; } ;
struct p8_aes_xts_ctx {struct crypto_skcipher* fallback; } ;
struct crypto_skcipher {int dummy; } ;

/* Variables and functions */
 int CRYPTO_ALG_ASYNC ; 
 int CRYPTO_ALG_NEED_FALLBACK ; 
 scalar_t__ FUNC0 (struct crypto_skcipher*) ; 
 int FUNC1 (struct crypto_skcipher*) ; 
 struct crypto_skcipher* FUNC2 (char*,int /*<<< orphan*/ ,int) ; 
 struct p8_aes_xts_ctx* FUNC3 (struct crypto_skcipher*) ; 
 scalar_t__ FUNC4 (struct crypto_skcipher*) ; 
 int /*<<< orphan*/  FUNC5 (struct crypto_skcipher*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (char*,int) ; 

__attribute__((used)) static int FUNC7(struct crypto_skcipher *tfm)
{
	struct p8_aes_xts_ctx *ctx = FUNC3(tfm);
	struct crypto_skcipher *fallback;

	fallback = FUNC2("xts(aes)", 0,
					 CRYPTO_ALG_NEED_FALLBACK |
					 CRYPTO_ALG_ASYNC);
	if (FUNC0(fallback)) {
		FUNC6("Failed to allocate xts(aes) fallback: %ld\n",
		       FUNC1(fallback));
		return FUNC1(fallback);
	}

	FUNC5(tfm, sizeof(struct skcipher_request) +
				    FUNC4(fallback));
	ctx->fallback = fallback;
	return 0;
}