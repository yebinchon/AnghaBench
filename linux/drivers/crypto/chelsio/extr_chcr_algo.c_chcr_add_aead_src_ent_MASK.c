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
struct ulptx_walk {int dummy; } ;
struct ulptx_sgl {int dummy; } ;
struct chcr_aead_reqctx {int /*<<< orphan*/  b0_dma; scalar_t__ b0_len; int /*<<< orphan*/  scratch_pad; scalar_t__ imm; } ;
struct aead_request {scalar_t__ assoclen; scalar_t__ cryptlen; int /*<<< orphan*/  src; } ;

/* Variables and functions */
 struct chcr_aead_reqctx* FUNC0 (struct aead_request*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct ulptx_walk*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct ulptx_walk*,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct ulptx_walk*) ; 
 int /*<<< orphan*/  FUNC7 (struct ulptx_walk*,struct ulptx_sgl*) ; 

void FUNC8(struct aead_request *req,
			   struct ulptx_sgl *ulptx)
{
	struct ulptx_walk ulp_walk;
	struct chcr_aead_reqctx  *reqctx = FUNC0(req);

	if (reqctx->imm) {
		u8 *buf = (u8 *)ulptx;

		if (reqctx->b0_len) {
			FUNC1(buf, reqctx->scratch_pad, reqctx->b0_len);
			buf += reqctx->b0_len;
		}
		FUNC3(req->src, FUNC2(req->src),
				   buf, req->cryptlen + req->assoclen, 0);
	} else {
		FUNC7(&ulp_walk, ulptx);
		if (reqctx->b0_len)
			FUNC4(&ulp_walk, reqctx->b0_len,
					    reqctx->b0_dma);
		FUNC5(&ulp_walk, req->src, req->cryptlen +
				  req->assoclen,  0);
		FUNC6(&ulp_walk);
	}
}