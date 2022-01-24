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
struct qcom_rng_ctx {struct qcom_rng* rng; } ;
struct qcom_rng {int /*<<< orphan*/  clk; int /*<<< orphan*/  lock; } ;
struct crypto_rng {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 struct qcom_rng_ctx* FUNC2 (struct crypto_rng*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (struct qcom_rng*,int /*<<< orphan*/ *,unsigned int) ; 

__attribute__((used)) static int FUNC6(struct crypto_rng *tfm,
			     const u8 *src, unsigned int slen,
			     u8 *dstn, unsigned int dlen)
{
	struct qcom_rng_ctx *ctx = FUNC2(tfm);
	struct qcom_rng *rng = ctx->rng;
	int ret;

	ret = FUNC1(rng->clk);
	if (ret)
		return ret;

	FUNC3(&rng->lock);

	ret = FUNC5(rng, dstn, dlen);

	FUNC4(&rng->lock);
	FUNC0(rng->clk);

	return 0;
}