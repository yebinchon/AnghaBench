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
struct drm_simple_display_pipe {int dummy; } ;
struct aspeed_gfx {scalar_t__ base; } ;

/* Variables and functions */
 scalar_t__ CRT_CTRL1 ; 
 int CRT_CTRL_VERTICAL_INTR_EN ; 
 int CRT_CTRL_VERTICAL_INTR_STS ; 
 struct aspeed_gfx* FUNC0 (struct drm_simple_display_pipe*) ; 
 int FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int,scalar_t__) ; 

__attribute__((used)) static int FUNC3(struct drm_simple_display_pipe *pipe)
{
	struct aspeed_gfx *priv = FUNC0(pipe);
	u32 reg = FUNC1(priv->base + CRT_CTRL1);

	/* Clear pending VBLANK IRQ */
	FUNC2(reg | CRT_CTRL_VERTICAL_INTR_STS, priv->base + CRT_CTRL1);

	reg |= CRT_CTRL_VERTICAL_INTR_EN;
	FUNC2(reg, priv->base + CRT_CTRL1);

	return 0;
}