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
struct TYPE_4__ {TYPE_1__* pdev; } ;
struct uld_ctx {TYPE_2__ lldi; } ;
struct crypto_aead {int dummy; } ;
struct chcr_aead_reqctx {int /*<<< orphan*/  op; } ;
struct aead_request {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 struct uld_ctx* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct crypto_aead*) ; 
 struct chcr_aead_reqctx* FUNC2 (struct aead_request*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct aead_request*,int /*<<< orphan*/ ) ; 
 struct crypto_aead* FUNC4 (struct aead_request*) ; 

inline void FUNC5(struct aead_request *req)
{
	struct chcr_aead_reqctx  *reqctx = FUNC2(req);
	struct crypto_aead *tfm = FUNC4(req);
	struct uld_ctx *u_ctx = FUNC0(FUNC1(tfm));

	FUNC3(&u_ctx->lldi.pdev->dev, req, reqctx->op);
}