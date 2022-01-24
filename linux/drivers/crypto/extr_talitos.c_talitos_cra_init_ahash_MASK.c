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
struct talitos_ctx {scalar_t__ keylen; } ;
struct talitos_ahash_req_ctx {int dummy; } ;
struct crypto_tfm {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct crypto_tfm*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 struct talitos_ctx* FUNC2 (struct crypto_tfm*) ; 
 int /*<<< orphan*/  FUNC3 (struct crypto_tfm*) ; 

__attribute__((used)) static int FUNC4(struct crypto_tfm *tfm)
{
	struct talitos_ctx *ctx = FUNC2(tfm);

	FUNC3(tfm);

	ctx->keylen = 0;
	FUNC1(FUNC0(tfm),
				 sizeof(struct talitos_ahash_req_ctx));

	return 0;
}