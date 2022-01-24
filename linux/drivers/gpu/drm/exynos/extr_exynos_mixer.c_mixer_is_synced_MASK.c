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
struct mixer_context {scalar_t__ mxr_ver; int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  MXR_BIT_VP_ENABLED ; 
 int /*<<< orphan*/  MXR_CFG ; 
 int MXR_CFG_LAYER_UPDATE_COUNT_MASK ; 
 int /*<<< orphan*/  MXR_CFG_S ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ MXR_VER_128_0_0_184 ; 
 scalar_t__ MXR_VER_16_0_33_0 ; 
 int /*<<< orphan*/  VP_SHADOW_UPDATE ; 
 int FUNC2 (struct mixer_context*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (struct mixer_context*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool FUNC5(struct mixer_context *ctx)
{
	u32 base, shadow;

	if (ctx->mxr_ver == MXR_VER_16_0_33_0 ||
	    ctx->mxr_ver == MXR_VER_128_0_0_184)
		return !(FUNC2(ctx, MXR_CFG) &
			 MXR_CFG_LAYER_UPDATE_COUNT_MASK);

	if (FUNC3(MXR_BIT_VP_ENABLED, &ctx->flags) &&
	    FUNC4(ctx, VP_SHADOW_UPDATE))
		return false;

	base = FUNC2(ctx, MXR_CFG);
	shadow = FUNC2(ctx, MXR_CFG_S);
	if (base != shadow)
		return false;

	base = FUNC2(ctx, FUNC0(0));
	shadow = FUNC2(ctx, FUNC1(0));
	if (base != shadow)
		return false;

	base = FUNC2(ctx, FUNC0(1));
	shadow = FUNC2(ctx, FUNC1(1));
	if (base != shadow)
		return false;

	return true;
}