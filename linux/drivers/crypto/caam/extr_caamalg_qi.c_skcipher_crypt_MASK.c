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
struct skcipher_request {int /*<<< orphan*/  cryptlen; } ;
struct skcipher_edesc {int /*<<< orphan*/  drv_req; } ;
struct crypto_skcipher {int dummy; } ;
struct caam_ctx {int /*<<< orphan*/  qidev; } ;

/* Variables and functions */
 int EAGAIN ; 
 int EINPROGRESS ; 
 scalar_t__ FUNC0 (struct skcipher_edesc*) ; 
 int FUNC1 (struct skcipher_edesc*) ; 
 int /*<<< orphan*/  caam_congested ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct caam_ctx* FUNC3 (struct crypto_skcipher*) ; 
 struct crypto_skcipher* FUNC4 (struct skcipher_request*) ; 
 int /*<<< orphan*/  FUNC5 (struct skcipher_edesc*) ; 
 struct skcipher_edesc* FUNC6 (struct skcipher_request*,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,struct skcipher_edesc*,struct skcipher_request*) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline int FUNC9(struct skcipher_request *req, bool encrypt)
{
	struct skcipher_edesc *edesc;
	struct crypto_skcipher *skcipher = FUNC4(req);
	struct caam_ctx *ctx = FUNC3(skcipher);
	int ret;

	if (!req->cryptlen)
		return 0;

	if (FUNC8(caam_congested))
		return -EAGAIN;

	/* allocate extended descriptor */
	edesc = FUNC6(req, encrypt);
	if (FUNC0(edesc))
		return FUNC1(edesc);

	ret = FUNC2(ctx->qidev, &edesc->drv_req);
	if (!ret) {
		ret = -EINPROGRESS;
	} else {
		FUNC7(ctx->qidev, edesc, req);
		FUNC5(edesc);
	}

	return ret;
}