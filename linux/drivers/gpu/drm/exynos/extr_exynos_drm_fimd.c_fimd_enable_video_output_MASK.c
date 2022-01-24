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
struct fimd_context {scalar_t__ regs; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  WINCONx_ENWIN ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void FUNC3(struct fimd_context *ctx, unsigned int win,
					bool enable)
{
	u32 val = FUNC1(ctx->regs + FUNC0(win));

	if (enable)
		val |= WINCONx_ENWIN;
	else
		val &= ~WINCONx_ENWIN;

	FUNC2(val, ctx->regs + FUNC0(win));
}