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
struct qat_rsa_ctx {int key_sz; int crt_mode; int /*<<< orphan*/ * qinv; int /*<<< orphan*/ * dq; int /*<<< orphan*/ * dp; int /*<<< orphan*/ * q; int /*<<< orphan*/ * p; int /*<<< orphan*/ * d; int /*<<< orphan*/ * e; int /*<<< orphan*/ * n; int /*<<< orphan*/  dma_qinv; int /*<<< orphan*/  dma_dq; int /*<<< orphan*/  dma_dp; int /*<<< orphan*/  dma_q; int /*<<< orphan*/  dma_p; int /*<<< orphan*/  dma_d; int /*<<< orphan*/  dma_e; int /*<<< orphan*/  dma_n; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct device*,unsigned int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char,unsigned int) ; 

__attribute__((used)) static void FUNC2(struct device *dev, struct qat_rsa_ctx *ctx)
{
	unsigned int half_key_sz = ctx->key_sz / 2;

	/* Free the old key if any */
	if (ctx->n)
		FUNC0(dev, ctx->key_sz, ctx->n, ctx->dma_n);
	if (ctx->e)
		FUNC0(dev, ctx->key_sz, ctx->e, ctx->dma_e);
	if (ctx->d) {
		FUNC1(ctx->d, '\0', ctx->key_sz);
		FUNC0(dev, ctx->key_sz, ctx->d, ctx->dma_d);
	}
	if (ctx->p) {
		FUNC1(ctx->p, '\0', half_key_sz);
		FUNC0(dev, half_key_sz, ctx->p, ctx->dma_p);
	}
	if (ctx->q) {
		FUNC1(ctx->q, '\0', half_key_sz);
		FUNC0(dev, half_key_sz, ctx->q, ctx->dma_q);
	}
	if (ctx->dp) {
		FUNC1(ctx->dp, '\0', half_key_sz);
		FUNC0(dev, half_key_sz, ctx->dp, ctx->dma_dp);
	}
	if (ctx->dq) {
		FUNC1(ctx->dq, '\0', half_key_sz);
		FUNC0(dev, half_key_sz, ctx->dq, ctx->dma_dq);
	}
	if (ctx->qinv) {
		FUNC1(ctx->qinv, '\0', half_key_sz);
		FUNC0(dev, half_key_sz, ctx->qinv, ctx->dma_qinv);
	}

	ctx->n = NULL;
	ctx->e = NULL;
	ctx->d = NULL;
	ctx->p = NULL;
	ctx->q = NULL;
	ctx->dp = NULL;
	ctx->dq = NULL;
	ctx->qinv = NULL;
	ctx->crt_mode = false;
	ctx->key_sz = 0;
}