#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct crypto_tfm {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  tfm_skcipher; } ;
struct TYPE_4__ {TYPE_1__ aes; } ;
struct ccp_ctx {TYPE_2__ u; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct ccp_ctx* FUNC1 (struct crypto_tfm*) ; 

__attribute__((used)) static void FUNC2(struct crypto_tfm *tfm)
{
	struct ccp_ctx *ctx = FUNC1(tfm);

	FUNC0(ctx->u.aes.tfm_skcipher);
}