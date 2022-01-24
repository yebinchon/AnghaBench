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
typedef  int u8 ;
typedef  int u32 ;
struct crypto_ahash {int dummy; } ;
struct cc_hash_ctx {int inter_digestsize; int hash_len; } ;
struct ahash_request {int dummy; } ;
struct ahash_req_ctx {int* digest_buff; int* digest_bytes_len; } ;

/* Variables and functions */
 int CC_EXPORT_MAGIC ; 
 struct ahash_req_ctx* FUNC0 (struct ahash_request*) ; 
 int* FUNC1 (struct ahash_req_ctx*) ; 
 int* FUNC2 (struct ahash_req_ctx*) ; 
 struct cc_hash_ctx* FUNC3 (struct crypto_ahash*) ; 
 struct crypto_ahash* FUNC4 (struct ahash_request*) ; 
 int /*<<< orphan*/  FUNC5 (void*,int const*,int) ; 

__attribute__((used)) static int FUNC6(struct ahash_request *req, void *out)
{
	struct crypto_ahash *ahash = FUNC4(req);
	struct cc_hash_ctx *ctx = FUNC3(ahash);
	struct ahash_req_ctx *state = FUNC0(req);
	u8 *curr_buff = FUNC1(state);
	u32 curr_buff_cnt = *FUNC2(state);
	const u32 tmp = CC_EXPORT_MAGIC;

	FUNC5(out, &tmp, sizeof(u32));
	out += sizeof(u32);

	FUNC5(out, state->digest_buff, ctx->inter_digestsize);
	out += ctx->inter_digestsize;

	FUNC5(out, state->digest_bytes_len, ctx->hash_len);
	out += ctx->hash_len;

	FUNC5(out, &curr_buff_cnt, sizeof(u32));
	out += sizeof(u32);

	FUNC5(out, curr_buff, curr_buff_cnt);

	return 0;
}