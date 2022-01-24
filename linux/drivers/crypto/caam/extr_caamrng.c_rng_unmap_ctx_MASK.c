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
struct device {int dummy; } ;
struct caam_rng_ctx {int /*<<< orphan*/ * bufs; int /*<<< orphan*/  sh_desc; int /*<<< orphan*/  sh_desc_dma; struct device* jrdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_TO_DEVICE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline void FUNC3(struct caam_rng_ctx *ctx)
{
	struct device *jrdev = ctx->jrdev;

	if (ctx->sh_desc_dma)
		FUNC1(jrdev, ctx->sh_desc_dma,
				 FUNC0(ctx->sh_desc), DMA_TO_DEVICE);
	FUNC2(jrdev, &ctx->bufs[0]);
	FUNC2(jrdev, &ctx->bufs[1]);
}