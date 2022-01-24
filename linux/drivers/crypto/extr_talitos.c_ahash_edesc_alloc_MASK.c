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
struct talitos_private {int dummy; } ;
struct talitos_edesc {int dummy; } ;
struct talitos_ctx {int /*<<< orphan*/  dev; } ;
struct talitos_ahash_req_ctx {int /*<<< orphan*/  psrc; scalar_t__ nbuf; } ;
struct crypto_ahash {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  flags; } ;
struct ahash_request {TYPE_1__ base; } ;

/* Variables and functions */
 struct talitos_ahash_req_ctx* FUNC0 (struct ahash_request*) ; 
 struct talitos_ctx* FUNC1 (struct crypto_ahash*) ; 
 struct crypto_ahash* FUNC2 (struct ahash_request*) ; 
 struct talitos_private* FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (struct talitos_private*) ; 
 struct talitos_edesc* FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static struct talitos_edesc *FUNC6(struct ahash_request *areq,
					       unsigned int nbytes)
{
	struct crypto_ahash *tfm = FUNC2(areq);
	struct talitos_ctx *ctx = FUNC1(tfm);
	struct talitos_ahash_req_ctx *req_ctx = FUNC0(areq);
	struct talitos_private *priv = FUNC3(ctx->dev);
	bool is_sec1 = FUNC4(priv);

	if (is_sec1)
		nbytes -= req_ctx->nbuf;

	return FUNC5(ctx->dev, req_ctx->psrc, NULL, NULL, 0,
				   nbytes, 0, 0, 0, areq->base.flags, false);
}