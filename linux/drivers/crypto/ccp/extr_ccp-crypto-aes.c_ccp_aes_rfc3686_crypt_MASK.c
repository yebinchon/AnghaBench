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
struct TYPE_4__ {int /*<<< orphan*/ * nonce; } ;
struct TYPE_5__ {TYPE_1__ aes; } ;
struct ccp_ctx {TYPE_2__ u; } ;
struct ccp_aes_req_ctx {int /*<<< orphan*/ * rfc3686_iv; int /*<<< orphan*/ * rfc3686_info; } ;
struct TYPE_6__ {int /*<<< orphan*/  tfm; } ;
struct ablkcipher_request {int /*<<< orphan*/ * info; TYPE_3__ base; } ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 int /*<<< orphan*/  CTR_RFC3686_IV_SIZE ; 
 int /*<<< orphan*/  CTR_RFC3686_NONCE_SIZE ; 
 struct ccp_aes_req_ctx* FUNC0 (struct ablkcipher_request*) ; 
 int FUNC1 (struct ablkcipher_request*,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 struct ccp_ctx* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct ablkcipher_request *req, bool encrypt)
{
	struct ccp_ctx *ctx = FUNC3(req->base.tfm);
	struct ccp_aes_req_ctx *rctx = FUNC0(req);
	u8 *iv;

	/* Initialize the CTR block */
	iv = rctx->rfc3686_iv;
	FUNC4(iv, ctx->u.aes.nonce, CTR_RFC3686_NONCE_SIZE);

	iv += CTR_RFC3686_NONCE_SIZE;
	FUNC4(iv, req->info, CTR_RFC3686_IV_SIZE);

	iv += CTR_RFC3686_IV_SIZE;
	*(__be32 *)iv = FUNC2(1);

	/* Point to the new IV */
	rctx->rfc3686_info = req->info;
	req->info = rctx->rfc3686_iv;

	return FUNC1(req, encrypt);
}