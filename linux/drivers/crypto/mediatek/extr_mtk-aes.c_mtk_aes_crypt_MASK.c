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
typedef  int u64 ;
struct mtk_cryp {int dummy; } ;
struct mtk_aes_reqctx {int mode; } ;
struct mtk_aes_base_ctx {int dummy; } ;
struct crypto_ablkcipher {int dummy; } ;
struct ablkcipher_request {int /*<<< orphan*/  base; } ;

/* Variables and functions */
 int AES_FLAGS_ENCRYPT ; 
 int ENODEV ; 
 struct mtk_aes_reqctx* FUNC0 (struct ablkcipher_request*) ; 
 struct mtk_aes_base_ctx* FUNC1 (struct crypto_ablkcipher*) ; 
 struct crypto_ablkcipher* FUNC2 (struct ablkcipher_request*) ; 
 struct mtk_cryp* FUNC3 (struct mtk_aes_base_ctx*) ; 
 int FUNC4 (struct mtk_cryp*,int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct ablkcipher_request *req, u64 mode)
{
	struct crypto_ablkcipher *ablkcipher = FUNC2(req);
	struct mtk_aes_base_ctx *ctx = FUNC1(ablkcipher);
	struct mtk_aes_reqctx *rctx;
	struct mtk_cryp *cryp;

	cryp = FUNC3(ctx);
	if (!cryp)
		return -ENODEV;

	rctx = FUNC0(req);
	rctx->mode = mode;

	return FUNC4(cryp, !(mode & AES_FLAGS_ENCRYPT),
				    &req->base);
}