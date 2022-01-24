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
 int /*<<< orphan*/  GSC_IN_BASE_ADDR_Y_MASK ; 
 int FUNC2 (int) ; 
 int GSC_MAX_SRC ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct gsc_context*,int,int) ; 

__attribute__((used)) static int FUNC5(struct gsc_context *ctx)
{
	u32 cfg, curr_index, i;
	u32 buf_id = GSC_MAX_SRC;

	FUNC0(ctx->dev, "gsc id[%d]\n", ctx->id);

	cfg = FUNC3(GSC_IN_BASE_ADDR_Y_MASK);
	curr_index = FUNC2(cfg);

	for (i = curr_index; i < GSC_MAX_SRC; i++) {
		if (!((cfg >> i) & 0x1)) {
			buf_id = i;
			break;
		}
	}

	FUNC0(ctx->dev, "cfg[0x%x]curr_index[%d]buf_id[%d]\n", cfg,
			  curr_index, buf_id);

	if (buf_id == GSC_MAX_SRC) {
		FUNC1(ctx->dev, "failed to get in buffer index.\n");
		return -EINVAL;
	}

	FUNC4(ctx, buf_id, false);

	return buf_id;
}