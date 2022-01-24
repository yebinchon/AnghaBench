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
struct mtk_cryp {int dummy; } ;
struct mtk_aes_reqctx {int dummy; } ;
struct mtk_aes_rec {int (* resume ) (struct mtk_cryp*,struct mtk_aes_rec*) ;scalar_t__ total; int /*<<< orphan*/  areq; int /*<<< orphan*/  ctx; } ;
struct mtk_aes_ctr_ctx {scalar_t__ offset; int /*<<< orphan*/  iv; } ;
struct ablkcipher_request {int /*<<< orphan*/  info; } ;

/* Variables and functions */
 int /*<<< orphan*/  AES_BLOCK_SIZE ; 
 struct ablkcipher_request* FUNC0 (int /*<<< orphan*/ ) ; 
 struct mtk_aes_reqctx* FUNC1 (struct ablkcipher_request*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct mtk_aes_ctr_ctx* FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (struct mtk_cryp*,struct mtk_aes_rec*) ; 
 int /*<<< orphan*/  FUNC5 (struct mtk_aes_rec*,struct mtk_aes_reqctx*) ; 

__attribute__((used)) static int FUNC6(struct mtk_cryp *cryp, struct mtk_aes_rec *aes)
{
	struct mtk_aes_ctr_ctx *cctx = FUNC3(aes->ctx);
	struct ablkcipher_request *req = FUNC0(aes->areq);
	struct mtk_aes_reqctx *rctx = FUNC1(req);

	FUNC5(aes, rctx);

	FUNC2(cctx->iv, req->info, AES_BLOCK_SIZE);
	cctx->offset = 0;
	aes->total = 0;
	aes->resume = mtk_aes_ctr_transfer;

	return FUNC4(cryp, aes);
}