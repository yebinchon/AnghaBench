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
struct drm_device {scalar_t__ dev_private; } ;
typedef  int /*<<< orphan*/  drm_r128_private_t ;

/* Variables and functions */
 int /*<<< orphan*/  R128_CRTC_VBLANK_INT_AK ; 
 int /*<<< orphan*/  R128_GEN_INT_CNTL ; 
 int /*<<< orphan*/  R128_GEN_INT_STATUS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC1(struct drm_device *dev)
{
	drm_r128_private_t *dev_priv = (drm_r128_private_t *) dev->dev_private;

	/* Disable *all* interrupts */
	FUNC0(R128_GEN_INT_CNTL, 0);
	/* Clear vblank bit if it's already high */
	FUNC0(R128_GEN_INT_STATUS, R128_CRTC_VBLANK_INT_AK);
}