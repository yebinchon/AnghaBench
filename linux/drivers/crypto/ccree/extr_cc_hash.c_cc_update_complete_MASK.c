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
struct cc_hash_ctx {int dummy; } ;
struct ahash_request {int /*<<< orphan*/  src; } ;
struct ahash_req_ctx {int dummy; } ;

/* Variables and functions */
 int EINPROGRESS ; 
 int /*<<< orphan*/  FUNC0 (struct ahash_request*,int) ; 
 struct ahash_req_ctx* FUNC1 (struct ahash_request*) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,struct ahash_req_ctx*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,struct ahash_req_ctx*,struct cc_hash_ctx*) ; 
 struct cc_hash_ctx* FUNC4 (struct crypto_ahash*) ; 
 struct crypto_ahash* FUNC5 (struct ahash_request*) ; 
 int /*<<< orphan*/  FUNC6 (struct device*,char*,struct ahash_request*) ; 

__attribute__((used)) static void FUNC7(struct device *dev, void *cc_req, int err)
{
	struct ahash_request *req = (struct ahash_request *)cc_req;
	struct ahash_req_ctx *state = FUNC1(req);
	struct crypto_ahash *tfm = FUNC5(req);
	struct cc_hash_ctx *ctx = FUNC4(tfm);

	FUNC6(dev, "req=%pK\n", req);

	if (err != -EINPROGRESS) {
		/* Not a BACKLOG notification */
		FUNC2(dev, state, req->src, false);
		FUNC3(dev, state, ctx);
	}

	FUNC0(req, err);
}