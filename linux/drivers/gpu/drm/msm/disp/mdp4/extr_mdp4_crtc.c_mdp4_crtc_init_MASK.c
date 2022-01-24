#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  lock; } ;
struct TYPE_5__ {int /*<<< orphan*/  irq; int /*<<< orphan*/  irqmask; } ;
struct TYPE_4__ {int /*<<< orphan*/  irq; int /*<<< orphan*/  irqmask; } ;
struct drm_crtc {int dummy; } ;
struct mdp4_crtc {int id; int ovlp; int dma; int /*<<< orphan*/  unref_cursor_work; TYPE_3__ cursor; int /*<<< orphan*/  name; TYPE_2__ err; TYPE_1__ vblank; struct drm_crtc base; } ;
struct drm_plane {int dummy; } ;
struct drm_device {int dummy; } ;
typedef  enum mdp4_dma { ____Placeholder_mdp4_dma } mdp4_dma ;

/* Variables and functions */
 int /*<<< orphan*/  ENOMEM ; 
 struct drm_crtc* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 char** dma_names ; 
 int /*<<< orphan*/  FUNC3 (struct drm_crtc*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct drm_device*,struct drm_crtc*,struct drm_plane*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 struct mdp4_crtc* FUNC6 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mdp4_crtc_err_irq ; 
 int /*<<< orphan*/  mdp4_crtc_funcs ; 
 int /*<<< orphan*/  mdp4_crtc_helper_funcs ; 
 int /*<<< orphan*/  mdp4_crtc_vblank_irq ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int,char*,char*,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  unref_cursor_worker ; 

struct drm_crtc *FUNC9(struct drm_device *dev,
		struct drm_plane *plane, int id, int ovlp_id,
		enum mdp4_dma dma_id)
{
	struct drm_crtc *crtc = NULL;
	struct mdp4_crtc *mdp4_crtc;

	mdp4_crtc = FUNC6(sizeof(*mdp4_crtc), GFP_KERNEL);
	if (!mdp4_crtc)
		return FUNC0(-ENOMEM);

	crtc = &mdp4_crtc->base;

	mdp4_crtc->id = id;

	mdp4_crtc->ovlp = ovlp_id;
	mdp4_crtc->dma = dma_id;

	mdp4_crtc->vblank.irqmask = FUNC2(mdp4_crtc->dma);
	mdp4_crtc->vblank.irq = mdp4_crtc_vblank_irq;

	mdp4_crtc->err.irqmask = FUNC1(mdp4_crtc->dma);
	mdp4_crtc->err.irq = mdp4_crtc_err_irq;

	FUNC7(mdp4_crtc->name, sizeof(mdp4_crtc->name), "%s:%d",
			dma_names[dma_id], ovlp_id);

	FUNC8(&mdp4_crtc->cursor.lock);

	FUNC5(&mdp4_crtc->unref_cursor_work,
			"unref cursor", unref_cursor_worker);

	FUNC4(dev, crtc, plane, NULL, &mdp4_crtc_funcs,
				  NULL);
	FUNC3(crtc, &mdp4_crtc_helper_funcs);

	return crtc;
}