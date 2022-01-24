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
typedef  scalar_t__ u64 ;
struct bochs_device {int stride; int bpp; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int,int,scalar_t__,unsigned long,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  VBE_DISPI_INDEX_VIRT_WIDTH ; 
 int /*<<< orphan*/  VBE_DISPI_INDEX_X_OFFSET ; 
 int /*<<< orphan*/  VBE_DISPI_INDEX_Y_OFFSET ; 
 int /*<<< orphan*/  FUNC1 (struct bochs_device*,int /*<<< orphan*/ ,unsigned int) ; 

void FUNC2(struct bochs_device *bochs,
		      int x, int y, int stride, u64 addr)
{
	unsigned long offset;
	unsigned int vx, vy, vwidth;

	bochs->stride = stride;
	offset = (unsigned long)addr +
		y * bochs->stride +
		x * (bochs->bpp / 8);
	vy = offset / bochs->stride;
	vx = (offset % bochs->stride) * 8 / bochs->bpp;
	vwidth = stride * 8 / bochs->bpp;

	FUNC0("x %d, y %d, addr %llx -> offset %lx, vx %d, vy %d\n",
			 x, y, addr, offset, vx, vy);
	FUNC1(bochs, VBE_DISPI_INDEX_VIRT_WIDTH, vwidth);
	FUNC1(bochs, VBE_DISPI_INDEX_X_OFFSET, vx);
	FUNC1(bochs, VBE_DISPI_INDEX_Y_OFFSET, vy);
}