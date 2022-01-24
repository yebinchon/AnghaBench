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
struct nx842_driver {int /*<<< orphan*/  workmem_size; } ;
struct nx842_crypto_ctx {int /*<<< orphan*/ * dbounce; int /*<<< orphan*/ * sbounce; int /*<<< orphan*/  wmem; struct nx842_driver* driver; int /*<<< orphan*/  lock; } ;
struct crypto_tfm {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  BOUNCE_BUFFER_ORDER ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct nx842_crypto_ctx* FUNC1 (struct crypto_tfm*) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

int FUNC6(struct crypto_tfm *tfm, struct nx842_driver *driver)
{
	struct nx842_crypto_ctx *ctx = FUNC1(tfm);

	FUNC5(&ctx->lock);
	ctx->driver = driver;
	ctx->wmem = FUNC4(driver->workmem_size, GFP_KERNEL);
	ctx->sbounce = (u8 *)FUNC0(GFP_KERNEL, BOUNCE_BUFFER_ORDER);
	ctx->dbounce = (u8 *)FUNC0(GFP_KERNEL, BOUNCE_BUFFER_ORDER);
	if (!ctx->wmem || !ctx->sbounce || !ctx->dbounce) {
		FUNC3(ctx->wmem);
		FUNC2((unsigned long)ctx->sbounce);
		FUNC2((unsigned long)ctx->dbounce);
		return -ENOMEM;
	}

	return 0;
}