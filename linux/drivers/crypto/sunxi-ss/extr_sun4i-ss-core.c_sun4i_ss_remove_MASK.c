#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct sun4i_ss_ctx {int /*<<< orphan*/  ssclk; int /*<<< orphan*/  busclk; scalar_t__ reset; scalar_t__ base; } ;
struct platform_device {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  rng; int /*<<< orphan*/  hash; int /*<<< orphan*/  crypto; } ;
struct TYPE_5__ {int type; TYPE_1__ alg; } ;

/* Variables and functions */
 int FUNC0 (TYPE_2__*) ; 
#define  CRYPTO_ALG_TYPE_AHASH 130 
#define  CRYPTO_ALG_TYPE_RNG 129 
#define  CRYPTO_ALG_TYPE_SKCIPHER 128 
 scalar_t__ SS_CTL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 struct sun4i_ss_ctx* FUNC5 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 
 TYPE_2__* ss_algs ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static int FUNC8(struct platform_device *pdev)
{
	int i;
	struct sun4i_ss_ctx *ss = FUNC5(pdev);

	for (i = 0; i < FUNC0(ss_algs); i++) {
		switch (ss_algs[i].type) {
		case CRYPTO_ALG_TYPE_SKCIPHER:
			FUNC4(&ss_algs[i].alg.crypto);
			break;
		case CRYPTO_ALG_TYPE_AHASH:
			FUNC2(&ss_algs[i].alg.hash);
			break;
		case CRYPTO_ALG_TYPE_RNG:
			FUNC3(&ss_algs[i].alg.rng);
			break;
		}
	}

	FUNC7(0, ss->base + SS_CTL);
	if (ss->reset)
		FUNC6(ss->reset);
	FUNC1(ss->busclk);
	FUNC1(ss->ssclk);
	return 0;
}