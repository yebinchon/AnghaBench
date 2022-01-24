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
struct vmw_private {int capabilities; scalar_t__ mmio_virt; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,unsigned int,unsigned int,unsigned int) ; 
 int EINVAL ; 
 int SVGA_CAP_PITCHLOCK ; 
 scalar_t__ SVGA_FIFO_PITCHLOCK ; 
 int /*<<< orphan*/  SVGA_REG_BITS_PER_PIXEL ; 
 int /*<<< orphan*/  SVGA_REG_DEPTH ; 
 int /*<<< orphan*/  SVGA_REG_HEIGHT ; 
 int /*<<< orphan*/  SVGA_REG_PITCHLOCK ; 
 int /*<<< orphan*/  SVGA_REG_WIDTH ; 
 scalar_t__ FUNC1 (struct vmw_private*) ; 
 int /*<<< orphan*/  FUNC2 (unsigned int,scalar_t__) ; 
 unsigned int FUNC3 (struct vmw_private*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct vmw_private*,int /*<<< orphan*/ ,unsigned int) ; 

int FUNC5(struct vmw_private *vmw_priv,
			unsigned width, unsigned height, unsigned pitch,
			unsigned bpp, unsigned depth)
{
	if (vmw_priv->capabilities & SVGA_CAP_PITCHLOCK)
		FUNC4(vmw_priv, SVGA_REG_PITCHLOCK, pitch);
	else if (FUNC1(vmw_priv))
		FUNC2(pitch, vmw_priv->mmio_virt +
			       SVGA_FIFO_PITCHLOCK);
	FUNC4(vmw_priv, SVGA_REG_WIDTH, width);
	FUNC4(vmw_priv, SVGA_REG_HEIGHT, height);
	FUNC4(vmw_priv, SVGA_REG_BITS_PER_PIXEL, bpp);

	if (FUNC3(vmw_priv, SVGA_REG_DEPTH) != depth) {
		FUNC0("Invalid depth %u for %u bpp, host expects %u\n",
			  depth, bpp, FUNC3(vmw_priv, SVGA_REG_DEPTH));
		return -EINVAL;
	}

	return 0;
}