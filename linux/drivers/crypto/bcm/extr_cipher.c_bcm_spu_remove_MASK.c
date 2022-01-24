#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_8__ ;
typedef  struct TYPE_16__   TYPE_7__ ;
typedef  struct TYPE_15__   TYPE_6__ ;
typedef  struct TYPE_14__   TYPE_5__ ;
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct device {int dummy; } ;
struct platform_device {struct device dev; } ;
struct TYPE_12__ {char* cra_driver_name; } ;
struct TYPE_17__ {TYPE_3__ base; } ;
struct TYPE_10__ {char* cra_driver_name; } ;
struct TYPE_11__ {TYPE_1__ base; } ;
struct TYPE_16__ {TYPE_2__ halg; } ;
struct TYPE_15__ {char* cra_driver_name; } ;
struct TYPE_13__ {TYPE_8__ aead; TYPE_7__ hash; TYPE_6__ crypto; } ;
struct TYPE_14__ {int registered; int type; TYPE_4__ alg; } ;

/* Variables and functions */
 int FUNC0 (TYPE_5__*) ; 
#define  CRYPTO_ALG_TYPE_ABLKCIPHER 130 
#define  CRYPTO_ALG_TYPE_AEAD 129 
#define  CRYPTO_ALG_TYPE_AHASH 128 
 int /*<<< orphan*/  FUNC1 (TYPE_8__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_7__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC4 (struct device*,char*,char*) ; 
 TYPE_5__* driver_algs ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (struct platform_device*) ; 

__attribute__((used)) static int FUNC7(struct platform_device *pdev)
{
	int i;
	struct device *dev = &pdev->dev;
	char *cdn;

	for (i = 0; i < FUNC0(driver_algs); i++) {
		/*
		 * Not all algorithms were registered, depending on whether
		 * hardware is SPU or SPU2.  So here we make sure to skip
		 * those algorithms that were not previously registered.
		 */
		if (!driver_algs[i].registered)
			continue;

		switch (driver_algs[i].type) {
		case CRYPTO_ALG_TYPE_ABLKCIPHER:
			FUNC3(&driver_algs[i].alg.crypto);
			FUNC4(dev, "  unregistered cipher %s\n",
				driver_algs[i].alg.crypto.cra_driver_name);
			driver_algs[i].registered = false;
			break;
		case CRYPTO_ALG_TYPE_AHASH:
			FUNC2(&driver_algs[i].alg.hash);
			cdn = driver_algs[i].alg.hash.halg.base.cra_driver_name;
			FUNC4(dev, "  unregistered hash %s\n", cdn);
			driver_algs[i].registered = false;
			break;
		case CRYPTO_ALG_TYPE_AEAD:
			FUNC1(&driver_algs[i].alg.aead);
			FUNC4(dev, "  unregistered aead %s\n",
				driver_algs[i].alg.aead.base.cra_driver_name);
			driver_algs[i].registered = false;
			break;
		}
	}
	FUNC5();
	FUNC6(pdev);
	return 0;
}