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
struct artpec6_crypto_aead_req_ctx {int decrypt; int /*<<< orphan*/  common; } ;
struct aead_request {int /*<<< orphan*/  base; } ;

/* Variables and functions */
 struct artpec6_crypto_aead_req_ctx* FUNC0 (struct aead_request*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  artpec6_crypto_complete_aead ; 
 int FUNC3 (struct aead_request*) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct aead_request *req)
{
	int ret;
	struct artpec6_crypto_aead_req_ctx *req_ctx = FUNC0(req);

	req_ctx->decrypt = false;
	ret = FUNC2(&req_ctx->common, &req->base,
				  artpec6_crypto_complete_aead,
				  NULL, 0);
	if (ret)
		return ret;

	ret = FUNC3(req);
	if (ret) {
		FUNC1(&req_ctx->common);
		return ret;
	}

	return FUNC4(&req_ctx->common);
}