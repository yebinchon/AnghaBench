#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct hibmc_drm_private {scalar_t__ mmio; } ;
struct drm_crtc {TYPE_1__* dev; } ;
struct TYPE_2__ {struct hibmc_drm_private* dev_private; } ;

/* Variables and functions */
 scalar_t__ HIBMC_RAW_INTERRUPT_EN ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static int FUNC2(struct drm_crtc *crtc)
{
	struct hibmc_drm_private *priv = crtc->dev->dev_private;

	FUNC1(FUNC0(1),
	       priv->mmio + HIBMC_RAW_INTERRUPT_EN);

	return 0;
}