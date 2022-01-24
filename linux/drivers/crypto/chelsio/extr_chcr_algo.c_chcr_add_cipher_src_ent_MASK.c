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
typedef  int /*<<< orphan*/  u8 ;
struct ulptx_walk {int /*<<< orphan*/  last_sg_len; int /*<<< orphan*/  last_sg; } ;
struct ulptx_sgl {int dummy; } ;
struct cipher_wr_param {int /*<<< orphan*/  bytes; } ;
struct chcr_blkcipher_req_ctx {int /*<<< orphan*/  src_ofst; int /*<<< orphan*/  srcsg; int /*<<< orphan*/  processed; scalar_t__ imm; int /*<<< orphan*/  iv; } ;
struct ablkcipher_request {int /*<<< orphan*/  src; } ;

/* Variables and functions */
 int /*<<< orphan*/  IV ; 
 struct chcr_blkcipher_req_ctx* FUNC0 (struct ablkcipher_request*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct ulptx_walk*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct ulptx_walk*) ; 
 int /*<<< orphan*/  FUNC6 (struct ulptx_walk*,struct ulptx_sgl*) ; 

void FUNC7(struct ablkcipher_request *req,
			     void *ulptx,
			     struct  cipher_wr_param *wrparam)
{
	struct ulptx_walk ulp_walk;
	struct chcr_blkcipher_req_ctx *reqctx = FUNC0(req);
	u8 *buf = ulptx;

	FUNC1(buf, reqctx->iv, IV);
	buf += IV;
	if (reqctx->imm) {
		FUNC3(req->src, FUNC2(req->src),
				   buf, wrparam->bytes, reqctx->processed);
	} else {
		FUNC6(&ulp_walk, (struct ulptx_sgl *)buf);
		FUNC4(&ulp_walk, reqctx->srcsg, wrparam->bytes,
				  reqctx->src_ofst);
		reqctx->srcsg = ulp_walk.last_sg;
		reqctx->src_ofst = ulp_walk.last_sg_len;
		FUNC5(&ulp_walk);
	}
}