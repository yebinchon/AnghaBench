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
typedef  scalar_t__ u16 ;
struct drm_plane {int /*<<< orphan*/  state; } ;
struct malidp_plane {int /*<<< orphan*/  hwdev; TYPE_1__* layer; struct drm_plane base; } ;
struct drm_gem_cma_object {int /*<<< orphan*/  paddr; } ;
struct drm_framebuffer {scalar_t__ modifier; } ;
typedef  int /*<<< orphan*/  dma_addr_t ;
struct TYPE_2__ {scalar_t__ ptr; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct drm_framebuffer*,int /*<<< orphan*/ ,int) ; 
 struct drm_gem_cma_object* FUNC2 (struct drm_framebuffer*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct drm_framebuffer *fb,
				       struct malidp_plane *mp,
				       int plane_index)
{
	dma_addr_t paddr;
	u16 ptr;
	struct drm_plane *plane = &mp->base;
	bool afbc = fb->modifier ? true : false;

	ptr = mp->layer->ptr + (plane_index << 4);

	/*
	 * drm_fb_cma_get_gem_addr() alters the physical base address of the
	 * framebuffer as per the plane's src_x, src_y co-ordinates (ie to
	 * take care of source cropping).
	 * For AFBC, this is not needed as the cropping is handled by _AD_CROP_H
	 * and _AD_CROP_V registers.
	 */
	if (!afbc) {
		paddr = FUNC1(fb, plane->state,
						plane_index);
	} else {
		struct drm_gem_cma_object *obj;

		obj = FUNC2(fb, plane_index);

		if (FUNC0(!obj))
			return;
		paddr = obj->paddr;
	}

	FUNC4(mp->hwdev, FUNC3(paddr), ptr);
	FUNC4(mp->hwdev, FUNC5(paddr), ptr + 4);
}