#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int algo_flags; } ;
struct safexcel_crypto_priv {TYPE_1__ hwconfig; } ;
struct TYPE_6__ {int /*<<< orphan*/  ahash; int /*<<< orphan*/  aead; int /*<<< orphan*/  skcipher; } ;
struct TYPE_7__ {int algo_mask; scalar_t__ type; TYPE_2__ alg; } ;

/* Variables and functions */
 int FUNC0 (TYPE_3__**) ; 
 scalar_t__ SAFEXCEL_ALG_TYPE_AEAD ; 
 scalar_t__ SAFEXCEL_ALG_TYPE_SKCIPHER ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 TYPE_3__** safexcel_algs ; 

__attribute__((used)) static void FUNC4(struct safexcel_crypto_priv *priv)
{
	int i;

	for (i = 0; i < FUNC0(safexcel_algs); i++) {
		/* Do we have all required base algorithms available? */
		if ((safexcel_algs[i]->algo_mask & priv->hwconfig.algo_flags) !=
		    safexcel_algs[i]->algo_mask)
			/* No, so don't unregister this ciphersuite */
			continue;

		if (safexcel_algs[i]->type == SAFEXCEL_ALG_TYPE_SKCIPHER)
			FUNC3(&safexcel_algs[i]->alg.skcipher);
		else if (safexcel_algs[i]->type == SAFEXCEL_ALG_TYPE_AEAD)
			FUNC1(&safexcel_algs[i]->alg.aead);
		else
			FUNC2(&safexcel_algs[i]->alg.ahash);
	}
}