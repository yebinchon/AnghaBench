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
struct exynos_rng_dev {int /*<<< orphan*/  clk; int /*<<< orphan*/  lock; } ;
struct exynos_rng_ctx {struct exynos_rng_dev* rng; } ;
struct crypto_rng {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 struct exynos_rng_ctx* FUNC2 (struct crypto_rng*) ; 
 int FUNC3 (struct exynos_rng_dev*,int /*<<< orphan*/ *,unsigned int,unsigned int*) ; 
 int /*<<< orphan*/  FUNC4 (struct exynos_rng_dev*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7(struct crypto_rng *tfm,
			       const u8 *src, unsigned int slen,
			       u8 *dst, unsigned int dlen)
{
	struct exynos_rng_ctx *ctx = FUNC2(tfm);
	struct exynos_rng_dev *rng = ctx->rng;
	unsigned int read = 0;
	int ret;

	ret = FUNC1(rng->clk);
	if (ret)
		return ret;

	FUNC5(&rng->lock);
	do {
		ret = FUNC3(rng, dst, dlen, &read);
		if (ret)
			break;

		dlen -= read;
		dst += read;

		FUNC4(rng);
	} while (dlen > 0);
	FUNC6(&rng->lock);

	FUNC0(rng->clk);

	return ret;
}