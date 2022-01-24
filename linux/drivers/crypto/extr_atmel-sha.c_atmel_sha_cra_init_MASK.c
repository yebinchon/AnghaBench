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
struct crypto_tfm {int dummy; } ;
struct atmel_sha_reqctx {int dummy; } ;
struct atmel_sha_ctx {int /*<<< orphan*/  start; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct crypto_tfm*) ; 
 int /*<<< orphan*/  atmel_sha_start ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 struct atmel_sha_ctx* FUNC2 (struct crypto_tfm*) ; 

__attribute__((used)) static int FUNC3(struct crypto_tfm *tfm)
{
	struct atmel_sha_ctx *ctx = FUNC2(tfm);

	FUNC1(FUNC0(tfm),
				 sizeof(struct atmel_sha_reqctx));
	ctx->start = atmel_sha_start;

	return 0;
}