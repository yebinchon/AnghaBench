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
struct omap_aes_reqctx {scalar_t__ iv; } ;
struct omap_aes_ctx {int /*<<< orphan*/  nonce; } ;
struct aead_request {int /*<<< orphan*/  iv; } ;

/* Variables and functions */
 int FLAGS_GCM ; 
 int FLAGS_RFC4106_GCM ; 
 struct omap_aes_reqctx* FUNC0 (struct aead_request*) ; 
 struct omap_aes_ctx* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct aead_request*) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int /*<<< orphan*/ ,int) ; 
 int FUNC4 (struct aead_request*,int) ; 

int FUNC5(struct aead_request *req)
{
	struct omap_aes_ctx *ctx = FUNC1(FUNC2(req));
	struct omap_aes_reqctx *rctx = FUNC0(req);

	FUNC3(rctx->iv, ctx->nonce, 4);
	FUNC3(rctx->iv + 4, req->iv, 8);
	return FUNC4(req, FLAGS_GCM | FLAGS_RFC4106_GCM);
}