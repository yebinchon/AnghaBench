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
struct crypto_aead {int dummy; } ;
struct caam_ctx {int /*<<< orphan*/  qidev; } ;
struct aead_request {int dummy; } ;
struct aead_edesc {int /*<<< orphan*/  drv_req; } ;

/* Variables and functions */
 int EAGAIN ; 
 int EINPROGRESS ; 
 scalar_t__ FUNC0 (struct aead_edesc*) ; 
 int FUNC1 (struct aead_edesc*) ; 
 struct aead_edesc* FUNC2 (struct aead_request*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct aead_edesc*,struct aead_request*) ; 
 int /*<<< orphan*/  caam_congested ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct caam_ctx* FUNC5 (struct crypto_aead*) ; 
 struct crypto_aead* FUNC6 (struct aead_request*) ; 
 int /*<<< orphan*/  FUNC7 (struct aead_edesc*) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline int FUNC9(struct aead_request *req, bool encrypt)
{
	struct aead_edesc *edesc;
	struct crypto_aead *aead = FUNC6(req);
	struct caam_ctx *ctx = FUNC5(aead);
	int ret;

	if (FUNC8(caam_congested))
		return -EAGAIN;

	/* allocate extended descriptor */
	edesc = FUNC2(req, encrypt);
	if (FUNC0(edesc))
		return FUNC1(edesc);

	/* Create and submit job descriptor */
	ret = FUNC4(ctx->qidev, &edesc->drv_req);
	if (!ret) {
		ret = -EINPROGRESS;
	} else {
		FUNC3(ctx->qidev, edesc, req);
		FUNC7(edesc);
	}

	return ret;
}