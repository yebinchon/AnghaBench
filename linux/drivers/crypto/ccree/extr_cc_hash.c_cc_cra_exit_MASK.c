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
struct device {int dummy; } ;
struct crypto_tfm {int dummy; } ;
struct cc_hash_ctx {int /*<<< orphan*/  drvdata; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct cc_hash_ctx*) ; 
 struct cc_hash_ctx* FUNC1 (struct crypto_tfm*) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*) ; 
 struct device* FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct crypto_tfm *tfm)
{
	struct cc_hash_ctx *ctx = FUNC1(tfm);
	struct device *dev = FUNC3(ctx->drvdata);

	FUNC2(dev, "cc_cra_exit");
	FUNC0(ctx);
}