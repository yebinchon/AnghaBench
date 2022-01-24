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
typedef  int /*<<< orphan*/  u8 ;
struct talitos_edesc {int dummy; } ;
struct talitos_ctx {int /*<<< orphan*/  dev; } ;
struct crypto_aead {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  flags; } ;
struct aead_request {unsigned int cryptlen; TYPE_1__ base; int /*<<< orphan*/  assoclen; int /*<<< orphan*/  dst; int /*<<< orphan*/  src; } ;

/* Variables and functions */
 unsigned int FUNC0 (struct crypto_aead*) ; 
 struct talitos_ctx* FUNC1 (struct crypto_aead*) ; 
 unsigned int FUNC2 (struct crypto_aead*) ; 
 struct crypto_aead* FUNC3 (struct aead_request*) ; 
 struct talitos_edesc* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned int,unsigned int,unsigned int,int,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static struct talitos_edesc *FUNC5(struct aead_request *areq, u8 *iv,
					      int icv_stashing, bool encrypt)
{
	struct crypto_aead *authenc = FUNC3(areq);
	unsigned int authsize = FUNC0(authenc);
	struct talitos_ctx *ctx = FUNC1(authenc);
	unsigned int ivsize = FUNC2(authenc);
	unsigned int cryptlen = areq->cryptlen - (encrypt ? 0 : authsize);

	return FUNC4(ctx->dev, areq->src, areq->dst,
				   iv, areq->assoclen, cryptlen,
				   authsize, ivsize, icv_stashing,
				   areq->base.flags, encrypt);
}