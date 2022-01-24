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
typedef  size_t uint32_t ;
struct vmw_vga_topology_state {scalar_t__ pos_x; scalar_t__ pos_y; scalar_t__ width; scalar_t__ height; void* primary; } ;
struct vmw_private {scalar_t__ vga_width; scalar_t__ vga_height; int capabilities; int num_displays; struct vmw_vga_topology_state* vga_save; scalar_t__ mmio_virt; void* vga_pitchlock; void* vga_bpp; } ;

/* Variables and functions */
 int SVGA_CAP_DISPLAY_TOPOLOGY ; 
 int SVGA_CAP_PITCHLOCK ; 
 scalar_t__ SVGA_FIFO_PITCHLOCK ; 
 size_t SVGA_ID_INVALID ; 
 int /*<<< orphan*/  SVGA_REG_BITS_PER_PIXEL ; 
 int /*<<< orphan*/  SVGA_REG_DISPLAY_HEIGHT ; 
 int /*<<< orphan*/  SVGA_REG_DISPLAY_ID ; 
 int /*<<< orphan*/  SVGA_REG_DISPLAY_IS_PRIMARY ; 
 int /*<<< orphan*/  SVGA_REG_DISPLAY_POSITION_X ; 
 int /*<<< orphan*/  SVGA_REG_DISPLAY_POSITION_Y ; 
 int /*<<< orphan*/  SVGA_REG_DISPLAY_WIDTH ; 
 int /*<<< orphan*/  SVGA_REG_HEIGHT ; 
 int /*<<< orphan*/  SVGA_REG_NUM_GUEST_DISPLAYS ; 
 int /*<<< orphan*/  SVGA_REG_PITCHLOCK ; 
 int /*<<< orphan*/  SVGA_REG_WIDTH ; 
 scalar_t__ FUNC0 (struct vmw_private*) ; 
 void* FUNC1 (scalar_t__) ; 
 void* FUNC2 (struct vmw_private*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct vmw_private*,int /*<<< orphan*/ ,size_t) ; 

int FUNC4(struct vmw_private *vmw_priv)
{
	struct vmw_vga_topology_state *save;
	uint32_t i;

	vmw_priv->vga_width = FUNC2(vmw_priv, SVGA_REG_WIDTH);
	vmw_priv->vga_height = FUNC2(vmw_priv, SVGA_REG_HEIGHT);
	vmw_priv->vga_bpp = FUNC2(vmw_priv, SVGA_REG_BITS_PER_PIXEL);
	if (vmw_priv->capabilities & SVGA_CAP_PITCHLOCK)
		vmw_priv->vga_pitchlock =
		  FUNC2(vmw_priv, SVGA_REG_PITCHLOCK);
	else if (FUNC0(vmw_priv))
		vmw_priv->vga_pitchlock = FUNC1(vmw_priv->mmio_virt +
							SVGA_FIFO_PITCHLOCK);

	if (!(vmw_priv->capabilities & SVGA_CAP_DISPLAY_TOPOLOGY))
		return 0;

	vmw_priv->num_displays = FUNC2(vmw_priv,
					  SVGA_REG_NUM_GUEST_DISPLAYS);

	if (vmw_priv->num_displays == 0)
		vmw_priv->num_displays = 1;

	for (i = 0; i < vmw_priv->num_displays; ++i) {
		save = &vmw_priv->vga_save[i];
		FUNC3(vmw_priv, SVGA_REG_DISPLAY_ID, i);
		save->primary = FUNC2(vmw_priv, SVGA_REG_DISPLAY_IS_PRIMARY);
		save->pos_x = FUNC2(vmw_priv, SVGA_REG_DISPLAY_POSITION_X);
		save->pos_y = FUNC2(vmw_priv, SVGA_REG_DISPLAY_POSITION_Y);
		save->width = FUNC2(vmw_priv, SVGA_REG_DISPLAY_WIDTH);
		save->height = FUNC2(vmw_priv, SVGA_REG_DISPLAY_HEIGHT);
		FUNC3(vmw_priv, SVGA_REG_DISPLAY_ID, SVGA_ID_INVALID);
		if (i == 0 && vmw_priv->num_displays == 1 &&
		    save->width == 0 && save->height == 0) {

			/*
			 * It should be fairly safe to assume that these
			 * values are uninitialized.
			 */

			save->width = vmw_priv->vga_width - save->pos_x;
			save->height = vmw_priv->vga_height - save->pos_y;
		}
	}

	return 0;
}