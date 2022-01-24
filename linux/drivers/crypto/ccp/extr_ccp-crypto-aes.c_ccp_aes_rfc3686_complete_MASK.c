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
struct crypto_async_request {int dummy; } ;
struct ccp_aes_req_ctx {int /*<<< orphan*/  rfc3686_info; } ;
struct ablkcipher_request {int /*<<< orphan*/  info; } ;

/* Variables and functions */
 struct ablkcipher_request* FUNC0 (struct crypto_async_request*) ; 
 struct ccp_aes_req_ctx* FUNC1 (struct ablkcipher_request*) ; 
 int FUNC2 (struct crypto_async_request*,int) ; 

__attribute__((used)) static int FUNC3(struct crypto_async_request *async_req,
				    int ret)
{
	struct ablkcipher_request *req = FUNC0(async_req);
	struct ccp_aes_req_ctx *rctx = FUNC1(req);

	/* Restore the original pointer */
	req->info = rctx->rfc3686_info;

	return FUNC2(async_req, ret);
}