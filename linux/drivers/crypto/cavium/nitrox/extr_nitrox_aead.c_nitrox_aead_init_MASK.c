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
typedef  int /*<<< orphan*/  u8 ;
struct TYPE_6__ {uintptr_t ctx_handle; TYPE_2__* fctx; } ;
struct nitrox_crypto_ctx {TYPE_3__ u; struct crypto_ctx_hdr* chdr; int /*<<< orphan*/  ndev; } ;
struct ctx_hdr {int dummy; } ;
struct crypto_ctx_hdr {scalar_t__ vaddr; } ;
struct crypto_aead {int dummy; } ;
struct TYPE_4__ {scalar_t__ f; } ;
struct TYPE_5__ {TYPE_1__ flags; } ;

/* Variables and functions */
 int ENODEV ; 
 int ENOMEM ; 
 struct nitrox_crypto_ctx* FUNC0 (struct crypto_aead*) ; 
 struct crypto_ctx_hdr* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct crypto_aead *aead)
{
	struct nitrox_crypto_ctx *nctx = FUNC0(aead);
	struct crypto_ctx_hdr *chdr;

	/* get the first device */
	nctx->ndev = FUNC2();
	if (!nctx->ndev)
		return -ENODEV;

	/* allocate nitrox crypto context */
	chdr = FUNC1(nctx->ndev);
	if (!chdr) {
		FUNC3(nctx->ndev);
		return -ENOMEM;
	}
	nctx->chdr = chdr;
	nctx->u.ctx_handle = (uintptr_t)((u8 *)chdr->vaddr +
					 sizeof(struct ctx_hdr));
	nctx->u.fctx->flags.f = 0;

	return 0;
}