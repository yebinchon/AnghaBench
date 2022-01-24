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
typedef  int /*<<< orphan*/  u8 ;
struct TYPE_7__ {int /*<<< orphan*/  addr; } ;
struct TYPE_8__ {TYPE_3__ virt; } ;
struct TYPE_5__ {int /*<<< orphan*/  addr; } ;
struct TYPE_6__ {TYPE_1__ virt; } ;
struct skcipher_walk {unsigned int nbytes; TYPE_4__ dst; TYPE_2__ src; int /*<<< orphan*/  iv; } ;
struct skcipher_request {int cryptlen; } ;
struct p8_aes_xts_ctx {int /*<<< orphan*/  dec_key; int /*<<< orphan*/  enc_key; int /*<<< orphan*/  tweak_key; int /*<<< orphan*/  fallback; } ;
struct crypto_skcipher {int dummy; } ;

/* Variables and functions */
 int AES_BLOCK_SIZE ; 
 int XTS_BLOCK_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 struct p8_aes_xts_ctx* FUNC4 (struct crypto_skcipher*) ; 
 int FUNC5 (struct skcipher_request*) ; 
 int FUNC6 (struct skcipher_request*) ; 
 struct crypto_skcipher* FUNC7 (struct skcipher_request*) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 () ; 
 int /*<<< orphan*/  FUNC14 (unsigned int,int) ; 
 struct skcipher_request* FUNC15 (struct skcipher_request*) ; 
 int /*<<< orphan*/  FUNC16 (struct skcipher_request*,int /*<<< orphan*/ ) ; 
 int FUNC17 (struct skcipher_walk*,unsigned int) ; 
 int FUNC18 (struct skcipher_walk*,struct skcipher_request*,int) ; 

__attribute__((used)) static int FUNC19(struct skcipher_request *req, int enc)
{
	struct crypto_skcipher *tfm = FUNC7(req);
	const struct p8_aes_xts_ctx *ctx = FUNC4(tfm);
	struct skcipher_walk walk;
	unsigned int nbytes;
	u8 tweak[AES_BLOCK_SIZE];
	int ret;

	if (!FUNC3() || (req->cryptlen % XTS_BLOCK_SIZE) != 0) {
		struct skcipher_request *subreq = FUNC15(req);

		*subreq = *req;
		FUNC16(subreq, ctx->fallback);
		return enc ? FUNC6(subreq) :
			     FUNC5(subreq);
	}

	ret = FUNC18(&walk, req, false);
	if (ret)
		return ret;

	FUNC12();
	FUNC10();
	FUNC9();

	FUNC0(walk.iv, tweak, &ctx->tweak_key);

	FUNC8();
	FUNC11();
	FUNC13();

	while ((nbytes = walk.nbytes) != 0) {
		FUNC12();
		FUNC10();
		FUNC9();
		if (enc)
			FUNC2(walk.src.virt.addr,
					   walk.dst.virt.addr,
					   FUNC14(nbytes, AES_BLOCK_SIZE),
					   &ctx->enc_key, NULL, tweak);
		else
			FUNC1(walk.src.virt.addr,
					   walk.dst.virt.addr,
					   FUNC14(nbytes, AES_BLOCK_SIZE),
					   &ctx->dec_key, NULL, tweak);
		FUNC8();
		FUNC11();
		FUNC13();

		ret = FUNC17(&walk, nbytes % AES_BLOCK_SIZE);
	}
	return ret;
}