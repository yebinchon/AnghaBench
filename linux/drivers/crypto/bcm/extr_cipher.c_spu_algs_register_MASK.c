#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct device {int dummy; } ;
struct TYPE_7__ {int /*<<< orphan*/  aead; int /*<<< orphan*/  hash; int /*<<< orphan*/  crypto; } ;
struct TYPE_8__ {int type; int registered; TYPE_1__ alg; } ;

/* Variables and functions */
 int FUNC0 (TYPE_2__*) ; 
#define  CRYPTO_ALG_TYPE_ABLKCIPHER 130 
#define  CRYPTO_ALG_TYPE_AEAD 129 
#define  CRYPTO_ALG_TYPE_AHASH 128 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct device*,char*,int) ; 
 TYPE_2__* driver_algs ; 
 int FUNC5 (TYPE_2__*) ; 
 int FUNC6 (TYPE_2__*) ; 
 int FUNC7 (TYPE_2__*) ; 

__attribute__((used)) static int FUNC8(struct device *dev)
{
	int i, j;
	int err;

	for (i = 0; i < FUNC0(driver_algs); i++) {
		switch (driver_algs[i].type) {
		case CRYPTO_ALG_TYPE_ABLKCIPHER:
			err = FUNC5(&driver_algs[i]);
			break;
		case CRYPTO_ALG_TYPE_AHASH:
			err = FUNC7(&driver_algs[i]);
			break;
		case CRYPTO_ALG_TYPE_AEAD:
			err = FUNC6(&driver_algs[i]);
			break;
		default:
			FUNC4(dev,
				"iproc-crypto: unknown alg type: %d",
				driver_algs[i].type);
			err = -EINVAL;
		}

		if (err) {
			FUNC4(dev, "alg registration failed with error %d\n",
				err);
			goto err_algs;
		}
	}

	return 0;

err_algs:
	for (j = 0; j < i; j++) {
		/* Skip any algorithm not registered */
		if (!driver_algs[j].registered)
			continue;
		switch (driver_algs[j].type) {
		case CRYPTO_ALG_TYPE_ABLKCIPHER:
			FUNC3(&driver_algs[j].alg.crypto);
			driver_algs[j].registered = false;
			break;
		case CRYPTO_ALG_TYPE_AHASH:
			FUNC2(&driver_algs[j].alg.hash);
			driver_algs[j].registered = false;
			break;
		case CRYPTO_ALG_TYPE_AEAD:
			FUNC1(&driver_algs[j].alg.aead);
			driver_algs[j].registered = false;
			break;
		}
	}
	return err;
}