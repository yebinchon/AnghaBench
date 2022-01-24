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
typedef  int /*<<< orphan*/  u32 ;
struct device {int dummy; } ;
struct caam_rng_ctx {int /*<<< orphan*/  sh_desc_dma; int /*<<< orphan*/ * sh_desc; struct device* jrdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_TO_DEVICE ; 
 int /*<<< orphan*/  DUMP_PREFIX_ADDRESS ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FIFOST_TYPE_RNGSTORE ; 
 int /*<<< orphan*/  HDR_SHARE_SERIAL ; 
 int OP_ALG_ALGSEL_RNG ; 
 int OP_TYPE_CLASS1_ALG ; 
 int /*<<< orphan*/  RN_BUF_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct device*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (struct device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static inline int FUNC8(struct caam_rng_ctx *ctx)
{
	struct device *jrdev = ctx->jrdev;
	u32 *desc = ctx->sh_desc;

	FUNC6(desc, HDR_SHARE_SERIAL);

	/* Generate random bytes */
	FUNC0(desc, OP_ALG_ALGSEL_RNG | OP_TYPE_CLASS1_ALG);

	/* Store bytes */
	FUNC1(desc, RN_BUF_SIZE, FIFOST_TYPE_RNGSTORE);

	ctx->sh_desc_dma = FUNC4(jrdev, desc, FUNC2(desc),
					  DMA_TO_DEVICE);
	if (FUNC5(jrdev, ctx->sh_desc_dma)) {
		FUNC3(jrdev, "unable to map shared descriptor\n");
		return -ENOMEM;
	}

	FUNC7("rng shdesc@: ", DUMP_PREFIX_ADDRESS, 16, 4,
			     desc, FUNC2(desc), 1);

	return 0;
}