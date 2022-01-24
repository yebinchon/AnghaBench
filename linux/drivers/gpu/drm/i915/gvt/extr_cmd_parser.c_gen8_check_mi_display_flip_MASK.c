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
typedef  int u32 ;
struct parser_exec_state {TYPE_2__* vgpu; } ;
struct mi_display_flip_command_info {int stride_val; int tile_val; int /*<<< orphan*/  ctrl_reg; int /*<<< orphan*/  stride_reg; int /*<<< orphan*/  async_flip; } ;
struct drm_i915_private {int dummy; } ;
struct TYPE_4__ {TYPE_1__* gvt; } ;
struct TYPE_3__ {struct drm_i915_private* dev_priv; } ;

/* Variables and functions */
 int FUNC0 (int,int) ; 
 int FUNC1 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int FUNC3 (TYPE_2__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct parser_exec_state *s,
		struct mi_display_flip_command_info *info)
{
	struct drm_i915_private *dev_priv = s->vgpu->gvt->dev_priv;
	u32 stride, tile;

	if (!info->async_flip)
		return 0;

	if (FUNC1(dev_priv) >= 9) {
		stride = FUNC3(s->vgpu, info->stride_reg) & FUNC0(9, 0);
		tile = (FUNC3(s->vgpu, info->ctrl_reg) &
				FUNC0(12, 10)) >> 10;
	} else {
		stride = (FUNC3(s->vgpu, info->stride_reg) &
				FUNC0(15, 6)) >> 6;
		tile = (FUNC3(s->vgpu, info->ctrl_reg) & (1 << 10)) >> 10;
	}

	if (stride != info->stride_val)
		FUNC2("cannot change stride during async flip\n");

	if (tile != info->tile_val)
		FUNC2("cannot change tile during async flip\n");

	return 0;
}