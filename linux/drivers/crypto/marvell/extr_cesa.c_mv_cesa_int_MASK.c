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
struct mv_cesa_engine {int /*<<< orphan*/  lock; struct crypto_async_request* req; scalar_t__ regs; } ;
struct mv_cesa_ctx {int dummy; } ;
struct crypto_async_request {int /*<<< orphan*/  tfm; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 scalar_t__ CESA_SA_FPGA_INT_STATUS ; 
 scalar_t__ CESA_SA_INT_STATUS ; 
 int EINPROGRESS ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  IRQ_NONE ; 
 struct mv_cesa_ctx* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct mv_cesa_ctx*,struct crypto_async_request*,int) ; 
 struct crypto_async_request* FUNC2 (struct mv_cesa_engine*) ; 
 int FUNC3 (struct mv_cesa_engine*) ; 
 int FUNC4 (struct mv_cesa_engine*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct mv_cesa_engine*) ; 
 int FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int,scalar_t__) ; 

__attribute__((used)) static irqreturn_t FUNC10(int irq, void *priv)
{
	struct mv_cesa_engine *engine = priv;
	struct crypto_async_request *req;
	struct mv_cesa_ctx *ctx;
	u32 status, mask;
	irqreturn_t ret = IRQ_NONE;

	while (true) {
		int res;

		mask = FUNC3(engine);
		status = FUNC6(engine->regs + CESA_SA_INT_STATUS);

		if (!(status & mask))
			break;

		/*
		 * TODO: avoid clearing the FPGA_INT_STATUS if this not
		 * relevant on some platforms.
		 */
		FUNC9(~status, engine->regs + CESA_SA_FPGA_INT_STATUS);
		FUNC9(~status, engine->regs + CESA_SA_INT_STATUS);

		/* Process fetched requests */
		res = FUNC4(engine, status & mask);
		ret = IRQ_HANDLED;

		FUNC7(&engine->lock);
		req = engine->req;
		if (res != -EINPROGRESS)
			engine->req = NULL;
		FUNC8(&engine->lock);

		ctx = FUNC0(req->tfm);

		if (res && res != -EINPROGRESS)
			FUNC1(ctx, req, res);

		/* Launch the next pending request */
		FUNC5(engine);

		/* Iterate over the complete queue */
		while (true) {
			req = FUNC2(engine);
			if (!req)
				break;

			ctx = FUNC0(req->tfm);
			FUNC1(ctx, req, 0);
		}
	}

	return ret;
}