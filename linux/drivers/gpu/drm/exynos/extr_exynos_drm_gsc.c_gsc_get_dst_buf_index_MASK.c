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
struct gsc_context {int /*<<< orphan*/  dev; int /*<<< orphan*/  id; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int EINVAL ; 
 int GSC_MAX_DST ; 
 int /*<<< orphan*/  GSC_OUT_BASE_ADDR_Y_MASK ; 
 int FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct gsc_context*,int,int) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct gsc_context *ctx)
{
	u32 cfg, curr_index, i;
	u32 buf_id = GSC_MAX_DST;

	FUNC0(ctx->dev, "gsc id[%d]\n", ctx->id);

	cfg = FUNC4(GSC_OUT_BASE_ADDR_Y_MASK);
	curr_index = FUNC2(cfg);

	for (i = curr_index; i < GSC_MAX_DST; i++) {
		if (!((cfg >> i) & 0x1)) {
			buf_id = i;
			break;
		}
	}

	if (buf_id == GSC_MAX_DST) {
		FUNC1(ctx->dev, "failed to get out buffer index.\n");
		return -EINVAL;
	}

	FUNC3(ctx, buf_id, false);

	FUNC0(ctx->dev, "cfg[0x%x]curr_index[%d]buf_id[%d]\n", cfg,
			  curr_index, buf_id);

	return buf_id;
}