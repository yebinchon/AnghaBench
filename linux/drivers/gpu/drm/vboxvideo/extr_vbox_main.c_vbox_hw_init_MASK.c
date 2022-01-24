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
struct vbva_modehint {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  pdev; int /*<<< orphan*/  dev; } ;
struct vbox_private {scalar_t__ guest_heap; TYPE_1__ ddev; int /*<<< orphan*/  guest_pool; int /*<<< orphan*/  last_mode_hints; int /*<<< orphan*/  num_crtcs; int /*<<< orphan*/  available_vram_size; int /*<<< orphan*/  full_vram_size; int /*<<< orphan*/  any_pitch; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int ENOMEM ; 
 int ENOTSUPP ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC2 (struct vbox_private*) ; 
 int /*<<< orphan*/  GUEST_HEAP_SIZE ; 
 int /*<<< orphan*/  GUEST_HEAP_USABLE_SIZE ; 
 int /*<<< orphan*/  VBE_DISPI_ID_ANYX ; 
 int /*<<< orphan*/  VBE_DISPI_IOPORT_DATA ; 
 int /*<<< orphan*/  VBOX_MAX_SCREENS ; 
 int /*<<< orphan*/  VBOX_VBVA_CONF32_MONITOR_COUNT ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ,unsigned long,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct vbox_private*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  u32 ; 
 int FUNC14 (struct vbox_private*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 

int FUNC16(struct vbox_private *vbox)
{
	int ret = -ENOMEM;

	vbox->full_vram_size = FUNC11(VBE_DISPI_IOPORT_DATA);
	vbox->any_pitch = FUNC15(VBE_DISPI_ID_ANYX);

	FUNC1("VRAM %08x\n", vbox->full_vram_size);

	/* Map guest-heap at end of vram */
	vbox->guest_heap =
	    FUNC12(vbox->ddev.pdev, 0, FUNC2(vbox),
			    GUEST_HEAP_SIZE);
	if (!vbox->guest_heap)
		return -ENOMEM;

	/* Create guest-heap mem-pool use 2^4 = 16 byte chunks */
	vbox->guest_pool = FUNC6(4, -1);
	if (!vbox->guest_pool)
		goto err_unmap_guest_heap;

	ret = FUNC5(vbox->guest_pool,
				(unsigned long)vbox->guest_heap,
				FUNC2(vbox),
				GUEST_HEAP_USABLE_SIZE, -1);
	if (ret)
		goto err_destroy_guest_pool;

	ret = FUNC10(vbox->guest_pool);
	if (ret) {
		FUNC0("vboxvideo: hgsmi_test_query_conf failed\n");
		goto err_destroy_guest_pool;
	}

	/* Reduce available VRAM size to reflect the guest heap. */
	vbox->available_vram_size = FUNC2(vbox);
	/* Linux drm represents monitors as a 32-bit array. */
	FUNC9(vbox->guest_pool, VBOX_VBVA_CONF32_MONITOR_COUNT,
			 &vbox->num_crtcs);
	vbox->num_crtcs = FUNC3(u32, vbox->num_crtcs, 1, VBOX_MAX_SCREENS);

	if (!FUNC8(vbox)) {
		ret = -ENOTSUPP;
		goto err_destroy_guest_pool;
	}

	vbox->last_mode_hints = FUNC4(vbox->ddev.dev, vbox->num_crtcs,
					     sizeof(struct vbva_modehint),
					     GFP_KERNEL);
	if (!vbox->last_mode_hints) {
		ret = -ENOMEM;
		goto err_destroy_guest_pool;
	}

	ret = FUNC14(vbox);
	if (ret)
		goto err_destroy_guest_pool;

	return 0;

err_destroy_guest_pool:
	FUNC7(vbox->guest_pool);
err_unmap_guest_heap:
	FUNC13(vbox->ddev.pdev, vbox->guest_heap);
	return ret;
}