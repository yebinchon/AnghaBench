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
struct vmw_vga_topology_state {size_t primary; size_t pos_x; size_t pos_y; size_t width; size_t height; } ;
struct vmw_private {size_t vga_width; size_t vga_height; size_t vga_bpp; int capabilities; size_t vga_pitchlock; size_t num_displays; struct vmw_vga_topology_state* vga_save; scalar_t__ mmio_virt; } ;

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
 int /*<<< orphan*/  SVGA_REG_PITCHLOCK ; 
 int /*<<< orphan*/  SVGA_REG_WIDTH ; 
 scalar_t__ FUNC0 (struct vmw_private*) ; 
 int /*<<< orphan*/  FUNC1 (size_t,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct vmw_private*,int /*<<< orphan*/ ,size_t) ; 

int FUNC3(struct vmw_private *vmw_priv)
{
	struct vmw_vga_topology_state *save;
	uint32_t i;

	FUNC2(vmw_priv, SVGA_REG_WIDTH, vmw_priv->vga_width);
	FUNC2(vmw_priv, SVGA_REG_HEIGHT, vmw_priv->vga_height);
	FUNC2(vmw_priv, SVGA_REG_BITS_PER_PIXEL, vmw_priv->vga_bpp);
	if (vmw_priv->capabilities & SVGA_CAP_PITCHLOCK)
		FUNC2(vmw_priv, SVGA_REG_PITCHLOCK,
			  vmw_priv->vga_pitchlock);
	else if (FUNC0(vmw_priv))
		FUNC1(vmw_priv->vga_pitchlock,
			       vmw_priv->mmio_virt + SVGA_FIFO_PITCHLOCK);

	if (!(vmw_priv->capabilities & SVGA_CAP_DISPLAY_TOPOLOGY))
		return 0;

	for (i = 0; i < vmw_priv->num_displays; ++i) {
		save = &vmw_priv->vga_save[i];
		FUNC2(vmw_priv, SVGA_REG_DISPLAY_ID, i);
		FUNC2(vmw_priv, SVGA_REG_DISPLAY_IS_PRIMARY, save->primary);
		FUNC2(vmw_priv, SVGA_REG_DISPLAY_POSITION_X, save->pos_x);
		FUNC2(vmw_priv, SVGA_REG_DISPLAY_POSITION_Y, save->pos_y);
		FUNC2(vmw_priv, SVGA_REG_DISPLAY_WIDTH, save->width);
		FUNC2(vmw_priv, SVGA_REG_DISPLAY_HEIGHT, save->height);
		FUNC2(vmw_priv, SVGA_REG_DISPLAY_ID, SVGA_ID_INVALID);
	}

	return 0;
}