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
struct atmel_sha_reqctx {int flags; int /*<<< orphan*/  digest; } ;
struct ahash_request {int /*<<< orphan*/  result; } ;

/* Variables and functions */
 int /*<<< orphan*/  SHA1_DIGEST_SIZE ; 
 int /*<<< orphan*/  SHA224_DIGEST_SIZE ; 
 int /*<<< orphan*/  SHA256_DIGEST_SIZE ; 
 int /*<<< orphan*/  SHA384_DIGEST_SIZE ; 
 int /*<<< orphan*/  SHA512_DIGEST_SIZE ; 
 int SHA_FLAGS_ALGO_MASK ; 
#define  SHA_FLAGS_SHA1 132 
#define  SHA_FLAGS_SHA224 131 
#define  SHA_FLAGS_SHA256 130 
#define  SHA_FLAGS_SHA384 129 
#define  SHA_FLAGS_SHA512 128 
 struct atmel_sha_reqctx* FUNC0 (struct ahash_request*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct ahash_request *req)
{
	struct atmel_sha_reqctx *ctx = FUNC0(req);

	if (!req->result)
		return;

	switch (ctx->flags & SHA_FLAGS_ALGO_MASK) {
	default:
	case SHA_FLAGS_SHA1:
		FUNC1(req->result, ctx->digest, SHA1_DIGEST_SIZE);
		break;

	case SHA_FLAGS_SHA224:
		FUNC1(req->result, ctx->digest, SHA224_DIGEST_SIZE);
		break;

	case SHA_FLAGS_SHA256:
		FUNC1(req->result, ctx->digest, SHA256_DIGEST_SIZE);
		break;

	case SHA_FLAGS_SHA384:
		FUNC1(req->result, ctx->digest, SHA384_DIGEST_SIZE);
		break;

	case SHA_FLAGS_SHA512:
		FUNC1(req->result, ctx->digest, SHA512_DIGEST_SIZE);
		break;
	}
}