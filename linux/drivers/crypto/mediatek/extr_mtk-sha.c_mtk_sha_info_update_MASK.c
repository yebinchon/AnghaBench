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
struct mtk_sha_info {int /*<<< orphan*/ * ctrl; int /*<<< orphan*/ * cmd; } ;
struct mtk_sha_reqctx {int ct_dma; int tfm_dma; scalar_t__ digcnt; int /*<<< orphan*/  ct_hdr; struct mtk_sha_info info; } ;
struct mtk_sha_rec {int /*<<< orphan*/  req; } ;
struct mtk_cryp {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_BIDIRECTIONAL ; 
 int EINVAL ; 
 int /*<<< orphan*/  SHA_DATA_LEN_MSK ; 
 int /*<<< orphan*/  SHA_TFM_START ; 
 struct mtk_sha_reqctx* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (size_t) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC3 (int /*<<< orphan*/ ,struct mtk_sha_info*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct mtk_cryp *cryp,
			       struct mtk_sha_rec *sha,
			       size_t len1, size_t len2)
{
	struct mtk_sha_reqctx *ctx = FUNC0(sha->req);
	struct mtk_sha_info *info = &ctx->info;

	ctx->ct_hdr &= ~SHA_DATA_LEN_MSK;
	ctx->ct_hdr |= FUNC1(len1 + len2);
	info->cmd[0] &= ~SHA_DATA_LEN_MSK;
	info->cmd[0] |= FUNC1(len1 + len2);

	/* Setting SHA_TFM_START only for the first iteration */
	if (ctx->digcnt)
		info->ctrl[0] &= ~SHA_TFM_START;

	ctx->digcnt += len1;

	ctx->ct_dma = FUNC3(cryp->dev, info, sizeof(*info),
				     DMA_BIDIRECTIONAL);
	if (FUNC5(FUNC4(cryp->dev, ctx->ct_dma))) {
		FUNC2(cryp->dev, "dma %zu bytes error\n", sizeof(*info));
		return -EINVAL;
	}

	ctx->tfm_dma = ctx->ct_dma + sizeof(info->ctrl) + sizeof(info->cmd);

	return 0;
}