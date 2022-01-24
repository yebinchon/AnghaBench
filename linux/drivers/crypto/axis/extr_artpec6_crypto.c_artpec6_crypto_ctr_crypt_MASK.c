#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  flags; } ;
struct skcipher_request {size_t iv; int /*<<< orphan*/  cryptlen; int /*<<< orphan*/  dst; int /*<<< orphan*/  src; TYPE_1__ base; } ;
struct crypto_skcipher {int dummy; } ;
struct artpec6_cryptotfm_context {int /*<<< orphan*/  fallback; int /*<<< orphan*/  key_length; int /*<<< orphan*/  aes_key; } ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 unsigned int AES_BLOCK_SIZE ; 
 unsigned int FUNC0 (int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct skcipher_request*) ; 
 int FUNC3 (struct skcipher_request*) ; 
 unsigned int FUNC4 (int /*<<< orphan*/ *) ; 
 struct artpec6_cryptotfm_context* FUNC5 (struct crypto_skcipher*) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 
 size_t FUNC8 (struct crypto_skcipher*) ; 
 struct crypto_skcipher* FUNC9 (struct skcipher_request*) ; 
 int FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (char*,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  subreq ; 

__attribute__((used)) static int
FUNC16(struct skcipher_request *req, bool encrypt)
{
	struct crypto_skcipher *cipher = FUNC9(req);
	struct artpec6_cryptotfm_context *ctx = FUNC5(cipher);
	size_t iv_len = FUNC8(cipher);
	unsigned int counter = FUNC4((__be32 *)
					    (req->iv + iv_len - 4));
	unsigned int nblks = FUNC0(req->cryptlen, AES_BLOCK_SIZE) /
			     AES_BLOCK_SIZE;

	/*
	 * The hardware uses only the last 32-bits as the counter while the
	 * kernel tests (aes_ctr_enc_tv_template[4] for example) expect that
	 * the whole IV is a counter.  So fallback if the counter is going to
	 * overlow.
	 */
	if (counter + nblks < counter) {
		int ret;

		FUNC11("counter %x will overflow (nblks %u), falling back\n",
			 counter, counter + nblks);

		ret = FUNC10(ctx->fallback, ctx->aes_key,
						  ctx->key_length);
		if (ret)
			return ret;

		{
			FUNC1(subreq, ctx->fallback);

			FUNC14(subreq, ctx->fallback);
			FUNC12(subreq, req->base.flags,
						      NULL, NULL);
			FUNC13(subreq, req->src, req->dst,
						   req->cryptlen, req->iv);
			ret = encrypt ? FUNC7(subreq)
				      : FUNC6(subreq);
			FUNC15(subreq);
		}
		return ret;
	}

	return encrypt ? FUNC3(req)
		       : FUNC2(req);
}