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
struct mtk_sha_reqctx {int flags; size_t bufcnt; scalar_t__ total; } ;
struct mtk_sha_rec {int /*<<< orphan*/  flags; int /*<<< orphan*/  req; } ;
struct mtk_cryp {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 size_t SHA_BUF_SIZE ; 
 int /*<<< orphan*/  SHA_FLAGS_FINAL ; 
 int SHA_FLAGS_FINUP ; 
 struct mtk_sha_reqctx* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,size_t) ; 
 int /*<<< orphan*/  FUNC2 (struct mtk_sha_reqctx*) ; 
 int FUNC3 (struct mtk_cryp*,struct mtk_sha_rec*,struct mtk_sha_reqctx*,size_t) ; 
 int /*<<< orphan*/  FUNC4 (struct mtk_sha_reqctx*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct mtk_cryp *cryp,
			       struct mtk_sha_rec *sha)
{
	struct mtk_sha_reqctx *ctx = FUNC0(sha->req);
	size_t count;
	u32 final;

	FUNC2(ctx);

	final = (ctx->flags & SHA_FLAGS_FINUP) && !ctx->total;

	FUNC1(cryp->dev, "slow: bufcnt: %zu\n", ctx->bufcnt);

	if (final) {
		sha->flags |= SHA_FLAGS_FINAL;
		FUNC4(ctx, 0);
	}

	if (final || (ctx->bufcnt == SHA_BUF_SIZE && ctx->total)) {
		count = ctx->bufcnt;
		ctx->bufcnt = 0;

		return FUNC3(cryp, sha, ctx, count);
	}
	return 0;
}