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
struct exynos_drm_gem {scalar_t__ dma_addr; } ;
struct drm_framebuffer {scalar_t__* offsets; int /*<<< orphan*/ * obj; } ;
typedef  scalar_t__ dma_addr_t ;

/* Variables and functions */
 int MAX_FB_BUFFER ; 
 scalar_t__ FUNC0 (int) ; 
 struct exynos_drm_gem* FUNC1 (int /*<<< orphan*/ ) ; 

dma_addr_t FUNC2(struct drm_framebuffer *fb, int index)
{
	struct exynos_drm_gem *exynos_gem;

	if (FUNC0(index >= MAX_FB_BUFFER))
		return 0;

	exynos_gem = FUNC1(fb->obj[index]);
	return exynos_gem->dma_addr + fb->offsets[index];
}