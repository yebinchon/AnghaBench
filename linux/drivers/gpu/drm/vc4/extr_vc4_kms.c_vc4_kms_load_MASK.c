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
struct vc4_load_tracker_state {int /*<<< orphan*/  base; } ;
struct vc4_dev {int load_tracker_enabled; int /*<<< orphan*/  load_tracker; int /*<<< orphan*/  ctm_manager; int /*<<< orphan*/  ctm_state_lock; int /*<<< orphan*/  async_modeset; } ;
struct vc4_ctm_state {int /*<<< orphan*/  base; } ;
struct TYPE_2__ {int max_width; int max_height; int preferred_depth; int async_page_flip; int allow_fb_modifiers; int /*<<< orphan*/ * funcs; int /*<<< orphan*/  num_crtc; } ;
struct drm_device {int vblank_disable_immediate; int irq_enabled; TYPE_1__ mode_config; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct drm_device*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (struct drm_device*,int /*<<< orphan*/ ) ; 
 void* FUNC7 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int) ; 
 struct vc4_dev* FUNC9 (struct drm_device*) ; 
 int /*<<< orphan*/  vc4_ctm_state_funcs ; 
 int /*<<< orphan*/  vc4_load_tracker_state_funcs ; 
 int /*<<< orphan*/  vc4_mode_funcs ; 

int FUNC10(struct drm_device *dev)
{
	struct vc4_dev *vc4 = FUNC9(dev);
	struct vc4_ctm_state *ctm_state;
	struct vc4_load_tracker_state *load_state;
	int ret;

	/* Start with the load tracker enabled. Can be disabled through the
	 * debugfs load_tracker file.
	 */
	vc4->load_tracker_enabled = true;

	FUNC8(&vc4->async_modeset, 1);

	/* Set support for vblank irq fast disable, before drm_vblank_init() */
	dev->vblank_disable_immediate = true;

	dev->irq_enabled = true;
	ret = FUNC6(dev, dev->mode_config.num_crtc);
	if (ret < 0) {
		FUNC0(dev->dev, "failed to initialize vblank\n");
		return ret;
	}

	dev->mode_config.max_width = 2048;
	dev->mode_config.max_height = 2048;
	dev->mode_config.funcs = &vc4_mode_funcs;
	dev->mode_config.preferred_depth = 24;
	dev->mode_config.async_page_flip = true;
	dev->mode_config.allow_fb_modifiers = true;

	FUNC5(&vc4->ctm_state_lock);

	ctm_state = FUNC7(sizeof(*ctm_state), GFP_KERNEL);
	if (!ctm_state)
		return -ENOMEM;

	FUNC2(dev, &vc4->ctm_manager, &ctm_state->base,
				    &vc4_ctm_state_funcs);

	load_state = FUNC7(sizeof(*load_state), GFP_KERNEL);
	if (!load_state) {
		FUNC1(&vc4->ctm_manager);
		return -ENOMEM;
	}

	FUNC2(dev, &vc4->load_tracker, &load_state->base,
				    &vc4_load_tracker_state_funcs);

	FUNC4(dev);

	FUNC3(dev);

	return 0;
}