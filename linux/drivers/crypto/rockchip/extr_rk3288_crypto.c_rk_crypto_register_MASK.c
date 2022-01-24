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
struct rk_crypto_info {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  hash; int /*<<< orphan*/  crypto; } ;
struct TYPE_5__ {scalar_t__ type; TYPE_1__ alg; struct rk_crypto_info* dev; } ;

/* Variables and functions */
 scalar_t__ ALG_TYPE_CIPHER ; 
 unsigned int FUNC0 (TYPE_2__**) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 TYPE_2__** rk_cipher_algs ; 

__attribute__((used)) static int FUNC5(struct rk_crypto_info *crypto_info)
{
	unsigned int i, k;
	int err = 0;

	for (i = 0; i < FUNC0(rk_cipher_algs); i++) {
		rk_cipher_algs[i]->dev = crypto_info;
		if (rk_cipher_algs[i]->type == ALG_TYPE_CIPHER)
			err = FUNC2(
					&rk_cipher_algs[i]->alg.crypto);
		else
			err = FUNC1(
					&rk_cipher_algs[i]->alg.hash);
		if (err)
			goto err_cipher_algs;
	}
	return 0;

err_cipher_algs:
	for (k = 0; k < i; k++) {
		if (rk_cipher_algs[i]->type == ALG_TYPE_CIPHER)
			FUNC4(&rk_cipher_algs[k]->alg.crypto);
		else
			FUNC3(&rk_cipher_algs[i]->alg.hash);
	}
	return err;
}