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
struct s5p_hash_reqctx {int finup; scalar_t__ bufcnt; int /*<<< orphan*/  digcnt; scalar_t__ error; } ;
struct ahash_request {int dummy; } ;

/* Variables and functions */
 scalar_t__ BUFLEN ; 
 int EINVAL ; 
 struct s5p_hash_reqctx* FUNC0 (struct ahash_request*) ; 
 int FUNC1 (struct ahash_request*,int) ; 
 int FUNC2 (struct ahash_request*) ; 

__attribute__((used)) static int FUNC3(struct ahash_request *req)
{
	struct s5p_hash_reqctx *ctx = FUNC0(req);

	ctx->finup = true;
	if (ctx->error)
		return -EINVAL; /* uncompleted hash is not needed */

	if (!ctx->digcnt && ctx->bufcnt < BUFLEN)
		return FUNC2(req);

	return FUNC1(req, false); /* HASH_OP_FINAL */
}