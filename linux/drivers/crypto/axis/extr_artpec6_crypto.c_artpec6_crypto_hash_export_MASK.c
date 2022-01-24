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
struct artpec6_hash_request_context {int /*<<< orphan*/  digeststate; int /*<<< orphan*/  partial_buffer; int /*<<< orphan*/  hash_md; int /*<<< orphan*/  hash_flags; int /*<<< orphan*/  partial_bytes; int /*<<< orphan*/  digcnt; } ;
struct artpec6_hash_export_state {int /*<<< orphan*/  digeststate; int /*<<< orphan*/  partial_buffer; void* oper; int /*<<< orphan*/  hash_flags; int /*<<< orphan*/  partial_bytes; int /*<<< orphan*/  digcnt; } ;
struct artpec6_crypto {int variant; } ;
struct ahash_request {int dummy; } ;
typedef  enum artpec6_crypto_variant { ____Placeholder_artpec6_crypto_variant } artpec6_crypto_variant ;

/* Variables and functions */
 int /*<<< orphan*/  A6_CRY_MD_OPER ; 
 int /*<<< orphan*/  A7_CRY_MD_OPER ; 
 int ARTPEC6_CRYPTO ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 void* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct artpec6_hash_request_context* FUNC2 (struct ahash_request*) ; 
 int /*<<< orphan*/  artpec6_crypto_dev ; 
 struct artpec6_crypto* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC5(struct ahash_request *req, void *out)
{
	const struct artpec6_hash_request_context *ctx = FUNC2(req);
	struct artpec6_hash_export_state *state = out;
	struct artpec6_crypto *ac = FUNC3(artpec6_crypto_dev);
	enum artpec6_crypto_variant variant = ac->variant;

	FUNC0(sizeof(state->partial_buffer) !=
		     sizeof(ctx->partial_buffer));
	FUNC0(sizeof(state->digeststate) != sizeof(ctx->digeststate));

	state->digcnt = ctx->digcnt;
	state->partial_bytes = ctx->partial_bytes;
	state->hash_flags = ctx->hash_flags;

	if (variant == ARTPEC6_CRYPTO)
		state->oper = FUNC1(A6_CRY_MD_OPER, ctx->hash_md);
	else
		state->oper = FUNC1(A7_CRY_MD_OPER, ctx->hash_md);

	FUNC4(state->partial_buffer, ctx->partial_buffer,
	       sizeof(state->partial_buffer));
	FUNC4(state->digeststate, ctx->digeststate,
	       sizeof(state->digeststate));

	return 0;
}