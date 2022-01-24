#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct vmw_private {int active_display_unit; int capabilities; } ;
struct TYPE_10__ {int /*<<< orphan*/  dev; } ;
struct vmw_framebuffer {scalar_t__ bo; TYPE_4__ base; } ;
struct vmw_buffer_object {int dummy; } ;
struct ttm_placement {int dummy; } ;
struct TYPE_11__ {struct vmw_buffer_object* buffer; } ;
struct TYPE_9__ {TYPE_2__* surface; } ;
struct TYPE_7__ {struct vmw_buffer_object* backup; } ;
struct TYPE_8__ {TYPE_1__ res; } ;

/* Variables and functions */
 int EINVAL ; 
 int SVGA_CAP_3D ; 
 int FUNC0 (struct vmw_private*,struct vmw_buffer_object*,struct ttm_placement*,int) ; 
 int FUNC1 (struct vmw_private*,struct vmw_buffer_object*,int) ; 
#define  vmw_du_legacy 130 
#define  vmw_du_screen_object 129 
#define  vmw_du_screen_target 128 
 TYPE_5__* FUNC2 (TYPE_4__*) ; 
 TYPE_3__* FUNC3 (TYPE_4__*) ; 
 struct ttm_placement vmw_mob_placement ; 
 int /*<<< orphan*/  FUNC4 (struct vmw_private*) ; 
 int /*<<< orphan*/  FUNC5 (struct vmw_private*) ; 
 struct vmw_private* FUNC6 (int /*<<< orphan*/ ) ; 
 struct ttm_placement vmw_sys_placement ; 
 struct ttm_placement vmw_vram_gmr_placement ; 

__attribute__((used)) static int FUNC7(struct vmw_framebuffer *vfb)
{
	struct vmw_private *dev_priv = FUNC6(vfb->base.dev);
	struct vmw_buffer_object *buf;
	struct ttm_placement *placement;
	int ret;

	buf = vfb->bo ?  FUNC2(&vfb->base)->buffer :
		FUNC3(&vfb->base)->surface->res.backup;

	if (!buf)
		return 0;

	switch (dev_priv->active_display_unit) {
	case vmw_du_legacy:
		FUNC4(dev_priv);
		ret = FUNC1(dev_priv, buf, false);
		FUNC5(dev_priv);
		break;
	case vmw_du_screen_object:
	case vmw_du_screen_target:
		if (vfb->bo) {
			if (dev_priv->capabilities & SVGA_CAP_3D) {
				/*
				 * Use surface DMA to get content to
				 * sreen target surface.
				 */
				placement = &vmw_vram_gmr_placement;
			} else {
				/* Use CPU blit. */
				placement = &vmw_sys_placement;
			}
		} else {
			/* Use surface / image update */
			placement = &vmw_mob_placement;
		}

		return FUNC0(dev_priv, buf, placement, false);
	default:
		return -EINVAL;
	}

	return ret;
}