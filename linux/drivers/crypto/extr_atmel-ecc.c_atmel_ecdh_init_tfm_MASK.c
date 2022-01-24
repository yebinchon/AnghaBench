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
struct crypto_kpp {int /*<<< orphan*/  dev; } ;
struct atmel_ecdh_ctx {struct crypto_kpp* fallback; struct crypto_kpp* client; } ;

/* Variables and functions */
 int /*<<< orphan*/  CRYPTO_ALG_NEED_FALLBACK ; 
 scalar_t__ FUNC0 (struct crypto_kpp*) ; 
 int FUNC1 (struct crypto_kpp*) ; 
 struct crypto_kpp* FUNC2 () ; 
 struct crypto_kpp* FUNC3 (char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct crypto_kpp*) ; 
 int /*<<< orphan*/  FUNC5 (struct crypto_kpp*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*,char const*,int) ; 
 char* FUNC7 (struct crypto_kpp*) ; 
 struct atmel_ecdh_ctx* FUNC8 (struct crypto_kpp*) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 

__attribute__((used)) static int FUNC10(struct crypto_kpp *tfm)
{
	const char *alg = FUNC7(tfm);
	struct crypto_kpp *fallback;
	struct atmel_ecdh_ctx *ctx = FUNC8(tfm);

	ctx->client = FUNC2();
	if (FUNC0(ctx->client)) {
		FUNC9("tfm - i2c_client binding failed\n");
		return FUNC1(ctx->client);
	}

	fallback = FUNC3(alg, 0, CRYPTO_ALG_NEED_FALLBACK);
	if (FUNC0(fallback)) {
		FUNC6(&ctx->client->dev, "Failed to allocate transformation for '%s': %ld\n",
			alg, FUNC1(fallback));
		return FUNC1(fallback);
	}

	FUNC5(fallback, FUNC4(tfm));
	ctx->fallback = fallback;

	return 0;
}