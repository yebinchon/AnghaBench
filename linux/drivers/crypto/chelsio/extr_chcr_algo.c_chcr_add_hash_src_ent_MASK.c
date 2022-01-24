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
struct ulptx_walk {int /*<<< orphan*/  last_sg_len; int /*<<< orphan*/  last_sg; } ;
struct ulptx_sgl {int dummy; } ;
struct hash_wr_param {int /*<<< orphan*/  sg_len; int /*<<< orphan*/  bfr_len; } ;
struct TYPE_2__ {int /*<<< orphan*/  src_ofst; int /*<<< orphan*/  srcsg; int /*<<< orphan*/  dma_addr; scalar_t__ imm; } ;
struct chcr_ahash_req_ctx {TYPE_1__ hctx_wr; int /*<<< orphan*/  reqbfr; } ;
struct ahash_request {int dummy; } ;

/* Variables and functions */
 struct chcr_ahash_req_ctx* FUNC0 (struct ahash_request*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct ulptx_walk*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct ulptx_walk*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct ulptx_walk*) ; 
 int /*<<< orphan*/  FUNC7 (struct ulptx_walk*,struct ulptx_sgl*) ; 

void FUNC8(struct ahash_request *req,
			   struct ulptx_sgl *ulptx,
			   struct hash_wr_param *param)
{
	struct ulptx_walk ulp_walk;
	struct chcr_ahash_req_ctx *reqctx = FUNC0(req);

	if (reqctx->hctx_wr.imm) {
		u8 *buf = (u8 *)ulptx;

		if (param->bfr_len) {
			FUNC1(buf, reqctx->reqbfr, param->bfr_len);
			buf += param->bfr_len;
		}

		FUNC3(reqctx->hctx_wr.srcsg,
				   FUNC2(reqctx->hctx_wr.srcsg), buf,
				   param->sg_len, 0);
	} else {
		FUNC7(&ulp_walk, ulptx);
		if (param->bfr_len)
			FUNC4(&ulp_walk, param->bfr_len,
					    reqctx->hctx_wr.dma_addr);
		FUNC5(&ulp_walk, reqctx->hctx_wr.srcsg,
				  param->sg_len, reqctx->hctx_wr.src_ofst);
		reqctx->hctx_wr.srcsg = ulp_walk.last_sg;
		reqctx->hctx_wr.src_ofst = ulp_walk.last_sg_len;
		FUNC6(&ulp_walk);
	}
}