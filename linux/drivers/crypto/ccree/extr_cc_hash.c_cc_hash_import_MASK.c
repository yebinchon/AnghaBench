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
typedef  int u32 ;
struct device {int dummy; } ;
struct crypto_ahash {int dummy; } ;
struct cc_hash_ctx {int inter_digestsize; int hash_len; int /*<<< orphan*/  drvdata; } ;
struct ahash_request {int dummy; } ;
struct ahash_req_ctx {int* digest_buff; int* digest_bytes_len; int* buf_cnt; int** buffers; } ;

/* Variables and functions */
 int CC_EXPORT_MAGIC ; 
 int CC_MAX_HASH_BLCK_SIZE ; 
 int EINVAL ; 
 struct ahash_req_ctx* FUNC0 (struct ahash_request*) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,struct ahash_req_ctx*,struct cc_hash_ctx*) ; 
 struct cc_hash_ctx* FUNC2 (struct crypto_ahash*) ; 
 struct crypto_ahash* FUNC3 (struct ahash_request*) ; 
 struct device* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int*,void const*,int) ; 

__attribute__((used)) static int FUNC6(struct ahash_request *req, const void *in)
{
	struct crypto_ahash *ahash = FUNC3(req);
	struct cc_hash_ctx *ctx = FUNC2(ahash);
	struct device *dev = FUNC4(ctx->drvdata);
	struct ahash_req_ctx *state = FUNC0(req);
	u32 tmp;

	FUNC5(&tmp, in, sizeof(u32));
	if (tmp != CC_EXPORT_MAGIC)
		return -EINVAL;
	in += sizeof(u32);

	FUNC1(dev, state, ctx);

	FUNC5(state->digest_buff, in, ctx->inter_digestsize);
	in += ctx->inter_digestsize;

	FUNC5(state->digest_bytes_len, in, ctx->hash_len);
	in += ctx->hash_len;

	/* Sanity check the data as much as possible */
	FUNC5(&tmp, in, sizeof(u32));
	if (tmp > CC_MAX_HASH_BLCK_SIZE)
		return -EINVAL;
	in += sizeof(u32);

	state->buf_cnt[0] = tmp;
	FUNC5(state->buffers[0], in, tmp);

	return 0;
}