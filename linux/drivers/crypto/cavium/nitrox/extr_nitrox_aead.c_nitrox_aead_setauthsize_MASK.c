#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {unsigned int mac_len; } ;
union fc_ctx_flags {int /*<<< orphan*/  f; TYPE_2__ w0; } ;
struct TYPE_4__ {struct flexi_crypto_context* fctx; } ;
struct nitrox_crypto_ctx {TYPE_1__ u; } ;
struct TYPE_6__ {int /*<<< orphan*/  f; } ;
struct flexi_crypto_context {TYPE_3__ flags; } ;
struct crypto_aead {unsigned int authsize; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct nitrox_crypto_ctx* FUNC2 (struct crypto_aead*) ; 

__attribute__((used)) static int FUNC3(struct crypto_aead *aead,
				   unsigned int authsize)
{
	struct nitrox_crypto_ctx *nctx = FUNC2(aead);
	struct flexi_crypto_context *fctx = nctx->u.fctx;
	union fc_ctx_flags flags;

	flags.f = FUNC0(fctx->flags.f);
	flags.w0.mac_len = authsize;
	fctx->flags.f = FUNC1(flags.f);

	aead->authsize = authsize;

	return 0;
}