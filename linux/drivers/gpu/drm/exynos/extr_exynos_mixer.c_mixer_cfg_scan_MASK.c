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
struct mixer_context {scalar_t__ mxr_ver; int /*<<< orphan*/  scan_value; int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  MXR_BIT_INTERLACE ; 
 int /*<<< orphan*/  MXR_CFG ; 
 int /*<<< orphan*/  MXR_CFG_SCAN_INTERLACE ; 
 int /*<<< orphan*/  MXR_CFG_SCAN_MASK ; 
 int /*<<< orphan*/  MXR_CFG_SCAN_PROGRESSIVE ; 
 int FUNC0 (int) ; 
 int FUNC1 (int) ; 
 int /*<<< orphan*/  MXR_RESOLUTION ; 
 scalar_t__ MXR_VER_128_0_0_184 ; 
 int /*<<< orphan*/  FUNC2 (struct mixer_context*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct mixer_context*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(struct mixer_context *ctx, int width, int height)
{
	u32 val;

	/* choosing between interlace and progressive mode */
	val = FUNC4(MXR_BIT_INTERLACE, &ctx->flags) ?
		MXR_CFG_SCAN_INTERLACE : MXR_CFG_SCAN_PROGRESSIVE;

	if (ctx->mxr_ver == MXR_VER_128_0_0_184)
		FUNC2(ctx, MXR_RESOLUTION,
			FUNC0(height) | FUNC1(width));
	else
		val |= ctx->scan_value;

	FUNC3(ctx, MXR_CFG, val, MXR_CFG_SCAN_MASK);
}