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
struct mcde {scalar_t__ te_sync; } ;
struct drm_crtc {struct drm_device* dev; } ;
struct drm_simple_display_pipe {struct drm_crtc crtc; } ;
struct drm_device {int /*<<< orphan*/  dev; struct mcde* dev_private; } ;

/* Variables and functions */
 int /*<<< orphan*/  MCDE_FIFO_A ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct drm_crtc*) ; 
 int /*<<< orphan*/  FUNC2 (struct mcde*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC3(struct drm_simple_display_pipe *pipe)
{
	struct drm_crtc *crtc = &pipe->crtc;
	struct drm_device *drm = crtc->dev;
	struct mcde *mcde = drm->dev_private;

	if (mcde->te_sync)
		FUNC1(crtc);

	/* Disable FIFO A flow */
	FUNC2(mcde, MCDE_FIFO_A, true);

	FUNC0(drm->dev, "MCDE display is disabled\n");
}