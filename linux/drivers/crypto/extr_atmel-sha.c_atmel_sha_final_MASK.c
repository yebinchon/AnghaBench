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
struct atmel_sha_reqctx {int flags; } ;
struct ahash_request {int dummy; } ;

/* Variables and functions */
 int SHA_FLAGS_ERROR ; 
 int SHA_FLAGS_FINUP ; 
 int SHA_FLAGS_PAD ; 
 int /*<<< orphan*/  SHA_OP_FINAL ; 
 struct atmel_sha_reqctx* FUNC0 (struct ahash_request*) ; 
 int FUNC1 (struct ahash_request*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct ahash_request*) ; 

__attribute__((used)) static int FUNC3(struct ahash_request *req)
{
	struct atmel_sha_reqctx *ctx = FUNC0(req);

	ctx->flags |= SHA_FLAGS_FINUP;

	if (ctx->flags & SHA_FLAGS_ERROR)
		return 0; /* uncompleted hash is not needed */

	if (ctx->flags & SHA_FLAGS_PAD)
		/* copy ready hash (+ finalize hmac) */
		return FUNC2(req);

	return FUNC1(req, SHA_OP_FINAL);
}