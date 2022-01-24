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
struct vmw_private {int /*<<< orphan*/  cursor_lock; int /*<<< orphan*/ * mmio_virt; } ;

/* Variables and functions */
 int SVGA_FIFO_CURSOR_COUNT ; 
 int SVGA_FIFO_CURSOR_ON ; 
 int SVGA_FIFO_CURSOR_X ; 
 int SVGA_FIFO_CURSOR_Y ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct vmw_private *dev_priv,
				       bool show, int x, int y)
{
	u32 *fifo_mem = dev_priv->mmio_virt;
	uint32_t count;

	FUNC0(&dev_priv->cursor_lock);
	FUNC3(show ? 1 : 0, fifo_mem + SVGA_FIFO_CURSOR_ON);
	FUNC3(x, fifo_mem + SVGA_FIFO_CURSOR_X);
	FUNC3(y, fifo_mem + SVGA_FIFO_CURSOR_Y);
	count = FUNC2(fifo_mem + SVGA_FIFO_CURSOR_COUNT);
	FUNC3(++count, fifo_mem + SVGA_FIFO_CURSOR_COUNT);
	FUNC1(&dev_priv->cursor_lock);
}