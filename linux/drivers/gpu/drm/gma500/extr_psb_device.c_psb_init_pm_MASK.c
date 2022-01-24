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
struct drm_psb_private {int dummy; } ;
struct drm_device {struct drm_psb_private* dev_private; } ;

/* Variables and functions */
 int /*<<< orphan*/  PSB_CR_CLKGATECTL ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct drm_device *dev)
{
	struct drm_psb_private *dev_priv = dev->dev_private;

	u32 gating = FUNC0(PSB_CR_CLKGATECTL);
	gating &= ~3;	/* Disable 2D clock gating */
	gating |= 1;
	FUNC1(gating, PSB_CR_CLKGATECTL);
	FUNC0(PSB_CR_CLKGATECTL);
}