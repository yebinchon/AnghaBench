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
struct TYPE_5__ {TYPE_1__* state; } ;
struct TYPE_6__ {TYPE_2__ plane; } ;
struct mxsfb_drm_private {TYPE_3__ pipe; } ;
struct drm_gem_cma_object {int /*<<< orphan*/  paddr; } ;
struct drm_framebuffer {int dummy; } ;
typedef  int /*<<< orphan*/  dma_addr_t ;
struct TYPE_4__ {struct drm_framebuffer* fb; } ;

/* Variables and functions */
 struct drm_gem_cma_object* FUNC0 (struct drm_framebuffer*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static dma_addr_t FUNC1(struct mxsfb_drm_private *mxsfb)
{
	struct drm_framebuffer *fb = mxsfb->pipe.plane.state->fb;
	struct drm_gem_cma_object *gem;

	if (!fb)
		return 0;

	gem = FUNC0(fb, 0);
	if (!gem)
		return 0;

	return gem->paddr;
}