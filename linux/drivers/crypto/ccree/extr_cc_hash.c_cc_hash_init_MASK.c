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
struct device {int dummy; } ;
struct crypto_ahash {int dummy; } ;
struct cc_hash_ctx {int /*<<< orphan*/  drvdata; } ;
struct ahash_request {int /*<<< orphan*/  nbytes; } ;
struct ahash_req_ctx {int dummy; } ;

/* Variables and functions */
 struct ahash_req_ctx* FUNC0 (struct ahash_request*) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,struct ahash_req_ctx*,struct cc_hash_ctx*) ; 
 struct cc_hash_ctx* FUNC2 (struct crypto_ahash*) ; 
 struct crypto_ahash* FUNC3 (struct ahash_request*) ; 
 int /*<<< orphan*/  FUNC4 (struct device*,char*,int /*<<< orphan*/ ) ; 
 struct device* FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct ahash_request *req)
{
	struct ahash_req_ctx *state = FUNC0(req);
	struct crypto_ahash *tfm = FUNC3(req);
	struct cc_hash_ctx *ctx = FUNC2(tfm);
	struct device *dev = FUNC5(ctx->drvdata);

	FUNC4(dev, "===== init (%d) ====\n", req->nbytes);

	FUNC1(dev, state, ctx);

	return 0;
}