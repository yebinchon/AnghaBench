#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  addr; } ;
struct TYPE_8__ {TYPE_3__ virt; } ;
struct TYPE_5__ {int /*<<< orphan*/  addr; } ;
struct TYPE_6__ {TYPE_1__ virt; } ;
struct skcipher_walk {unsigned int nbytes; int /*<<< orphan*/  iv; TYPE_4__ dst; TYPE_2__ src; } ;
struct skcipher_request {int dummy; } ;
struct p8_aes_ctr_ctx {int /*<<< orphan*/  enc_key; int /*<<< orphan*/  fallback; } ;
struct crypto_skcipher {int dummy; } ;

/* Variables and functions */
 unsigned int AES_BLOCK_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 struct p8_aes_ctr_ctx* FUNC3 (struct crypto_skcipher*) ; 
 int FUNC4 (struct skcipher_request*) ; 
 struct crypto_skcipher* FUNC5 (struct skcipher_request*) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (struct p8_aes_ctr_ctx const*,struct skcipher_walk*) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 () ; 
 struct skcipher_request* FUNC13 (struct skcipher_request*) ; 
 int /*<<< orphan*/  FUNC14 (struct skcipher_request*,int /*<<< orphan*/ ) ; 
 int FUNC15 (struct skcipher_walk*,unsigned int) ; 
 int FUNC16 (struct skcipher_walk*,struct skcipher_request*,int) ; 

__attribute__((used)) static int FUNC17(struct skcipher_request *req)
{
	struct crypto_skcipher *tfm = FUNC5(req);
	const struct p8_aes_ctr_ctx *ctx = FUNC3(tfm);
	struct skcipher_walk walk;
	unsigned int nbytes;
	int ret;

	if (!FUNC2()) {
		struct skcipher_request *subreq = FUNC13(req);

		*subreq = *req;
		FUNC14(subreq, ctx->fallback);
		return FUNC4(subreq);
	}

	ret = FUNC16(&walk, req, false);
	while ((nbytes = walk.nbytes) >= AES_BLOCK_SIZE) {
		FUNC11();
		FUNC9();
		FUNC7();
		FUNC0(walk.src.virt.addr,
					    walk.dst.virt.addr,
					    nbytes / AES_BLOCK_SIZE,
					    &ctx->enc_key, walk.iv);
		FUNC6();
		FUNC10();
		FUNC12();

		do {
			FUNC1(walk.iv, AES_BLOCK_SIZE);
		} while ((nbytes -= AES_BLOCK_SIZE) >= AES_BLOCK_SIZE);

		ret = FUNC15(&walk, nbytes);
	}
	if (nbytes) {
		FUNC8(ctx, &walk);
		ret = FUNC15(&walk, 0);
	}
	return ret;
}