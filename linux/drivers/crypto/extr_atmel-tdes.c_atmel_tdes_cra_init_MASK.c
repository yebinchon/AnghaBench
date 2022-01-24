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
struct TYPE_2__ {int reqsize; } ;
struct crypto_tfm {TYPE_1__ crt_ablkcipher; } ;
struct atmel_tdes_reqctx {int dummy; } ;
struct atmel_tdes_dev {int dummy; } ;
struct atmel_tdes_ctx {int dummy; } ;

/* Variables and functions */
 int ENODEV ; 
 struct atmel_tdes_dev* FUNC0 (struct atmel_tdes_ctx*) ; 
 struct atmel_tdes_ctx* FUNC1 (struct crypto_tfm*) ; 

__attribute__((used)) static int FUNC2(struct crypto_tfm *tfm)
{
	struct atmel_tdes_ctx *ctx = FUNC1(tfm);
	struct atmel_tdes_dev *dd;

	tfm->crt_ablkcipher.reqsize = sizeof(struct atmel_tdes_reqctx);

	dd = FUNC0(ctx);
	if (!dd)
		return -ENODEV;

	return 0;
}