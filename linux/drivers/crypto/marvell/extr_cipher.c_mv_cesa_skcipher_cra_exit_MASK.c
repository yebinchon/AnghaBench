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
struct crypto_tfm {TYPE_1__* __crt_alg; } ;
struct TYPE_2__ {int /*<<< orphan*/  cra_ctxsize; } ;

/* Variables and functions */
 void* FUNC0 (struct crypto_tfm*) ; 
 int /*<<< orphan*/  FUNC1 (void*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct crypto_tfm *tfm)
{
	void *ctx = FUNC0(tfm);

	FUNC1(ctx, tfm->__crt_alg->cra_ctxsize);
}