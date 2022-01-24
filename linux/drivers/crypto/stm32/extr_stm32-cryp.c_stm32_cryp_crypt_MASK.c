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
struct stm32_cryp_reqctx {unsigned long mode; } ;
struct stm32_cryp_ctx {int dummy; } ;
struct stm32_cryp {int /*<<< orphan*/  engine; } ;
struct ablkcipher_request {int dummy; } ;

/* Variables and functions */
 int ENODEV ; 
 struct stm32_cryp_reqctx* FUNC0 (struct ablkcipher_request*) ; 
 struct stm32_cryp_ctx* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ablkcipher_request*) ; 
 int FUNC3 (int /*<<< orphan*/ ,struct ablkcipher_request*) ; 
 struct stm32_cryp* FUNC4 (struct stm32_cryp_ctx*) ; 

__attribute__((used)) static int FUNC5(struct ablkcipher_request *req, unsigned long mode)
{
	struct stm32_cryp_ctx *ctx = FUNC1(
			FUNC2(req));
	struct stm32_cryp_reqctx *rctx = FUNC0(req);
	struct stm32_cryp *cryp = FUNC4(ctx);

	if (!cryp)
		return -ENODEV;

	rctx->mode = mode;

	return FUNC3(cryp->engine, req);
}