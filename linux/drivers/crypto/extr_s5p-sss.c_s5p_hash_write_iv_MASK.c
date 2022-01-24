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
struct s5p_hash_reqctx {int /*<<< orphan*/  dd; } ;
struct ahash_request {int dummy; } ;

/* Variables and functions */
 struct s5p_hash_reqctx* FUNC0 (struct ahash_request*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct s5p_hash_reqctx*) ; 

__attribute__((used)) static void FUNC2(struct ahash_request *req)
{
	struct s5p_hash_reqctx *ctx = FUNC0(req);

	FUNC1(ctx->dd, ctx);
}