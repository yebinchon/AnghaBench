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
struct sunxi_engine {int /*<<< orphan*/  regs; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  SUN4I_BACKEND_OCCTL_ENABLE ; 
 int /*<<< orphan*/  SUN4I_BACKEND_OCCTL_REG ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * sunxi_rgb2yuv_coef ; 

__attribute__((used)) static void FUNC3(struct sunxi_engine *engine)
{
	int i;

	FUNC0("Applying RGB to YUV color correction\n");

	/* Set color correction */
	FUNC2(engine->regs, SUN4I_BACKEND_OCCTL_REG,
		     SUN4I_BACKEND_OCCTL_ENABLE);

	for (i = 0; i < 12; i++)
		FUNC2(engine->regs, FUNC1(i),
			     sunxi_rgb2yuv_coef[i]);
}