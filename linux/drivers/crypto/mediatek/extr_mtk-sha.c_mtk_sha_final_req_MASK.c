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
struct mtk_sha_reqctx {size_t bufcnt; } ;
struct mtk_sha_rec {int /*<<< orphan*/  flags; int /*<<< orphan*/  req; } ;
struct mtk_cryp {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  SHA_FLAGS_FINAL ; 
 struct mtk_sha_reqctx* FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct mtk_cryp*,struct mtk_sha_rec*,struct mtk_sha_reqctx*,size_t) ; 
 int /*<<< orphan*/  FUNC2 (struct mtk_sha_reqctx*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct mtk_cryp *cryp,
			     struct mtk_sha_rec *sha)
{
	struct mtk_sha_reqctx *ctx = FUNC0(sha->req);
	size_t count;

	FUNC2(ctx, 0);

	sha->flags |= SHA_FLAGS_FINAL;
	count = ctx->bufcnt;
	ctx->bufcnt = 0;

	return FUNC1(cryp, sha, ctx, count);
}