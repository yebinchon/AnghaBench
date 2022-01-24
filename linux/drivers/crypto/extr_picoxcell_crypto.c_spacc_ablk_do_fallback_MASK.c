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
struct spacc_ablk_ctx {int /*<<< orphan*/  sw_cipher; } ;
struct crypto_tfm {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  flags; } ;
struct ablkcipher_request {int /*<<< orphan*/  info; int /*<<< orphan*/  nbytes; int /*<<< orphan*/  dst; int /*<<< orphan*/  src; TYPE_1__ base; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ablkcipher_request*) ; 
 struct crypto_tfm* FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 struct spacc_ablk_ctx* FUNC5 (struct crypto_tfm*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  subreq ; 

__attribute__((used)) static int FUNC10(struct ablkcipher_request *req,
				  unsigned alg_type, bool is_encrypt)
{
	struct crypto_tfm *old_tfm =
	    FUNC2(FUNC1(req));
	struct spacc_ablk_ctx *ctx = FUNC5(old_tfm);
	FUNC0(subreq, ctx->sw_cipher);
	int err;

	/*
	 * Change the request to use the software fallback transform, and once
	 * the ciphering has completed, put the old transform back into the
	 * request.
	 */
	FUNC8(subreq, ctx->sw_cipher);
	FUNC6(subreq, req->base.flags, NULL, NULL);
	FUNC7(subreq, req->src, req->dst,
				   req->nbytes, req->info);
	err = is_encrypt ? FUNC4(subreq) :
			   FUNC3(subreq);
	FUNC9(subreq);

	return err;
}