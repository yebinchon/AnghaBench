#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct sahara_ctx {int /*<<< orphan*/  fallback; } ;
struct sahara_aes_reqctx {int dummy; } ;
struct TYPE_2__ {int reqsize; } ;
struct crypto_tfm {TYPE_1__ crt_ablkcipher; } ;

/* Variables and functions */
 int /*<<< orphan*/  CRYPTO_ALG_NEED_FALLBACK ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 char* FUNC3 (struct crypto_tfm*) ; 
 struct sahara_ctx* FUNC4 (struct crypto_tfm*) ; 
 int /*<<< orphan*/  FUNC5 (char*,char const*) ; 

__attribute__((used)) static int FUNC6(struct crypto_tfm *tfm)
{
	const char *name = FUNC3(tfm);
	struct sahara_ctx *ctx = FUNC4(tfm);

	ctx->fallback = FUNC2(name, 0,
					      CRYPTO_ALG_NEED_FALLBACK);
	if (FUNC0(ctx->fallback)) {
		FUNC5("Error allocating fallback algo %s\n", name);
		return FUNC1(ctx->fallback);
	}

	tfm->crt_ablkcipher.reqsize = sizeof(struct sahara_aes_reqctx);

	return 0;
}