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
struct caam_rng_ctx {int /*<<< orphan*/  sh_desc_dma; int /*<<< orphan*/  sh_desc; struct buf_data* bufs; struct device* jrdev; } ;
struct buf_data {int /*<<< orphan*/  addr; int /*<<< orphan*/  buf; int /*<<< orphan*/ * hw_desc; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_FROM_DEVICE ; 
 int /*<<< orphan*/  DUMP_PREFIX_ADDRESS ; 
 int ENOMEM ; 
 int HDR_REVERSE ; 
 int HDR_SHARE_DEFER ; 
 int /*<<< orphan*/  RN_BUF_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (struct device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC7 (char*,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static inline int FUNC8(struct caam_rng_ctx *ctx, int buf_id)
{
	struct device *jrdev = ctx->jrdev;
	struct buf_data *bd = &ctx->bufs[buf_id];
	u32 *desc = bd->hw_desc;
	int sh_len = FUNC2(ctx->sh_desc);

	FUNC6(desc, ctx->sh_desc_dma, sh_len, HDR_SHARE_DEFER |
			     HDR_REVERSE);

	bd->addr = FUNC4(jrdev, bd->buf, RN_BUF_SIZE, DMA_FROM_DEVICE);
	if (FUNC5(jrdev, bd->addr)) {
		FUNC3(jrdev, "unable to map dst\n");
		return -ENOMEM;
	}

	FUNC0(desc, bd->addr, RN_BUF_SIZE, 0);

	FUNC7("rng job desc@: ", DUMP_PREFIX_ADDRESS, 16, 4,
			     desc, FUNC1(desc), 1);

	return 0;
}