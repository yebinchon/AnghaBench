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
typedef  int uint32_t ;
typedef  int /*<<< orphan*/  u32 ;
struct vmw_private {int capabilities; int /*<<< orphan*/ * mmio_virt; } ;

/* Variables and functions */
 int SVGA_CAP_EXTENDED_FIFO ; 
 int SVGA_FIFO_CAPABILITIES ; 
 int SVGA_FIFO_CAP_PITCHLOCK ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 

bool FUNC1(struct vmw_private *dev_priv)
{
	u32  *fifo_mem = dev_priv->mmio_virt;
	uint32_t caps;

	if (!(dev_priv->capabilities & SVGA_CAP_EXTENDED_FIFO))
		return false;

	caps = FUNC0(fifo_mem + SVGA_FIFO_CAPABILITIES);
	if (caps & SVGA_FIFO_CAP_PITCHLOCK)
		return true;

	return false;
}