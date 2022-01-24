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
struct dcp_async_ctx {int /*<<< orphan*/  fallback; } ;
struct crypto_ablkcipher {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  flags; } ;
struct ablkcipher_request {int /*<<< orphan*/  info; int /*<<< orphan*/  nbytes; int /*<<< orphan*/  dst; int /*<<< orphan*/  src; TYPE_1__ base; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct dcp_async_ctx* FUNC1 (struct crypto_ablkcipher*) ; 
 struct crypto_ablkcipher* FUNC2 (struct ablkcipher_request*) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  subreq ; 

__attribute__((used)) static int FUNC9(struct ablkcipher_request *req, int enc)
{
	struct crypto_ablkcipher *tfm = FUNC2(req);
	struct dcp_async_ctx *ctx = FUNC1(tfm);
	FUNC0(subreq, ctx->fallback);
	int ret;

	FUNC7(subreq, ctx->fallback);
	FUNC5(subreq, req->base.flags, NULL, NULL);
	FUNC6(subreq, req->src, req->dst,
				   req->nbytes, req->info);

	if (enc)
		ret = FUNC4(subreq);
	else
		ret = FUNC3(subreq);

	FUNC8(subreq);

	return ret;
}