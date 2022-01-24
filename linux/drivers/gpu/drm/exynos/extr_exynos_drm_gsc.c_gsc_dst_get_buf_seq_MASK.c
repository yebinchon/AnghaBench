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
struct gsc_context {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  GSC_OUT_BASE_ADDR_Y_MASK ; 
 int GSC_REG_SZ ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct gsc_context *ctx)
{
	u32 cfg, i, buf_num = GSC_REG_SZ;
	u32 mask = 0x00000001;

	cfg = FUNC1(GSC_OUT_BASE_ADDR_Y_MASK);

	for (i = 0; i < GSC_REG_SZ; i++)
		if (cfg & (mask << i))
			buf_num--;

	FUNC0(ctx->dev, "buf_num[%d]\n", buf_num);

	return buf_num;
}