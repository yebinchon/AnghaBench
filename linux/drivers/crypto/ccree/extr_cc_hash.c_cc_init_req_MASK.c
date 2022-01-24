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
struct device {int dummy; } ;
struct cc_hash_ctx {int is_hmac; scalar_t__ hw_mode; void const* digest_buff; scalar_t__ hash_mode; void const* opad_tmp_keys_buff; int /*<<< orphan*/  inter_digestsize; int /*<<< orphan*/  opad_tmp_keys_dma_addr; int /*<<< orphan*/  hash_len; int /*<<< orphan*/  digest_buff_dma_addr; } ;
struct ahash_req_ctx {int /*<<< orphan*/  digest_buff; int /*<<< orphan*/  opad_digest_buff; int /*<<< orphan*/  digest_bytes_len; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_BIDIRECTIONAL ; 
 scalar_t__ DRV_CIPHER_CMAC ; 
 scalar_t__ DRV_CIPHER_XCBC_MAC ; 
 scalar_t__ DRV_HASH_NULL ; 
 scalar_t__ DRV_HASH_SHA384 ; 
 scalar_t__ DRV_HASH_SHA512 ; 
 void const* cc_digest_len_init ; 
 void const* cc_digest_len_sha512_init ; 
 void* FUNC0 (struct device*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,void const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ahash_req_ctx*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC4(struct device *dev, struct ahash_req_ctx *state,
			struct cc_hash_ctx *ctx)
{
	bool is_hmac = ctx->is_hmac;

	FUNC3(state, 0, sizeof(*state));

	if (is_hmac) {
		if (ctx->hw_mode != DRV_CIPHER_XCBC_MAC &&
		    ctx->hw_mode != DRV_CIPHER_CMAC) {
			FUNC1(dev, ctx->digest_buff_dma_addr,
						ctx->inter_digestsize,
						DMA_BIDIRECTIONAL);

			FUNC2(state->digest_buff, ctx->digest_buff,
			       ctx->inter_digestsize);
			if (ctx->hash_mode == DRV_HASH_SHA512 ||
			    ctx->hash_mode == DRV_HASH_SHA384)
				FUNC2(state->digest_bytes_len,
				       cc_digest_len_sha512_init,
				       ctx->hash_len);
			else
				FUNC2(state->digest_bytes_len,
				       cc_digest_len_init,
				       ctx->hash_len);
		}

		if (ctx->hash_mode != DRV_HASH_NULL) {
			FUNC1(dev,
						ctx->opad_tmp_keys_dma_addr,
						ctx->inter_digestsize,
						DMA_BIDIRECTIONAL);
			FUNC2(state->opad_digest_buff,
			       ctx->opad_tmp_keys_buff, ctx->inter_digestsize);
		}
	} else { /*hash*/
		/* Copy the initial digests if hash flow. */
		const void *larval = FUNC0(dev, ctx->hash_mode);

		FUNC2(state->digest_buff, larval, ctx->inter_digestsize);
	}
}