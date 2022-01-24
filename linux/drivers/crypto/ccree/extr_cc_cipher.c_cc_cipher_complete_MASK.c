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
struct skcipher_request {int /*<<< orphan*/  iv; struct scatterlist* src; struct scatterlist* dst; } ;
struct scatterlist {int dummy; } ;
struct device {int dummy; } ;
struct crypto_skcipher {int dummy; } ;
struct cipher_req_ctx {int /*<<< orphan*/  iv; } ;

/* Variables and functions */
 int EINPROGRESS ; 
 int /*<<< orphan*/  FUNC0 (struct device*,struct cipher_req_ctx*,unsigned int,struct scatterlist*,struct scatterlist*) ; 
 unsigned int FUNC1 (struct crypto_skcipher*) ; 
 struct crypto_skcipher* FUNC2 (struct skcipher_request*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (struct skcipher_request*,int) ; 
 struct cipher_req_ctx* FUNC6 (struct skcipher_request*) ; 

__attribute__((used)) static void FUNC7(struct device *dev, void *cc_req, int err)
{
	struct skcipher_request *req = (struct skcipher_request *)cc_req;
	struct scatterlist *dst = req->dst;
	struct scatterlist *src = req->src;
	struct cipher_req_ctx *req_ctx = FUNC6(req);
	struct crypto_skcipher *sk_tfm = FUNC2(req);
	unsigned int ivsize = FUNC1(sk_tfm);

	if (err != -EINPROGRESS) {
		/* Not a BACKLOG notification */
		FUNC0(dev, req_ctx, ivsize, src, dst);
		FUNC4(req->iv, req_ctx->iv, ivsize);
		FUNC3(req_ctx->iv);
	}

	FUNC5(req, err);
}