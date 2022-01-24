#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct psb_intel_mode_device {int dummy; } ;
struct psb_intel_crtc_state {int dummy; } ;
struct TYPE_4__ {scalar_t__ num_connectors; struct drm_connector** connectors; int /*<<< orphan*/ * crtc; } ;
struct gma_crtc {int pipe; int plane; int active; TYPE_2__ mode_set; int /*<<< orphan*/  base; scalar_t__ cursor_addr; struct psb_intel_mode_device* mode_dev; scalar_t__* lut_adj; int /*<<< orphan*/  clock_funcs; void* crtc_state; } ;
struct drm_psb_private {int /*<<< orphan*/ ** pipe_to_crtc_mapping; int /*<<< orphan*/ ** plane_to_crtc_mapping; TYPE_1__* ops; } ;
struct drm_device {int /*<<< orphan*/  dev; struct drm_psb_private* dev_private; } ;
struct drm_connector {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  crtc_helper; int /*<<< orphan*/  clock_funcs; int /*<<< orphan*/  crtc_funcs; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int INTELFB_CONN_LIMIT ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct drm_device*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (struct gma_crtc*) ; 
 void* FUNC7 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct drm_device*,struct gma_crtc*) ; 

void FUNC9(struct drm_device *dev, int pipe,
		     struct psb_intel_mode_device *mode_dev)
{
	struct drm_psb_private *dev_priv = dev->dev_private;
	struct gma_crtc *gma_crtc;
	int i;

	/* We allocate a extra array of drm_connector pointers
	 * for fbdev after the crtc */
	gma_crtc = FUNC7(sizeof(struct gma_crtc) +
			(INTELFB_CONN_LIMIT * sizeof(struct drm_connector *)),
			GFP_KERNEL);
	if (gma_crtc == NULL)
		return;

	gma_crtc->crtc_state =
		FUNC7(sizeof(struct psb_intel_crtc_state), GFP_KERNEL);
	if (!gma_crtc->crtc_state) {
		FUNC2(dev->dev, "Crtc state error: No memory\n");
		FUNC6(gma_crtc);
		return;
	}

	/* Set the CRTC operations from the chip specific data */
	FUNC4(dev, &gma_crtc->base, dev_priv->ops->crtc_funcs);

	/* Set the CRTC clock functions from chip specific data */
	gma_crtc->clock_funcs = dev_priv->ops->clock_funcs;

	FUNC5(&gma_crtc->base, 256);
	gma_crtc->pipe = pipe;
	gma_crtc->plane = pipe;

	for (i = 0; i < 256; i++)
		gma_crtc->lut_adj[i] = 0;

	gma_crtc->mode_dev = mode_dev;
	gma_crtc->cursor_addr = 0;

	FUNC3(&gma_crtc->base,
						dev_priv->ops->crtc_helper);

	/* Setup the array of drm_connector pointer array */
	gma_crtc->mode_set.crtc = &gma_crtc->base;
	FUNC1(pipe >= FUNC0(dev_priv->plane_to_crtc_mapping) ||
	       dev_priv->plane_to_crtc_mapping[gma_crtc->plane] != NULL);
	dev_priv->plane_to_crtc_mapping[gma_crtc->plane] = &gma_crtc->base;
	dev_priv->pipe_to_crtc_mapping[gma_crtc->pipe] = &gma_crtc->base;
	gma_crtc->mode_set.connectors = (struct drm_connector **)(gma_crtc + 1);
	gma_crtc->mode_set.num_connectors = 0;
	FUNC8(dev, gma_crtc);

	/* Set to true so that the pipe is forced off on initial config. */
	gma_crtc->active = true;
}