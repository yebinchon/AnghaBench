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
struct sahara_ctx {scalar_t__ keylen; int /*<<< orphan*/  fallback; } ;
struct TYPE_2__ {int /*<<< orphan*/  flags; } ;
struct ablkcipher_request {int /*<<< orphan*/  info; int /*<<< orphan*/  nbytes; int /*<<< orphan*/  dst; int /*<<< orphan*/  src; TYPE_1__ base; } ;

/* Variables and functions */
 scalar_t__ AES_KEYSIZE_128 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct sahara_ctx* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ablkcipher_request*) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (struct ablkcipher_request*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  subreq ; 
 scalar_t__ FUNC9 (int) ; 

__attribute__((used)) static int FUNC10(struct ablkcipher_request *req)
{
	struct sahara_ctx *ctx = FUNC1(
		FUNC2(req));
	int err;

	if (FUNC9(ctx->keylen != AES_KEYSIZE_128)) {
		FUNC0(subreq, ctx->fallback);

		FUNC7(subreq, ctx->fallback);
		FUNC5(subreq, req->base.flags,
					      NULL, NULL);
		FUNC6(subreq, req->src, req->dst,
					   req->nbytes, req->info);
		err = FUNC3(subreq);
		FUNC8(subreq);
		return err;
	}

	return FUNC4(req, 0);
}