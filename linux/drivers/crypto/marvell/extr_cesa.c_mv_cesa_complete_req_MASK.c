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
struct mv_cesa_ctx {TYPE_1__* ops; } ;
struct crypto_async_request {int /*<<< orphan*/  (* complete ) (struct crypto_async_request*,int) ;} ;
struct TYPE_2__ {int /*<<< orphan*/  (* cleanup ) (struct crypto_async_request*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (struct crypto_async_request*) ; 
 int /*<<< orphan*/  FUNC3 (struct crypto_async_request*,int) ; 

__attribute__((used)) static inline void
FUNC4(struct mv_cesa_ctx *ctx, struct crypto_async_request *req,
		     int res)
{
	ctx->ops->cleanup(req);
	FUNC0();
	req->complete(req, res);
	FUNC1();
}