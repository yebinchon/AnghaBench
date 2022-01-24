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
typedef  scalar_t__ u32 ;
struct dsgl_walk {int dummy; } ;
struct crypto_aead {int dummy; } ;
struct cpl_rx_phys_dsgl {int dummy; } ;
struct chcr_context {int /*<<< orphan*/  pci_chan_id; } ;
struct chcr_aead_reqctx {scalar_t__ op; int /*<<< orphan*/  iv_dma; scalar_t__ b0_len; } ;
struct aead_request {int /*<<< orphan*/  dst; scalar_t__ cryptlen; scalar_t__ assoclen; } ;

/* Variables and functions */
 scalar_t__ IV ; 
 struct chcr_context* FUNC0 (struct crypto_aead*) ; 
 struct chcr_aead_reqctx* FUNC1 (struct aead_request*) ; 
 unsigned int FUNC2 (struct crypto_aead*) ; 
 struct crypto_aead* FUNC3 (struct aead_request*) ; 
 int /*<<< orphan*/  FUNC4 (struct dsgl_walk*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct dsgl_walk*,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct dsgl_walk*,unsigned short,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct dsgl_walk*,struct cpl_rx_phys_dsgl*) ; 

void FUNC8(struct aead_request *req,
			   struct cpl_rx_phys_dsgl *phys_cpl,
			   unsigned short qid)
{
	struct chcr_aead_reqctx  *reqctx = FUNC1(req);
	struct crypto_aead *tfm = FUNC3(req);
	struct dsgl_walk dsgl_walk;
	unsigned int authsize = FUNC2(tfm);
	struct chcr_context *ctx = FUNC0(tfm);
	u32 temp;

	FUNC7(&dsgl_walk, phys_cpl);
	FUNC4(&dsgl_walk, IV + reqctx->b0_len, reqctx->iv_dma);
	temp = req->assoclen + req->cryptlen +
		(reqctx->op ? -authsize : authsize);
	FUNC5(&dsgl_walk, req->dst, temp, 0);
	FUNC6(&dsgl_walk, qid, ctx->pci_chan_id);
}