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
struct artpec6_hash_request_context {int /*<<< orphan*/  digeststate; int /*<<< orphan*/  partial_buffer; void* hash_md; int /*<<< orphan*/  hash_flags; int /*<<< orphan*/  partial_bytes; int /*<<< orphan*/  digcnt; } ;
struct artpec6_hash_export_state {int /*<<< orphan*/  digeststate; int /*<<< orphan*/  partial_buffer; int /*<<< orphan*/  oper; int /*<<< orphan*/  hash_flags; int /*<<< orphan*/  partial_bytes; int /*<<< orphan*/  digcnt; } ;
struct artpec6_crypto {int variant; } ;
struct ahash_request {int dummy; } ;
typedef  enum artpec6_crypto_variant { ____Placeholder_artpec6_crypto_variant } artpec6_crypto_variant ;

/* Variables and functions */
 int /*<<< orphan*/  A6_CRY_MD_OPER ; 
 int /*<<< orphan*/  A7_CRY_MD_OPER ; 
 int ARTPEC6_CRYPTO ; 
 void* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct artpec6_hash_request_context* FUNC1 (struct ahash_request*) ; 
 int /*<<< orphan*/  artpec6_crypto_dev ; 
 struct artpec6_crypto* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct artpec6_hash_request_context*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC5(struct ahash_request *req, const void *in)
{
	struct artpec6_hash_request_context *ctx = FUNC1(req);
	const struct artpec6_hash_export_state *state = in;
	struct artpec6_crypto *ac = FUNC2(artpec6_crypto_dev);
	enum artpec6_crypto_variant variant = ac->variant;

	FUNC4(ctx, 0, sizeof(*ctx));

	ctx->digcnt = state->digcnt;
	ctx->partial_bytes = state->partial_bytes;
	ctx->hash_flags = state->hash_flags;

	if (variant == ARTPEC6_CRYPTO)
		ctx->hash_md = FUNC0(A6_CRY_MD_OPER, state->oper);
	else
		ctx->hash_md = FUNC0(A7_CRY_MD_OPER, state->oper);

	FUNC3(ctx->partial_buffer, state->partial_buffer,
	       sizeof(state->partial_buffer));
	FUNC3(ctx->digeststate, state->digeststate,
	       sizeof(state->digeststate));

	return 0;
}