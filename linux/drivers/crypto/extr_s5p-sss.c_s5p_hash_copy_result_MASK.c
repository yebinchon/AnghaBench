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
struct s5p_hash_reqctx {int nregs; int /*<<< orphan*/  digest; } ;
struct ahash_request {int /*<<< orphan*/  result; } ;

/* Variables and functions */
 int HASH_REG_SIZEOF ; 
 struct s5p_hash_reqctx* FUNC0 (struct ahash_request*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC2(struct ahash_request *req)
{
	const struct s5p_hash_reqctx *ctx = FUNC0(req);

	if (!req->result)
		return;

	FUNC1(req->result, ctx->digest, ctx->nregs * HASH_REG_SIZEOF);
}