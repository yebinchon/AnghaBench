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
typedef  int /*<<< orphan*/  u32 ;
struct skcipher_request {int dummy; } ;
struct mv_cesa_req {int dummy; } ;
struct mv_cesa_skcipher_req {struct mv_cesa_req base; } ;
struct crypto_async_request {int dummy; } ;

/* Variables and functions */
 scalar_t__ CESA_STD_REQ ; 
 int FUNC0 (struct mv_cesa_req*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct mv_cesa_req*) ; 
 int FUNC2 (struct skcipher_request*,int /*<<< orphan*/ ) ; 
 struct skcipher_request* FUNC3 (struct crypto_async_request*) ; 
 struct mv_cesa_skcipher_req* FUNC4 (struct skcipher_request*) ; 

__attribute__((used)) static int FUNC5(struct crypto_async_request *req,
				    u32 status)
{
	struct skcipher_request *skreq = FUNC3(req);
	struct mv_cesa_skcipher_req *creq = FUNC4(skreq);
	struct mv_cesa_req *basereq = &creq->base;

	if (FUNC1(basereq) == CESA_STD_REQ)
		return FUNC2(skreq, status);

	return FUNC0(basereq, status);
}