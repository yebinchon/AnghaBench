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
struct artpec6_hash_request_context {int hash_flags; } ;
struct ahash_request {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ARTPEC6_CRYPTO_HASH_SHA1 ; 
 int HASH_FLAG_FINALIZE ; 
 int HASH_FLAG_UPDATE ; 
 struct artpec6_hash_request_context* FUNC0 (struct ahash_request*) ; 
 int /*<<< orphan*/  FUNC1 (struct ahash_request*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct ahash_request*) ; 

__attribute__((used)) static int FUNC3(struct ahash_request *req)
{
	struct artpec6_hash_request_context *req_ctx = FUNC0(req);

	FUNC1(req, ARTPEC6_CRYPTO_HASH_SHA1, 0);

	req_ctx->hash_flags |= HASH_FLAG_UPDATE | HASH_FLAG_FINALIZE;

	return FUNC2(req);
}