#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct crypto_tfm {int dummy; } ;
struct atmel_sha_reqctx {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  start; } ;
struct atmel_sha_hmac_ctx {int /*<<< orphan*/  hkey; TYPE_1__ base; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct crypto_tfm*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  atmel_sha_hmac_start ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 struct atmel_sha_hmac_ctx* FUNC3 (struct crypto_tfm*) ; 

__attribute__((used)) static int FUNC4(struct crypto_tfm *tfm)
{
	struct atmel_sha_hmac_ctx *hmac = FUNC3(tfm);

	FUNC2(FUNC0(tfm),
				 sizeof(struct atmel_sha_reqctx));
	hmac->base.start = atmel_sha_hmac_start;
	FUNC1(&hmac->hkey);

	return 0;
}