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
struct dsgl_walk {int /*<<< orphan*/  last_sg_len; int /*<<< orphan*/  last_sg; } ;
struct crypto_ablkcipher {int dummy; } ;
struct cpl_rx_phys_dsgl {int dummy; } ;
struct cipher_wr_param {int /*<<< orphan*/  bytes; int /*<<< orphan*/  req; } ;
struct chcr_context {int /*<<< orphan*/  pci_chan_id; } ;
struct chcr_blkcipher_req_ctx {int /*<<< orphan*/  dst_ofst; int /*<<< orphan*/  dstsg; } ;
struct ablkcipher_request {int dummy; } ;

/* Variables and functions */
 struct chcr_blkcipher_req_ctx* FUNC0 (struct ablkcipher_request*) ; 
 struct chcr_context* FUNC1 (struct crypto_ablkcipher*) ; 
 struct crypto_ablkcipher* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct dsgl_walk*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct dsgl_walk*,unsigned short,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct dsgl_walk*,struct cpl_rx_phys_dsgl*) ; 

void FUNC6(struct ablkcipher_request *req,
			     struct cpl_rx_phys_dsgl *phys_cpl,
			     struct  cipher_wr_param *wrparam,
			     unsigned short qid)
{
	struct chcr_blkcipher_req_ctx *reqctx = FUNC0(req);
	struct crypto_ablkcipher *tfm = FUNC2(wrparam->req);
	struct chcr_context *ctx = FUNC1(tfm);
	struct dsgl_walk dsgl_walk;

	FUNC5(&dsgl_walk, phys_cpl);
	FUNC3(&dsgl_walk, reqctx->dstsg, wrparam->bytes,
			 reqctx->dst_ofst);
	reqctx->dstsg = dsgl_walk.last_sg;
	reqctx->dst_ofst = dsgl_walk.last_sg_len;

	FUNC4(&dsgl_walk, qid, ctx->pci_chan_id);
}