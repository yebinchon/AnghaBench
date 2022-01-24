#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int u64 ;
struct TYPE_8__ {int shift; int limit; int /*<<< orphan*/  domain; } ;
struct tegra_drm {TYPE_4__* domain; TYPE_3__ carveout; int /*<<< orphan*/  mm; int /*<<< orphan*/  mm_lock; scalar_t__ hub; struct drm_device* drm; int /*<<< orphan*/  clients; int /*<<< orphan*/  clients_lock; } ;
struct host1x_device {int /*<<< orphan*/  dev; } ;
struct TYPE_7__ {int max_width; int max_height; int allow_fb_modifiers; int normalize_zpos; int /*<<< orphan*/  num_crtc; int /*<<< orphan*/ * helper_private; int /*<<< orphan*/ * funcs; scalar_t__ min_height; scalar_t__ min_width; } ;
struct drm_device {int irq_enabled; int max_vblank_count; TYPE_2__ mode_config; struct tegra_drm* dev_private; int /*<<< orphan*/  dev; } ;
typedef  int dma_addr_t ;
struct TYPE_6__ {int aperture_start; int aperture_end; } ;
struct TYPE_9__ {int /*<<< orphan*/  pgsize_bitmap; TYPE_1__ geometry; } ;

/* Variables and functions */
 int CARVEOUT_SZ ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 unsigned long FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC9 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC10 (struct drm_device*) ; 
 int FUNC11 (struct drm_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct host1x_device*) ; 
 int FUNC13 (struct host1x_device*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,unsigned long,int) ; 
 TYPE_4__* FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_4__*) ; 
 scalar_t__ FUNC17 (int /*<<< orphan*/ *) ; 
 int FUNC18 () ; 
 int /*<<< orphan*/  FUNC19 () ; 
 int FUNC20 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC21 (struct tegra_drm*) ; 
 struct tegra_drm* FUNC22 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  platform_bus_type ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC26 (scalar_t__) ; 
 int FUNC27 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC28 (struct drm_device*) ; 
 int FUNC29 (struct drm_device*) ; 
 int FUNC30 (struct drm_device*) ; 
 int /*<<< orphan*/  tegra_drm_mode_config_funcs ; 
 int /*<<< orphan*/  tegra_drm_mode_config_helpers ; 
 struct host1x_device* FUNC31 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC32(struct drm_device *drm, unsigned long flags)
{
	struct host1x_device *device = FUNC31(drm->dev);
	struct tegra_drm *tegra;
	int err;

	tegra = FUNC22(sizeof(*tegra), GFP_KERNEL);
	if (!tegra)
		return -ENOMEM;

	if (FUNC17(&platform_bus_type)) {
		tegra->domain = FUNC15(&platform_bus_type);
		if (!tegra->domain) {
			err = -ENOMEM;
			goto free;
		}

		err = FUNC18();
		if (err < 0)
			goto domain;
	}

	FUNC24(&tegra->clients_lock);
	FUNC1(&tegra->clients);

	drm->dev_private = tegra;
	tegra->drm = drm;

	FUNC9(drm);

	drm->mode_config.min_width = 0;
	drm->mode_config.min_height = 0;

	drm->mode_config.max_width = 4096;
	drm->mode_config.max_height = 4096;

	drm->mode_config.allow_fb_modifiers = true;

	drm->mode_config.normalize_zpos = true;

	drm->mode_config.funcs = &tegra_drm_mode_config_funcs;
	drm->mode_config.helper_private = &tegra_drm_mode_config_helpers;

	err = FUNC30(drm);
	if (err < 0)
		goto config;

	FUNC5(drm);

	err = FUNC13(device);
	if (err < 0)
		goto fbdev;

	if (tegra->domain) {
		u64 carveout_start, carveout_end, gem_start, gem_end;
		u64 dma_mask = FUNC3(&device->dev);
		dma_addr_t start, end;
		unsigned long order;

		start = tegra->domain->geometry.aperture_start & dma_mask;
		end = tegra->domain->geometry.aperture_end & dma_mask;

		gem_start = start;
		gem_end = end - CARVEOUT_SZ;
		carveout_start = gem_end + 1;
		carveout_end = end;

		order = FUNC2(tegra->domain->pgsize_bitmap);
		FUNC14(&tegra->carveout.domain, 1UL << order,
				 carveout_start >> order);

		tegra->carveout.shift = FUNC20(&tegra->carveout.domain);
		tegra->carveout.limit = carveout_end >> tegra->carveout.shift;

		FUNC6(&tegra->mm, gem_start, gem_end - gem_start + 1);
		FUNC24(&tegra->mm_lock);

		FUNC0("IOMMU apertures:\n");
		FUNC0("  GEM: %#llx-%#llx\n", gem_start, gem_end);
		FUNC0("  Carveout: %#llx-%#llx\n", carveout_start,
			  carveout_end);
	}

	if (tegra->hub) {
		err = FUNC27(tegra->hub);
		if (err < 0)
			goto device;
	}

	/*
	 * We don't use the drm_irq_install() helpers provided by the DRM
	 * core, so we need to set this manually in order to allow the
	 * DRM_IOCTL_WAIT_VBLANK to operate correctly.
	 */
	drm->irq_enabled = true;

	/* syncpoints are used for full 32-bit hardware VBLANK counters */
	drm->max_vblank_count = 0xffffffff;

	err = FUNC11(drm, drm->mode_config.num_crtc);
	if (err < 0)
		goto hub;

	FUNC10(drm);

	err = FUNC29(drm);
	if (err < 0)
		goto hub;

	return 0;

hub:
	if (tegra->hub)
		FUNC26(tegra->hub);
device:
	FUNC12(device);
fbdev:
	FUNC4(drm);
	FUNC28(drm);
config:
	FUNC8(drm);

	if (tegra->domain) {
		FUNC23(&tegra->mm_lock);
		FUNC7(&tegra->mm);
		FUNC25(&tegra->carveout.domain);
		FUNC19();
	}
domain:
	if (tegra->domain)
		FUNC16(tegra->domain);
free:
	FUNC21(tegra);
	return err;
}