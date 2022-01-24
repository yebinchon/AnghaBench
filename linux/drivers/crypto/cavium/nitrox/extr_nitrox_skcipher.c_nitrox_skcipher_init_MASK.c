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
typedef  int /*<<< orphan*/  u8 ;
struct nitrox_kcrypt_request {int dummy; } ;
struct TYPE_2__ {uintptr_t ctx_handle; } ;
struct nitrox_crypto_ctx {TYPE_1__ u; struct crypto_ctx_hdr* chdr; int /*<<< orphan*/  ndev; } ;
struct ctx_hdr {int dummy; } ;
struct crypto_skcipher {int dummy; } ;
struct crypto_ctx_hdr {scalar_t__ vaddr; } ;

/* Variables and functions */
 int ENODEV ; 
 int ENOMEM ; 
 struct crypto_ctx_hdr* FUNC0 (int /*<<< orphan*/ ) ; 
 struct nitrox_crypto_ctx* FUNC1 (struct crypto_skcipher*) ; 
 scalar_t__ FUNC2 (struct crypto_skcipher*) ; 
 int /*<<< orphan*/  FUNC3 (struct crypto_skcipher*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct crypto_skcipher *tfm)
{
	struct nitrox_crypto_ctx *nctx = FUNC1(tfm);
	struct crypto_ctx_hdr *chdr;

	/* get the first device */
	nctx->ndev = FUNC4();
	if (!nctx->ndev)
		return -ENODEV;

	/* allocate nitrox crypto context */
	chdr = FUNC0(nctx->ndev);
	if (!chdr) {
		FUNC5(nctx->ndev);
		return -ENOMEM;
	}
	nctx->chdr = chdr;
	nctx->u.ctx_handle = (uintptr_t)((u8 *)chdr->vaddr +
					 sizeof(struct ctx_hdr));
	FUNC3(tfm, FUNC2(tfm) +
				    sizeof(struct nitrox_kcrypt_request));
	return 0;
}