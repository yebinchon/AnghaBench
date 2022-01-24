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
struct crypto_aead {int dummy; } ;
struct chcr_aead_reqctx {int dummy; } ;
struct chcr_aead_ctx {int /*<<< orphan*/  sw_cipher; } ;
struct aead_request {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  cra_name; } ;
struct aead_alg {TYPE_1__ base; } ;

/* Variables and functions */
 struct chcr_aead_ctx* FUNC0 (int /*<<< orphan*/ ) ; 
 int CRYPTO_ALG_ASYNC ; 
 int CRYPTO_ALG_NEED_FALLBACK ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct crypto_aead*) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 struct aead_alg* FUNC5 (struct crypto_aead*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct crypto_aead*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (int,scalar_t__) ; 

__attribute__((used)) static int FUNC10(struct crypto_aead *tfm)
{
	struct chcr_aead_ctx *aeadctx = FUNC0(FUNC3(tfm));
	struct aead_alg *alg = FUNC5(tfm);

	aeadctx->sw_cipher = FUNC8(alg->base.cra_name, 0,
					       CRYPTO_ALG_NEED_FALLBACK |
					       CRYPTO_ALG_ASYNC);
	if  (FUNC1(aeadctx->sw_cipher))
		return FUNC2(aeadctx->sw_cipher);
	FUNC7(tfm, FUNC9(sizeof(struct chcr_aead_reqctx),
				 sizeof(struct aead_request) +
				 FUNC6(aeadctx->sw_cipher)));
	return FUNC4(FUNC3(tfm));
}